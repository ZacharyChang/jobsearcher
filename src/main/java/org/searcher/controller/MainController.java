package org.searcher.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
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

    @RequestMapping(value = "/result", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Object> result(@RequestParam("query") String queryString, @RequestParam("size") int size, @RequestParam("page") int page, @RequestParam(value = "data", required = false) String filter) {
        Map<String, Object> resultMap = new HashMap<>();
        logger.info("get request.");
        logger.info(filter.toString());
        if (filter != null && !filter.equals("{}")) {
            logger.info(filter.toString());
            Map<String, String> map = (Map<String, String>) JSONObject.parse(filter);
            resultMap.put("result", jobService.searchWithFilter(queryString, map, size, page));
            resultMap.put("size", jobService.getFilterSize(queryString, map));
        } else {
            resultMap.put("result", jobService.searchJob(queryString, size, page));
            resultMap.put("size", jobService.getSearchSize(queryString));
        }
        return resultMap;
    }

}
