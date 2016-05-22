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
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value="/search",method = RequestMethod.GET)
    public String search(@RequestParam("query") String queryString, Model model) {
//        List<Job> jobList= jobService.searchJob(queryString,9,1);
//        if(jobList!=null&&jobList.size()>0){
//            model.addAttribute("result",jobList);
//        }
        model.addAttribute("query", queryString);
        return "search";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String newsearch(@RequestParam(value = "query", required = false) String queryString, @RequestParam("city") String city, Model model) {
//        List<Job> jobList= jobService.searchJob(queryString,9,1);
//        if(jobList!=null&&jobList.size()>0){
//            model.addAttribute("result",jobList);
//        }
        if (queryString == null) {
            model.addAttribute("query", "");
        } else {
            model.addAttribute("query", queryString);
        }
        model.addAttribute("city", city);
        model.addAttribute("districts", jobService.getDistrictsByCity(city));
        return "new";
    }

    @RequestMapping(value = "/result", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Object> result(@RequestParam("query") String queryString, @RequestParam(value = "city") String city, @RequestParam("size") int size, @RequestParam("page") int page, @RequestParam(value = "filter", required = false) String filter, @RequestParam(value = "sort", required = false) String sort) {
        Map<String, Object> resultMap = new HashMap<>();
//        if (null != filter && !"{}" .equals(filter)) {
        Map<String, String> map = (Map<String, String>) JSONObject.parse(filter);
        resultMap.put("result", jobService.searchWithFilter(city, queryString, map, sort, size, page));
        resultMap.put("size", jobService.getFilterSize(city, queryString, map));
//        } else {
//            resultMap.put("result", jobService.searchJob(city,queryString, size, page));
//            resultMap.put("size", jobService.getSearchSize(city,queryString));
//        }
        return resultMap;
    }

}
