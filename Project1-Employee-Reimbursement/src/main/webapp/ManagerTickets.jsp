<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Ticket view</title>
<link rel="stylesheet" href="table.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body>

	<h1 style="text-align: center;">Tickets</h1>
	<div class="divTable">
		<div class="divTableHeading">
			<div class="divTableRow">
				<div class="divTableHead">Id</div>
				<div class="divTableHead">Status</div>
				<div class="divTableHead">Employee Email</div>
				<div class="divTableHead">Type</div>
				<div class="divTableHead">$ amount</div>
				<div class="divTableHead">Time Stamp</div>
				<div class="divTableHead">Description</div>
				<div class="divTableHead">Accept Request</div>
				<div class="divTableHead">Reject Request</div>
			</div>
		</div>
		<div class="divTableBody">
			<c:forEach var="ticket" items="${listReimbursements}">
				<div class="divTableRow">
					<div class="divTableCell">
						<c:out value="${ticket.reimbursementId}" />
					</div>
					<div class="divTableCell">
						<c:out value="${ticket.reimbursementStatus}" />
					</div>
					<div class="divTableCell">
						<c:out value="${ticket.email}" />
					</div>
					<div class="divTableCell">
						<c:out value="${ticket.reimbursementType}" />
					</div>
					<div class="divTableCell">
						<c:out value="${ticket.dollarAmt}" />
					</div>
					<div class="divTableCell">
						<c:out value="${ticket.submitDate}" />
					</div>
					<div class="divTableCell">
						<c:out value="${ticket.description}" />
					</div>
					<div class="divTableCell">
						<a
							href="accept-ticket?id=&lt;c:out value='${ticket.reimbursementId}' /&gt;">Accept</a>
					</div>
					<div class="divTableCell">
						<a
							href="reject-ticket?id=&lt;c:out value='${ticket.reimbursementId}' /&gt;">Reject</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>