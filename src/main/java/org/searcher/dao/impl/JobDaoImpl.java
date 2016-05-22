package org.searcher.dao.impl;

import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.sort.SortBuilder;
import org.elasticsearch.search.sort.SortOrder;
import org.searcher.dao.JobDao;
import org.springframework.stereotype.Repository;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Repository("JobDao")
public class JobDaoImpl implements JobDao {
    public String hostName = "localhost";
    private int port = 9300;

    public SearchResponse queryByString(String city, String queryString, int size, int page) {
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchResponse response = client.prepareSearch("newsearch")
                    .setTypes(city)
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setQuery(QueryBuilders.queryStringQuery(queryString))                 // Query
                    .setFrom(page * size).setSize(size).setExplain(false)
                    .execute()
                    .actionGet();
            client.close();
            return response;
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }

//    public SearchResponse filterByEducation(String city,String queryString, String education, int size, int page) {
//        try {
//            Client client = TransportClient.builder().build()
//                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
//            SearchResponse response = client.prepareSearch("newsearch")
//                    .setTypes(city)
//                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
//                    .setQuery(QueryBuilders.queryStringQuery(queryString))                 // Query
//                    .setPostFilter(QueryBuilders.prefixQuery("education", education))     // Filter
//                    .setFrom(page * size).setSize(size).setExplain(false)
//                    .execute()
//                    .actionGet();
//            client.close();
//            return response;
//        } catch (UnknownHostException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }

    @Override
    public SearchResponse queryWithFilter(String city, String queryString, Map<String, String> filter, String sort, int size, int page) {
        try {
            //开启客户端
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchRequestBuilder searchRequestBuilder = client.prepareSearch("newsearch")
                    .setTypes(city)
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setFrom(page * size).setSize(size).setExplain(false);
            //设置搜索关键词
            if (!queryString.equals("")) {
                searchRequestBuilder.setQuery(QueryBuilders.queryStringQuery(queryString));                 // Query
            }
            //设置过滤器
            if (filter.size() > 0) {
                BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
                for (Map.Entry entry : filter.entrySet()) {
                    boolQueryBuilder.must(QueryBuilders.termQuery((String) entry.getKey(), entry.getValue()));
                }
                searchRequestBuilder.setPostFilter(boolQueryBuilder);
            }
            //设置排序方法
            if (!sort.equals("")) {
                searchRequestBuilder.addSort(sort, SortOrder.DESC);
            }
            SearchResponse response = searchRequestBuilder.execute().actionGet();
            client.close();
            return response;
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }

    public SearchResponse getDistrictsByCity(String city) {
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchResponse sr = client.prepareSearch().setTypes(city)
                    .addAggregation(
                            AggregationBuilders.terms("all_district").field("district")
                    )
                    .execute().actionGet();
            return sr;
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }
}
