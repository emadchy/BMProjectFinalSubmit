
%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header" style="font-size: 30px">
        <g:message code="member" args="[' ']"/>

        %{--Actions--}%
        <span class="float-right">

            %{--Search Panel --}%
            <div class="btn-group">
                <g:form controller="member" action="index" method="GET">
                    <div class="input-group" id="search-area">
                        <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name',homeAddress: 'address', email: 'Email', phoneNumber:'Phone Number']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>

                            <button class="btn btn-default" type="submit">Search</button>

                    </div>
                </g:form>
            </div>

            %{--Create and Reload Panel--}%
            <div class="btn-group">
                <g:link controller="member" action="create" class="btn btn-primary"><g:message code="create"/></g:link>

            </div>
        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-light">
            <tr>
                <g:sortableColumn property="firstName" title="${g.message(code: "first.name")}" />
                <g:sortableColumn property="lastName"  title="${g.message(code: "last.name")}"/>
                <g:sortableColumn property="phone" title="${g.message(code: "phone")}"/>
                <g:sortableColumn property="birthDate" title="${g.message(code: "birth.date")}"/>
                <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
                <th class="action-row"><g:message code="action"/></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${memberList}" var="info">
                <tr>
                    <td>${info?.firstName}</td>
                    <td>${info?.lastName}</td>
                    <td>${info?.phoneNumber}</td>
                    <td>${info?.birthDate}</td>
                    <td>${info?.email}</td>



                    %{--Table Actions --}%
                    <td>
                        <div class="btn-group">
                            <g:link controller="member" action="details" class="btn btn-secondary" id="${info.id}"><i class="fas fa-eye"></i></g:link>
                            <g:link controller="member" action="edit" class="btn btn-secondary" id="${info.id}"><i class="fas fa-edit"></i></g:link>
                            <g:link controller="member" action="delete" id="${info.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        %{--Pagination Area--}%
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>