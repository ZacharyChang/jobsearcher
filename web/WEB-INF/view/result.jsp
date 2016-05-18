<%--
  Created by IntelliJ IDEA.
  User: ZacharyChang
  Date: 2016/5/18
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
    <ul class="tab_img">
        <c:forEach items="${result}" var="job" varStatus="status">
            <li><a href="${job.url}">
                <div class="tab_desc">
                    <h3 style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${job.name}</h3>
                    <h4>人数：20人以下</h4>
                    <h4>工资：${job.salary}</h4>
                    <h4>${job.salary}</h4>
                    <h4>${job.officalName}</h4>
                </div>
            </a></li>
        </c:forEach>


        <div class="clearfix"></div>
    </ul>
</div>
