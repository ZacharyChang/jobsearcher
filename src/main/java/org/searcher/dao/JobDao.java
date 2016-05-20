package org.searcher.dao;

import org.elasticsearch.action.search.SearchResponse;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Repository
public interface JobDao {
    public SearchResponse queryByString(String queryString, int size, int page);

    public SearchResponse filterByEducation(String queryString, String education, int size, int page);

    public SearchResponse queryWithFilter(String queryString, Map<String, String> filter, int size, int page);

    public SearchResponse getDistrictsByCity(String city);
}
