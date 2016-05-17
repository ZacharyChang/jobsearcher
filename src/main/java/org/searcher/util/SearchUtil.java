package org.searcher.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.sun.xml.internal.ws.api.config.management.policy.ManagementAssertion;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;

import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.searcher.bean.Job;
import org.springframework.web.client.RestTemplate;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
public class SearchUtil {
    public static String hostName="localhost";
    private static int port=9300;

    public static List<Job> queryByString(String queryString,int size,int page){
        try {
            Client client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName(hostName), port));
            SearchResponse response = client.prepareSearch("search")
                    .setTypes("job")
                    .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                    .setQuery(QueryBuilders.queryStringQuery(queryString))                 // Query
//                .setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))     // Filter
                    .setFrom(page*size).setSize(size).setExplain(true)
                    .execute()
                    .actionGet();
            client.close();
            Job job;
            List<Job> jobList=new ArrayList<>();
            for (SearchHit searchHitFields : response.getHits().getHits()) {
                job=new Job();
                job.setOfficalName((String) searchHitFields.getSource().get("officialname"));
                job.setName((String) searchHitFields.getSource().get("name"));
                String salary= (String) searchHitFields.getSource().get("salary");
                if(salary.equals("0-1")){
                    job.setSalary("面议");
                }else{
                    job.setSalary(salary);
                }
                job.setSource((String) searchHitFields.getSource().get("source"));
                job.setUrl((String) searchHitFields.getSource().get("url"));
                jobList.add(job);
            }
            return jobList;
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }
}
