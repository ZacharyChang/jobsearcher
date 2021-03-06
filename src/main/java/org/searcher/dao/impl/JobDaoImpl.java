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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Repository("JobDao")
public class JobDaoImpl implements JobDao {
    @Value("${es.ip}")
    public String ip;
    @Value("${es.port}")
    private String port;

    public SearchResponse queryByString(String city, String queryString, int size, int page) {
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(ip), Integer.parseInt(port)));
            SearchResponse response = client.prepareSearch("search")
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


    @Override
    public SearchResponse queryWithFilter(String city, String queryString, Map<String, String> filter, String sort, int size, int page) {
        try {
            //开启客户端
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(ip), Integer.parseInt(port)));
            SearchRequestBuilder searchRequestBuilder = client.prepareSearch("search")
                    .setTypes(city)
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setFrom(page * size).setSize(size).setExplain(false);
            //设置搜索关键词
            if (!queryString.equals("")) {
                searchRequestBuilder.setQuery(QueryBuilders.queryStringQuery(queryString));                 // Query
            }
            //设置过滤器
            System.out.println(filter.size());
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
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(ip), Integer.parseInt(port)));
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

    public SearchResponse getNumberByName(String city, String name) {
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(ip), Integer.parseInt(port)));
            SearchResponse sr = client.prepareSearch().setTypes(city)
                    .addAggregation(
                            AggregationBuilders.terms("all_aggregation").field(name)
                    )
                    .execute().actionGet();
            return sr;
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }
}
