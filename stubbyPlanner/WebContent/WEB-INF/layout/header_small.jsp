<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <header>
        <div class="stu_gnb_container stu_clearfix">
            <div class="stu_inner_wrap">
                <h1 class="stu_logo">
                    <a href="/stubbyPlanner/common/index.do">
                        <img class="fh" src="/stubbyPlanner/externalData/market/images/stu_logo.png" alt=""/>
                    </a>
                </h1>
                <ul class="stu_gnb_wrap">
                    <li id="ico_search">
                        <button type="button" class="ico_search" onclick="location.href='#'"></button>
                    </li>

                    <li id="ico_booking">
                        <a href="/stubbyPlanner/market/index.do">
                            <button type="button" class="ico_booking"></button>
                        </a>
                    </li>
                    <li id="ico_planner">
                        <a href="/stubbyPlanner/planner/index.do">
                            <button type="button" class="ico_planner"></button>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </header>
