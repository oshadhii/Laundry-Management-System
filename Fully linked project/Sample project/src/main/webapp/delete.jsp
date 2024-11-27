<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String msg = request.getParameter("message");
%>

          <div class="contact">
                <h2>Update Information</h2>
                <form action="Contactdelete" method="post">
                    <p class="p">Full Name :</p>
                    <div class="input_box">
                        <input type="text" placeholder="Enter your Full Name" name="fu_name" required class="name" value = "<%= name%>">
                    </div><br>
                    <p class="p">Email :</p>
                    <div class="input_box">
                        <input type="email" placeholder="Enter your Email" name="email" required class="name" value = "<%= email%>">>
                    </div><br>
                    <p class="p">Mobile Number :</p>
                    <div class="input_box">
                        <input type="text" placeholder="Enter your Mobile Number" name="mobile" required class="name" value = "<%= mobile%>">>
                    </div><br>
                    <p class="p">Message :</p>
                    <div class="input_box">
                            <textarea placeholder="Enter your Message" name="msg" required class="name" value = "<%= msg%>"></textarea>
                    </div><br>
                    <div class="input_box">
                        <button type="submit">Update</button>
                    </div>
                </form>
            </div>
</body>
</html>