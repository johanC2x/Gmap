<?php 

require_once '../util/Conexion.php';
require_once '../bean/PerfilBean.php';

class PerfilDAO{
	
	public function obtenerPerfil(){
		try {
			$miArray = "";
			$sql = "SELECT idperfil,nombre,estado FROM perfil";
			$conexion = new Conexion();
			$cn = $conexion->Conectarse();
			$perfil = mysql_query($sql, $cn);
	        $miArray = array();
	        while ($rsPerfil = mysql_fetch_array($perfil)) {
	        	$miArray[] = array(
	        		'idperfil' => $rsPerfil["idperfil"],
	        		'nombre' => $rsPerfil["nombre"],
	        		'estado' => $rsPerfil["estado"]
				);
	        }
		} catch (Exception $exc) {
			echo $exc->getTraceAsString();
		}
		return $miArray;
	}

	public function obtenerPerfilUsuario(PerfilBean $perfilBean){
		try {
			$miArray = "";
			$sql = "SELECT idperfil,nombre,estado,'selected' as selected  from perfil 
					where idperfil in (select idperfil from perfilusuario where idusuario = '$perfilBean->idUsuario')
					union all
					select idperfil,nombre,estado,'' as selected  from perfil 
					where idperfil not in (select idperfil from perfilusuario where idusuario = '$perfilBean->idUsuario')";
			$conexion = new Conexion();
			$cn = $conexion->Conectarse();
			$perfil = mysql_query($sql, $cn);
			$miArray = array();
			while ($rsPerfil = mysql_fetch_array($perfil)) {
	        	$miArray[] = array(
	        		'idperfil' => $rsPerfil["idperfil"],
	        		'nombre' => $rsPerfil["nombre"],
	        		'estado' => $rsPerfil["estado"],
	        		'selected' => $rsPerfil["selected"]
				);
	        }
		} catch (Exception $exc) {
			echo $exc->getTraceAsString();
		}
		return $miArray;
	}

}

?>