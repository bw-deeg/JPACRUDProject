<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to my Stuff</title>
</head>
<body>

<form action="getService.do" method="GET">
  Streaming Service ID: <input type="text" name="id" />
  <input type="submit" value="Show Streaming Service" />
</form>


</body>
</html>