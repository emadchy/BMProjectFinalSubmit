<div class="form-group">
    <label><g:message code="first.name"/> *</label>
    <g:textField name="firstName" class="form-control" value="${member?.firstName}" placeholder=""/>
    <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="please.enter.first.name"/>
</div>

<div class="form-group">
    <label><g:message code="last.name"/></label>
    <g:textField name="lastName" class="form-control" value="${member?.lastName}" placeholder=""/>
</div>

<div class="form-group">
    <label><g:message code="address"/></label>
    <g:textField name="homeAddress" class="form-control" value="${member?.homeAddress}" placeholder=""/>
</div>

<div class="form-group">
    <label><g:message code="email.address"/> *</label>
    <g:field type="email" name="email" class="form-control" value="${member?.email}" placeholder=""/>
    <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
</div>

<div class="form-group">
    <label><g:message code="phone"/> *</label>
    <g:textField name="phoneNumber" class="form-control" value="${member?.phoneNumber}" placeholder=""/>
</div>

<div class="form-group">
    <label><g:message code="birth.date"/> *</label>
    <g:field type="date" name="birthDate" class="form-control" value="${member?.birthDate}" placeholder=" "/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder=""/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
    </div>
</g:if>