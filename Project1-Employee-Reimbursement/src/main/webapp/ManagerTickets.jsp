<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Ticket view</title>
</head>
<body>
	<table align="center" id="table-1">
		<caption>Tickets</caption>
		<thead>
			<tr>
				<th>Id</th>
				<th>Status</th>
				<th>Employee Email</th>
				<th>Type</th>
				<th>$ amount</th>
				<th>Time Stamp</th>
				<th>Description</th>
				<th>Accept Request</th>
				<th>Reject Request</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="ticket" items="${listReimbursements}">
				<tr>
					<td><c:out value="${ticket.reimbursementId}" /></td>
					<td><c:out value="${ticket.reimbursementStatus}" /></td>
					<td><c:out value="${ticket.email}" /></td>
					<td><c:out value="${ticket.reimbursementType}" /></td>
					<td><c:out value="${ticket.dollarAmt}" /></td>
					<td><c:out value="${ticket.submitDate}" /></td>
					<td><c:out value="${ticket.description}" /></td>
					<td><a href="accept-ticket?id=<c:out value='${ticket.reimbursementId}' />">Accept</a>

					</td>
					<td><a href="reject-ticket?id=<c:out value='${ticket.reimbursementId}' />">Reject</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>