<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>

<script>
	$(function() {
		$("#dataFinalizacao").datepicker();
	});
</script>

</head>
<body>
	<h3>Alterar a tarefa - ${tarefa.id }</h3>

	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id }">

		Descrição: 
		<br />
		<textarea name="descricao" rows="5" cols="100"> ${tarefa.descricao } </textarea>
		<br /> 
		Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' } /> 
		<br />
		 Data de finalização: 
		 <br /> 
		 <input type="text" name="dataFinalizacao" id="dataFinalizacao"
			<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" /> />

		<br /> <input type="submit" value="Alterar" />

	</form>
</body>
</html>