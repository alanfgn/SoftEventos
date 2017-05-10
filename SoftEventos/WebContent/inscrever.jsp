 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<jsp:useBean id="eventoDAO" class="br.com.ucsal.dao.EventoDAO"></jsp:useBean>
	<c:set var="evento" value="${eventoDAO.getEvento(param.id)}"></c:set>
	<title> Inscrever-se em  ${evento.nome} </title>
	<jsp:useBean id="Conta" class="br.com.ucsal.model.Conta" scope="session"></jsp:useBean>
</head>

<body>

<header>
		<c:import url="nav.jsp"></c:import>
	</header>

	<main>
		
	<div>
	<h1> Você tem certeza que deseja se inverser no Evento: <c:out value="${evento.nome}"></c:out>
	</h1>
	
	<a href="InscreverseEvento?id=${evento.id}"> Sim </a> 
	<br>
	<a href="eventos.jsp"> Não </a>
	</div>
	

	</main>

	<footer> Softeventos </footer>

</body>

</html>
