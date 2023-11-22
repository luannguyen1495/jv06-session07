<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 11/22/2023
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1></h1>
    <form action="/student" method="post">
        <input type="hidden" value="edit" name="action" id="">
    <table>
        <tr>
            <td>MSV</td>
            <td><input type="text" name="studentCode" readonly  value="${student.studentCode}"/></td>
        </tr>
        <tr>
            <td>Họ Tên</td>
            <td><input type="text" name="studentName" value="${student.studentName}"/></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td><input type="text" name="address" value="${student.address}"/></td>
        </tr>
        <tr>
            <td>Tuổi</td>
            <td><input type="text" name="age" value="${student.age}"/></td>
        </tr>
        <tr>
            <td>Love</td>
            <td><input type="text" name="classRoom"value="${student.classRoom}" /></td>
        </tr>
        <tr>
            <td>Giới tính</td>
            <td>
                <input type="radio" name="sex" value="1" ${student.sex?"checked":""}/><span>Nam</span>
                <input type="radio" name="sex" value="0" ${!student.sex?"checked":""} /><span>Nư</span>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit">Cập nhật</button>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
