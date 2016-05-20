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
    public List<Job> searchJob(String str, int size, int page);

    public long getSearchSize(String str);

    public List<Job> searchWithFilter(String str, Map<String, String> filter, int size, int page);

    public long getFilterSize(String str, Map<String, String> filter);

    public List<Job> searchFilterEducation(String str, String education, int size, int page);

    public long getFilterEducationSize(String str, String education);
}
