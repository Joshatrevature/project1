<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="table.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1 align="center">
			<a href="TicketSubmit.html" style="color: goldenrod">Create new Ticket</a>
		</h1>
	</div>

	<div class="container">
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
					</div>
				</c:forEach>
			</div>
		</div>
	</div>






</body>
</html>