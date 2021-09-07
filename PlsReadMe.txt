Added employee ticket view frontend. Expects servelt called EmployeeTicketListServlet using get.

Added manager ticket view frontend. Expects servelt called ManagerTicketListServlet using get.

Added ajax login page expects servlet called Login available at /Login

Added ticket submit expects servlet called SubmitTicket

$(document).ready(function(){
        	$("#Login").click(function(){
	        	var email = $("#Username").val().trim();
	        	var password = $("#Password").val();
	        	// Checking for blank fields.
	        	if( email =='' || password ==''){
	        		$('input[type="text"],input[type="password"]');
		        	$('input[type="text"],input[type="password"]');
		        	alert("Please fill all fields...!!!!!!");
	        	}else {
		        	$.post("/Login",{ Username: email, Password:password},
		        	function(data) {
		        	if(data=='Invalid Email.......') {
		        	$('input[type="text"]');
		        	$('input[type="password"]');
		        	alert(data);
				        }else if(data=='Email or Password is wrong...!!!!'){
				        	$('input[type="text"],input[type="password"]');
				        	alert(data);
			        	} else if(data=='Successfully Logged in...'){
				        	$("form")[0].reset();
				        	$('input[type="text"],input[type="password"]');
				        	alert(data);
				        } else{
			        	alert(data);
	        			}
	        		});
	        		}
	        		});
	        	});