package org.searcher.service;

import org.searcher.bean.Job;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Service
public interface JobService {
    List<Job> searchJob(String city, String str, int size, int page);

    long getSearchSize(String city, String str);

    List<Job> searchWithFilter(String city, String str, Map<String, String> filter, int size, int page);

    long getFilterSize(String city, String str, Map<String, String> filter);

//    public List<Job> searchFilterEducation(String str, String education, int size, int page);
//
//    public long getFilterEducationSize(String str, String education);

    List<String> getDistrictsByCity(String city);
}
