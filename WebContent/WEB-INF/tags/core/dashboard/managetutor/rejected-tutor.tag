<%@ tag %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="GlobalConstant" class="org.animopts.bean.GlobalConstant" scope="session"/>
<jsp:useBean id="RejectedTutor" class="org.animopts.bean.RejectedTutor" scope="session"/>
<div class="list-group">
    <ul class = "list-divider">
    	<c:forEach items="${rejectedList}" var="rejected">
	        <li class="col-lg-12" style = "margin-bottom: 1%">
	            <img class="avatar-small" src="<c:url value="${GlobalConstant.NO_AVATAR}" />"> ${rejected.firstName} ${rejected.lastName}
	            <div class="pull-right">
	                <button id="${FormConstant.MANAGETUTOR_REJECTEDPREFIX}$${FormConstant.MANAGETUTOR_ACTION_ACCEPT}$${rejected.idNumber}" type="button" class="btn btn-success btn-raised btn-xs">Accept</button>
	            </div>
	        </li>
        </c:forEach>
    </ul>
</div>