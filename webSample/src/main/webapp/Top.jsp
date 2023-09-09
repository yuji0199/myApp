<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%    
HashMap<String,String> MangaMap = (HashMap)request.getAttribute("MangaMap");

%>
<a href = "sub.jsp">otani Sample</a>
<p>otani Sample</p>
<p>otani Sample</p>
<input type = 'text' ID= 'sake1'/>
<input type = 'button' onclick = 'del()'/>
<input type = 'button' onclick = 'update()'/>

<form name = 'del'>
	<input type = 'hidden' ID =  'y' name = 'actionType'value = 'del'/>
	<input type = 'hidden' name = 'x' value = '1'/>
</form>
<form name = 'updateSake'>
	<input type = 'hidden' ID =  'y' name = 'actionType'value = 'update'/>

	<input type = 'hidden' ID =  'y' name = 'y'value = ''/>
</form>

</body>
<script>
	function update(){
		document.getElementbyID(y).value = document.getElementbyID(sake1).value;
		document.updateSake.submit();
	}
	function update(){
		document.getElementbyID(y).value = document.getElementbyID(sake1).value;
		document.updateSake.submit();
	}
	function test(){
		let ps = document.getElementsByTagName("p");
		
		if(true){
			for(let j = 0;j < ps.length;j++){
				ps[j].innerHTML = "KOU";
			}
		}
	}
</script>
</html>
