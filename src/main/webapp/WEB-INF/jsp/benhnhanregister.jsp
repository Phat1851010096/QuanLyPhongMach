<%-- 
    Document   : register
    Created on : Aug 26, 2021, 6:27:14 AM
    Author     : Phat Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<br>
<br>
<br>
<br>

<h1 class="text-center text-danger">ĐĂNG KÝ</h1>



<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<form:form method="post" action="${action}" modelAttribute="benhnhan">

    
    <br><br>
    <div class="form-group">
        <label for="tenBN">Họ tên bệnh nhân</label>
        <form:input type="text" id="tenBN" path="tenBN" class="form-control" />
    </div>
    
    <div class="form-group">
        <label for="ngaysinh">Ngày sinh</label>
        <form:input type="date" id="ngaysinh" path="ngaysinh" class="form-control" />
    </div>
    
    <div class="form-group">
        <label for="gioitinh">Giới tính</label>
        <form:input type="text" id="gioitinh" path="gioitinh" class="form-control" />
    </div>
    
    <div class="form-group">
        <label for="diachi">Địa chỉ</label>
        <form:input type="text" id="diachi" path="diachi" class="form-control" />
    </div>
    
    <div class="form-group">
        <label for="sdt">Số điện thoại</label>
        <form:input type="text" id="sdt" path="sdt" class="form-control" />
    </div>
    
    <div class="form-group">
        <label for="emailBN">Email</label>
        <form:input type="email" id="emailBN" path="emailBN" class="form-control" />
    </div>

    <div class="form-group">
        <input type="submit" value="Đăng ký khám" class="btn btn-danger" />
    </div>
</form:form>
