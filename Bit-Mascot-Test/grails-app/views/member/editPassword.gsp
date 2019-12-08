<%@ page import="com.bitmascot.AuthenticationService" %>

<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Password Update']"/>
    </div>
    <div class="card-body">
        <g:form controller="member" action="updatePassword">
            <g:hiddenField name="id" value="${member?.id}"/>
            <div class="form-group">
                <label><g:message code="new.password"/> *</label>
                <g:passwordField name="password" class="form-control" placeholder="Please Enter New Password"/>
                <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
            </div>

            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "update")}"/>
                <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>
