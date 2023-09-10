
%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card text-center mx-auto">
    <div class="card-header" style="font-size: 40px"  >
        <g:message code="profilePage" args="['']"/>
    </div>
    <div class="card-body ">
        <g:if test="${member}">
            <table class="table mx-auto" style="max-width: 25rem" >
                <tr>

                    <th class="text-left"><g:message code="first.name"/></th><td class="text-left">: ${member.firstName}</td>
                </tr>
                <tr>
                    <th class="text-left"><g:message code="last.name"/></th><td class="text-left">: ${member.lastName}</td>
                </tr>
                <tr>
                    <th class="text-left"><g:message code="address"/></th><td class="text-left">: ${member.homeAddress}</td>
                </tr>
                <tr>
                    <th class="text-left"><g:message code="phone"/></th><td class="text-left">: ${member.phoneNumber}</td>
                </tr>
                <tr>
                    <th class="text-left"><g:message code="email"/></th><td class="text-left">: ${member.email}</td>
                </tr>

                <tr>
                    <th class="text-left"><g:message code="birth.date"/></th><td class="text-left">: ${member.birthDate}</td>
                </tr>

            </table>
        </g:if>
        <div class="form-action-panel">
            <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>