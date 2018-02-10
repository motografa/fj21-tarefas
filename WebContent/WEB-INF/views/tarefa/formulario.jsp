<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
<title>Formulario</title>
</head>
<body>
	<h3>Adiciona Tarefa</h3>
	<form:errors path="tarefa.descricao" cssStyle="color:red"></form:errors>	
	<br />	
	
	<form action="adicionaTarefa" method="post">
	Descri��o
	<br />	
	<textarea name="descricao" rows="5" cols="100"></textarea>
	<br />
	<input type="submit" value="Adicionar">
	<fmt:message key="tarefa.adicionada.com.sucesso"/>
	
	</form>
</body>
</html>