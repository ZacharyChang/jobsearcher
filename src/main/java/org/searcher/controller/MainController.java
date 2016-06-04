package org.searcher.controller;

import com.alibaba.fastjson.JSONObject;
import org.apache.log4j.Logger;
import org.searcher.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Controller
public class MainController {
    private Logger logger = Logger.getLogger("controller-main");
    @Autowired
    private JobService jobService;

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@RequestParam("query") String queryString, Model model) {
//        List<Job> jobList= jobService.searchJob(queryString,9,1);
//        if(jobList!=null&&jobList.size()>0){
//            model.addAttribute("result",jobList);
//        }
        model.addAttribute("query", queryString);
        return "search";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String newsearch(@RequestParam(value = "query", required = false) String queryString, @RequestParam(value = "city", required = false) String city, Model model) {

        if (queryString == null) {
            queryString = "";
        }
        if (city == null) {
            city = "武汉";
        }
        model.addAttribute("query", queryString);
        model.addAttribute("city", city);
        model.addAttribute("districts", jobService.getDistrictsByCity(city));
        return "new";
    }

    @RequestMapping(value = "/result", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Object> result(@RequestParam("query") String queryString, @RequestParam(value = "city") String city, @RequestParam("size") int size, @RequestParam("page") int page, @RequestParam(value = "filter", required = false) String filter, @RequestParam(value = "sort", required = false) String sort) {
        Map<String, Object> resultMap = new HashMap<>();
        Map<String, String> map = (Map<String, String>) JSONObject.parse(filter);
        resultMap.put("result", jobService.searchWithFilter(city, queryString, map, sort, size, page));
        resultMap.put("size", jobService.getFilterSize(city, queryString, map));
        return resultMap;
    }

    @RequestMapping(value = "/charts", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Long> getDistrictsValue(@RequestParam("city") String city, @RequestParam("name") String name) {
        return jobService.getNumberBuName(city, name);
    }

}
