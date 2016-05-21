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

    public SearchResponse queryWithFilter(String city, String queryString, Map<String, String> filter, int size, int page) {
        System.out.println(filter);
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchRequestBuilder searchRequestBuilder = client.prepareSearch("newsearch")
                    .setTypes(city)
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setFrom(page * size).setSize(size).setExplain(false);
            if (!queryString.equals("")) {
                searchRequestBuilder.setQuery(QueryBuilders.queryStringQuery(queryString));                 // Query
            }
            if (filter.size() > 0) {
                BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
                for (Map.Entry entry : filter.entrySet()) {
                    boolQueryBuilder.must(QueryBuilders.termQuery((String) entry.getKey(), entry.getValue()));
                }
                searchRequestBuilder.setPostFilter(boolQueryBuilder);
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
