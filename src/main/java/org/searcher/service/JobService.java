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

    List<Job> searchWithFilter(String city, String str, Map<String, String> filter, String sort, int size, int page);

    long getFilterSize(String city, String str, Map<String, String> filter);

    List<String> getDistrictsByCity(String city);

    Map<String, Long> getDistrictsValue(String city);

    public Map<String, Long> getNumberBuName(String city, String name);
}
