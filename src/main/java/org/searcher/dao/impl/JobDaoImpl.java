package org.searcher.dao.impl;

import org.apache.lucene.queryparser.xml.FilterBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.QueryBuilders;
import org.searcher.dao.JobDao;
import org.springframework.stereotype.Repository;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Created by ZacharyChang.
 */
@Repository("JobDao")
public class JobDaoImpl implements JobDao {
    public String hostName = "localhost";
    private int port = 9300;

    public SearchResponse queryByString(String queryString, int size, int page) {
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchResponse response = client.prepareSearch("test")
                    .setTypes("search")
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setQuery(QueryBuilders.queryStringQuery(queryString))                 // Query
//                .setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))     // Filter
                    .setFrom(page * size).setSize(size).setExplain(true)
                    .execute()
                    .actionGet();
            client.close();
            return response;
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }

    public SearchResponse filterByEducation(String queryString, String education, int size, int page) {
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchResponse response = client.prepareSearch("test")
                    .setTypes("search")
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setQuery(QueryBuilders.queryStringQuery(queryString))                 // Query
                    .setPostFilter(QueryBuilders.prefixQuery("education", education))     // Filter
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

}
