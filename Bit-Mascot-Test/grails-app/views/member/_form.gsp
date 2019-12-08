

<div class="form-group">
    <label><g:message code="first.name"/> *</label>
    <g:textField name="firstName" class="form-control" value="${member?.firstName}" placeholder="Please Enter First Name"/>
    <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="Please Enter First Name"/>
</div>
<div class="form-group">
    <label><g:message code="last.name"/></label>
    <g:textField name="lastName" class="form-control" value="${member?.lastName}" placeholder="Please Last Name"/>
</div>

<div class="form-group">
    <label><g:message code="address"/></label>
    <g:textField name="address" class="form-control" value="${member?.address}" placeholder="Enter Address"/>
</div>

<div class="form-group">
    <label><g:message code="phone.number"/></label>
    <g:field type="number" name="phoneNumber" class="form-control" value="${member?.phoneNumber}" placeholder="Enter Phone Number"/>
</div>

<div class="form-group">
    <label><g:message code="email.address"/> *</label>
    <g:field type="email" name="email" class="form-control" value="${member?.email}" placeholder="Please Enter Email"/>
    <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
    <span class="invalid-feedback" id="availableStatus" style="display: none"><b></b></span>
</div>

<div class="form-group">
    <label><g:message code="b.date"/></label>
%{--    <g:datePicker type="date" name="bdate" class="form-control" value="${formatDate(format:'dd-MM-yyyy',date: member?.bdate)}" precision="day"--}%
%{--                  noSelection="['':'-Choose-']" />--}%
    <g:field type="date" name="bdate" class="form-control" value="${member?.bdate}" />
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter Password"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
    </div>
</g:if>
