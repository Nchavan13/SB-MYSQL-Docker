<%@ page isELIgnored="false"  %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"/>

<div class="container mt-5">
    <h1 class="text-center text-danger mb-4">Register Employee</h1>

    <form:form modelAttribute="emp" class="row g-3">
        <div class="col-md-6 offset-md-3">
            <div class="mb-3">
                <label class="form-label">Employee Name:</label>
                <form:input path="ename" class="form-control" placeholder="Enter employee name"/>
            </div>

            <div class="mb-3">
                <label class="form-label">Employee Designation:</label>
                <form:input path="job" class="form-control" placeholder="Enter job title"/>
            </div>

            <div class="mb-3">
                <label class="form-label">Employee Salary:</label>
                <form:input path="sal" class="form-control" placeholder="Enter salary"/>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Register Employee</button>
            </div>
        </div>
    </form:form>
</div>

<!-- Optional: Bootstrap JS and Popper.js for advanced Bootstrap features -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
