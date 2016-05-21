package org.searcher.service.impl;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.aggregations.bucket.terms.StringTerms;
import org.elasticsearch.search.aggregations.bucket.terms.Terms;
import org.searcher.bean.Job;
import org.searcher.dao.JobDao;
import org.searcher.dao.impl.JobDaoImpl;
import org.searcher.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Service("JobService")
public class JobServiceImpl implements JobService{
    @Autowired
    private JobDao jobDao;
    @Override
    public List<Job> searchJob(String city, String str, int size, int page) {
        SearchResponse response = jobDao.queryByString(city, str, size, page);
        Job job;
        List<Job> jobList = new ArrayList<>();
        for (SearchHit searchHitFields : response.getHits().getHits()) {
            job = new Job();
            job.setOfficialName((String) searchHitFields.getSource().get("officialname"));
            job.setName((String) searchHitFields.getSource().get("name"));
            job.setSalary((String) searchHitFields.getSource().get("ori_salary"));
            job.setSource((String) searchHitFields.getSource().get("source"));
            job.setSourceLink((String) searchHitFields.getSource().get("sourcelink"));
            job.setUrl((String) searchHitFields.getSource().get("url"));
            job.setDescription((String) searchHitFields.getSource().get("description"));
            job.setExperience((String) searchHitFields.getSource().get("ori_experience"));
            job.setDistrict((String) searchHitFields.getSource().get("district"));
            job.setSize(searchHitFields.getSource().get("size").toString());
            job.setStartDate((String) searchHitFields.getSource().get("startdate"));
            jobList.add(job);
        }
        return jobList;
    }

    @Override
    public long getSearchSize(String city, String str) {
        return jobDao.queryByString(city, str, 0, 0).getHits().getTotalHits();
    }

    @Override
    public List<Job> searchWithFilter(String city, String str, Map<String, String> filter, int size, int page) {
        SearchResponse response = jobDao.queryWithFilter(city, str, filter, size, page);
        Job job;
        List<Job> jobList = new ArrayList<>();
        for (SearchHit searchHitFields : response.getHits().getHits()) {
            job = new Job();
            job.setOfficialName((String) searchHitFields.getSource().get("officialname"));
            job.setName((String) searchHitFields.getSource().get("name"));
            job.setSalary((String) searchHitFields.getSource().get("ori_salary"));
            job.setSource((String) searchHitFields.getSource().get("source"));
            job.setSourceLink((String) searchHitFields.getSource().get("sourcelink"));
            job.setUrl((String) searchHitFields.getSource().get("url"));
            job.setDescription((String) searchHitFields.getSource().get("description_jd"));
            job.setExperience((String) searchHitFields.getSource().get("ori_experience"));
            job.setEducation((String) searchHitFields.getSource().get("education"));
            job.setDistrict((String) searchHitFields.getSource().get("district"));
            job.setSize(searchHitFields.getSource().get("size").toString());
            job.setStartDate((String) searchHitFields.getSource().get("startdate"));
            jobList.add(job);
        }
        return jobList;
    }

    @Override
    public long getFilterSize(String city, String str, Map<String, String> filter) {
        return jobDao.queryWithFilter(city, str, filter, 0, 0).getHits().getTotalHits();
    }

//    @Override
//    public List<Job> searchFilterEducation(String str, String education, int size, int page) {
//        SearchResponse response = jobDao.filterByEducation(str, education, size, page);
//        Job job;
//        List<Job> jobList = new ArrayList<>();
//        for (SearchHit searchHitFields : response.getHits().getHits()) {
//            job = new Job();
//            job.setOfficialName((String) searchHitFields.getSource().get("officialname"));
//            job.setName((String) searchHitFields.getSource().get("name"));
//            String salary = (String) searchHitFields.getSource().get("salary");
//            if (salary.equals("0-1")) {
//                job.setSalary("面议");
//            } else {
//                job.setSalary(salary);
//            }
//            job.setSource((String) searchHitFields.getSource().get("source"));
//            job.setUrl((String) searchHitFields.getSource().get("url"));
//            jobList.add(job);
//        }
//        return jobList;
//    }
//
//    @Override
//    public long getFilterEducationSize(String str, String education) {
//        return jobDao.filterByEducation(str, education, 0, 0).getHits().getTotalHits();
//    }

    public List<String> getDistrictsByCity(String city) {
        SearchResponse response = jobDao.getDistrictsByCity(city);
        StringTerms obj = (StringTerms) response.getAggregations().asList().get(0);
        List<String> districts = new ArrayList<>();
        Iterator<Terms.Bucket> iterator = obj.getBuckets().iterator();
        while (iterator.hasNext()) {
            districts.add(iterator.next().getKey().toString());
        }
        return districts;
    }
}
