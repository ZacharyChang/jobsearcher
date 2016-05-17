package org.searcher.controller;

import org.elasticsearch.action.search.SearchResponse;
import org.searcher.bean.Job;
import org.searcher.util.SearchUtil;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by ZacharyChang.
 */
@Controller
public class MainController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value="/search",method = RequestMethod.GET)
    public String search(@RequestParam("query")String queryString, Model model){
        List<Job> jobList= SearchUtil.queryByString(queryString,9,1);
        if(jobList!=null&&jobList.size()>0){
            model.addAttribute("result",jobList);
        }
        return "search";
    }
}
