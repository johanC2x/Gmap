<?php 

	session_start();
	require_once '../bean/PerfilBean.php';
	require_once '../dao/PerfilDAO.php';

	$perfilBean = new PerfilBean();
	$perfilDAO = new PerfilDAO();

	$op = $_POST["op"];

	switch ($op){
		case 1:
			$listaPerfil = $perfilDAO->obtenerPerfil();
			echo json_encode($listaPerfil);
			break;
		case 2:
			$idUsuario = $_POST["idUsuario"];
			$perfilBean->setIdUsuario($idUsuario);
			$listaPerfil = $perfilDAO->obtenerPerfilUsuario($perfilBean);
			echo json_encode($listaPerfil);
			break;
	}

?>