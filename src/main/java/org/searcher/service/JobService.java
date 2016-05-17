package org.searcher.service;

import org.searcher.bean.Job;

import java.util.List;

/**
 * Created by ZacharyChang.
 */
public interface JobService {
    public List<Job> searchJob(String str);
}
