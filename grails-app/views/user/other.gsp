%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">

        %{--Actions--}%
        <span class="float-right">

            %{--Search Panel --}%
            <div class="btn-group">
                <g:form controller="user" action="other" method="GET">
                    <div class="input-group" id="search-area">
                        <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name', email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Search</button>
                        </span>
                    </div>
                </g:form>
            </div>

        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="firstName" title="First Name"/>
                <g:sortableColumn property="lastName" title="Last Name"/>
                <g:sortableColumn property="email" title="Email"/>
                <th class="action-row">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${userList}" var="info">
                <tr>
                    <td>${info?.firstName}</td>
                    <td>${info?.lastName}</td>
                    <td>${info?.email}</td>

                    %{--Table Actions --}%
                    <td>
                        <div class="btn-group">
                            <g:link controller="user" action="details" class="btn btn-secondary" id="${info.id}"><i class="fas fa-eye"></i></g:link>
                            <g:link controller="user" action="edit" class="btn btn-secondary" id="${info.id}"><i class="far fa-edit"></i></g:link>
                            <g:link controller="user" action="delete" id="${info.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>
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

<style type="text/css" media="screen">
.paginate {
    background: #fff;
    border-radius: 2px;
    height: 32px;
    line-height: 32px;
    position: relative;
}

.paginate span.currentStep {
    background: none repeat scroll 0 0 #337ab7;
    border: 1px solid #337ab7;
    color: #ffffff;
    display: inline-block;
    float: left;
    line-height: 32px;
    padding: 0 10px;
    position: relative;
    z-index: 10;
    font-size: 14px;
}

.paginate a.step {
    border: 1px solid #d3dbde;
    color: #9e9e9e;
    display: inline-block;
    float: left;
    font-size: 14px;
    line-height: 32px;
    padding: 0 10px;
}

.paginate a.nextLink {
    color: #9e9e9e;
    line-height: 32px;
    padding: 0 8px;
    border: 1px solid #d3dbde;
    float: left;
}

.paginate a.prevLink {
    color: #9e9e9e;
    line-height: 32px;
    padding: 0 8px;
    display: inline-block;
    border: 1px solid #d3dbde;
    float: left;
}
</style>