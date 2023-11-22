<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/22/2023
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Danh sách sinh viên </h1>
    <table border="1" cellspacing="0">
        <thead>
            <tr>
                <th>MSV</th>
                <th>Họ Và Tên</th>
                <th>Tuổi</th>
                <th>Giới Tính</th>
                <th>Love Học</th>
                <th>Địa Chỉ</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.studentCode}</td>
                <td>${student.studentName}</td>
                <td>${student.age}</td>
                <td>${student.sex ? "Nam" : "Nữ"}</td>
                <td>${student.classRoom}</td>
                <td>${student.address}</td>
                <td>
                    <a href="student?action=edit&id=${student.studentCode}">Edit</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="student?action=add">Thêm mới sinh viên</a>
</body>
</html>
