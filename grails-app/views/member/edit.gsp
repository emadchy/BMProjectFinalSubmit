
%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card mx-auto " style="max-width: 25rem">
    <div class="card-header" style="font-size: 20px">
        <g:message code="EditPage" args="['']"/>
    </div>
    <div class="card-body">
        <g:form controller="member" action="update">
            <g:hiddenField name="id" value="${member.id}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "update")}"/>
                <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>
</div>