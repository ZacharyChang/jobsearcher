package org.searcher.service.impl;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.search.SearchHit;
import org.searcher.bean.Job;
import org.searcher.dao.JobDao;
import org.searcher.service.JobService;
import org.searcher.util.SearchUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ZacharyChang.
 */
@Service("JobService")
public class JobServiceImpl implements JobService{
    @Autowired
    private JobDao jobDao;
    @Override
    public List<Job> searchJob(String str, int size, int page) {
        SearchResponse response = jobDao.queryByString(str, size, page);
        Job job;
        List<Job> jobList = new ArrayList<>();
        for (SearchHit searchHitFields : response.getHits().getHits()) {
            job = new Job();
            job.setOfficalName((String) searchHitFields.getSource().get("officialname"));
            job.setName((String) searchHitFields.getSource().get("name"));
            String salary = (String) searchHitFields.getSource().get("salary");
            if (salary.equals("0-1")) {
                job.setSalary("面议");
            } else {
                job.setSalary(salary);
            }
            job.setSource((String) searchHitFields.getSource().get("source"));
            job.setUrl((String) searchHitFields.getSource().get("url"));
            jobList.add(job);
        }
        return jobList;
    }

    @Override
    public long getSearchSize(String str) {
        return jobDao.queryByString(str, 0, 0).getHits().getTotalHits();
    }

    @Override
    public List<Job> searchFilterEducation(String str, String education, int size, int page) {
        SearchResponse response = jobDao.filterByEducation(str, education, size, page);
        Job job;
        List<Job> jobList = new ArrayList<>();
        for (SearchHit searchHitFields : response.getHits().getHits()) {
            job = new Job();
            job.setOfficalName((String) searchHitFields.getSource().get("officialname"));
            job.setName((String) searchHitFields.getSource().get("name"));
            String salary = (String) searchHitFields.getSource().get("salary");
            if (salary.equals("0-1")) {
                job.setSalary("面议");
            } else {
                job.setSalary(salary);
            }
            job.setSource((String) searchHitFields.getSource().get("source"));
            job.setUrl((String) searchHitFields.getSource().get("url"));
            jobList.add(job);
        }
        return jobList;
    }

    @Override
    public long getFilterEducationSize(String str, String education) {
        return jobDao.filterByEducation(str, education, 0, 0).getHits().getTotalHits();
    }
}
