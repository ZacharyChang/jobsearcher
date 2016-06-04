package org.searcher.dao;

import org.elasticsearch.action.search.SearchResponse;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Repository
public interface JobDao {
    SearchResponse queryByString(String city, String queryString, int size, int page);

    SearchResponse queryWithFilter(String city, String queryString, Map<String, String> filter, String sort, int size, int page);

    SearchResponse getDistrictsByCity(String city);

    SearchResponse getNumberByName(String city, String name);
}
