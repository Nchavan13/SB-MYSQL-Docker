<%@ page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"/>

<div class="container mt-5">

    <c:choose>
        <c:when test="${!empty empsData}">
            <table class="table table-hover table-bordered">
                <thead class="table-danger">
                    <tr>
                        <th>EmpNo</th>
                        <th>EmpName</th>
                        <th>Job</th>
                        <th>Salary</th>
                        <th>Operations</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="emp" items="${empsData}">
                        <tr class="table-success">
                            <td>${emp.empno}</td>
                            <td>${emp.ename}</td>
                            <td>${emp.job}</td>
                            <td>${emp.sal}</td>
                            <td>
                                <a href="edit?no=${emp.empno}" class="btn btn-warning">
                                    <img src="images/edit1.png" width="30" height="30" alt="Edit"/>
                                </a>
                                <a href="delete?no=${emp.empno}" class="btn btn-danger" 
                                   onclick="return confirm('Do you want to delete?')">
                                    <img src="images/delete1.jpg" width="30" height="30" alt="Delete"/>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <h2 class="text-danger text-center">Records not found</h2>
        </c:otherwise>
    </c:choose>

    <c:if test="${!empty resultMsg}">
        <h3 class="text-success text-center">${resultMsg}</h3>
    </c:if>

    <hr>

    <div class="text-center">
        <a href="./" class="btn btn-secondary">
            <img src="images/home1.png" width="30" height="30" alt="Home"/> Home
        </a>
        <a href="add" class="btn btn-success">
            <img src="images/add.png" width="30" height="30" alt="Add"/> Add Employee
        </a>
    </div>
</div>

<!-- Optional: Bootstrap JS and Popper.js for advanced Bootstrap features -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
