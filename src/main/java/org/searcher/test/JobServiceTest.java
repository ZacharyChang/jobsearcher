package org.searcher.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.searcher.bean.Job;
import org.searcher.service.JobService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by Administrator on 2016/7/11.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:web/WEB-INF/applicationContext.xml"})
public class JobServiceTest {
    @Resource
    JobService jobService;

    @Test
    public void testSearchJob() {
        List<Job> jobs = jobService.searchJob("武汉", "java", 10, 0);
        for (Job job : jobs) {
            System.out.println(job.toString());
        }
    }
}
