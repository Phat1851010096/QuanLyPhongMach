<%-- 
    Document   : benhnhan-stats
    Created on : Oct 14, 2021, 9:29:20 AM
    Author     : Phat Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-danger">THỐNG KÊ SỐ LƯỢNG BỆNH NHÂN</h1>

<div>
  <canvas id="myBenhNhanStatsChart"></canvas>
</div>

<h3>Số lượng bệnh nhân đến khám: ${benhNhanStats}</h3>

<script>
    window.onload = function(){
        benhNhanStats("myBenhNhanStatsChart")
    }
</script>