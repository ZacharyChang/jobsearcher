package org.searcher.dao;

import org.elasticsearch.action.search.SearchResponse;
import org.springframework.stereotype.Repository;

/**
 * Created by ZacharyChang.
 */
@Repository
public interface JobDao {
    public SearchResponse queryByString(String queryString, int size, int page);

    public SearchResponse filterByEducation(String queryString, String education, int size, int page);
}
