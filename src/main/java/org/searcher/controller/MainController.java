package org.searcher.controller;

import org.elasticsearch.action.search.SearchResponse;
import org.searcher.bean.Job;
import org.searcher.service.JobService;
import org.searcher.util.SearchUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ZacharyChang.
 */
@Controller
public class MainController {
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

    @RequestMapping(value = "/result", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Object> result(@RequestParam("query") String queryString, @RequestParam("size") int size, @RequestParam("page") int page, @RequestParam(value = "education", required = false) String education) {
        Map<String, Object> resultMap = new HashMap<>();
        if (education != null && education != "") {
            resultMap.put("result", jobService.searchFilterEducation(queryString, education, size, page));
            resultMap.put("size", jobService.getFilterEducationSize(queryString, education));
        } else {
            resultMap.put("result", jobService.searchJob(queryString, size, page));
            resultMap.put("size", jobService.getSearchSize(queryString));
        }
        return resultMap;
    }
}
