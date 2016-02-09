<?php 
	session_start();
	require_once '../bean/MapBean.php';
	require_once '../dao/MapDAO.php';

	$mapBean = new MapBean();
	$mapDAO = new MapDAO();

	$op = $_POST["op"];

	switch ($op) {
		case 1:
			$listaDistrito = $mapDAO->obtenerDistrito();
			echo json_encode($listaDistrito);
		break;
		case 2:
			$listaDistrito = $mapDAO->obtenerMapDistrito();
			echo json_encode($listaDistrito);
		break;
		case 3:
			$distrito = $_POST["distrito"];
			$mapBean->setDistrito($distrito);
			$listaDistrito = $mapDAO->obtenerAsigDistrito($mapBean);
			echo json_encode($listaDistrito);
		break;
		case 4:
			$idMap = $_POST["idMap"];
			$mapBean->setIdMap($idMap);
			$listaDistrito = $mapDAO->obtenerMapId($mapBean);
			echo json_encode($listaDistrito);
		break;
		case 5:
			$listaDistrito = $mapDAO->obtenerTodos();
			echo json_encode($listaDistrito);
		break;
		case 6:
			$idMap = $_POST["idMap"];
			$upload_folder ='../../images';
			$nombre_archivo = $_FILES['archivo']['name'];
			opendir($upload_folder);
			$archivador = $upload_folder.'/'. $nombre_archivo;
			copy($_FILES['archivo']['tmp_name'], $archivador);
			$tipo_archivo = $_FILES['archivo']['type'];
			$tipo_archivo = $_FILES['archivo']['type'];
			$tamano_archivo = $_FILES['archivo']['size'];
			$tmp_archivo = $_FILES['archivo']['tmp_name'];
			/*Seteando Ruta*/
			$mapBean->setIdMap($idMap);
			$mapBean->setRuta($archivador);
			$res = $mapDAO->actualizarRuta($mapBean);
			echo $res;
		break;
		case 7:
			$idMap = $_POST["idMap"];
			$root = $_POST["root"];
			$mapBean->setIdMap($idMap);
			$val = unlink($root);
			$res = "";
			if($val==true){
				$res = $mapDAO->eliminarArchivoMap($mapBean);
			}else{
				$res = "0";
			}
			echo $res;
			break;
	}

?>