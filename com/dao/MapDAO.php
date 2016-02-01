<?php 

	require_once '../util/Conexion.php';
	require_once '../bean/MapBean.php';

	class MapDAO{

		public function obtenerDistrito(){
			try {
				$miArray = "";
				$sql = "SELECT distinct distrito FROM map";
				$conexion = new Conexion();
	            $cn = $conexion->Conectarse();
	            $map = mysql_query($sql, $cn);
	            $miArray = array();
	            while ($rsMap = mysql_fetch_array($map)) {
	            	$miArray[] = array(
	            		'distrito' => $rsMap['distrito']
					);
	            }
			}catch (Exception $exc) {
				echo $exc->getTraceAsString();
			}
			return $miArray;
		}

		public function obtenerMapDistrito(){
			try {
				$miArray¨= "";
				$sql = "SELECT distrito,count(*) as contador FROM map group by distrito";
				$conexion = new Conexion();
	            $cn = $conexion->Conectarse();
	            $map = mysql_query($sql, $cn);
	            while ($rsMap = mysql_fetch_array($map)) {
	            	$miArray[] = array(
	            		'distrito' => $rsMap['distrito'],
	            		'contador' => $rsMap['contador']
					);
	            }
			} catch (Exception $exc) {
				echo $exc->getTraceAsString();
			}
			return $miArray;
		}

		public function obtenerAsigDistrito(MapBean $mapBean){
			try {
				$miArray¨= "";
				$sql = "SELECT idMap,solicitud,actividad,nombreContratista,
				        cliente,dirObra,distrito,rolLiquidador,tecnico,finReal,mes,ruta,
				        (case 
				        	when ruta is null then 0 
				        	when ruta is not null then 1 
				        end) as flgRuta
				        FROM map where distrito = '$mapBean->distrito'";
				$conexion = new Conexion();
	            $cn = $conexion->Conectarse();
	            $map = mysql_query($sql, $cn);
	            while ($rsMap = mysql_fetch_array($map)) {
	            	$miArray[] = array(
	            		'idMap' => $rsMap['idMap'],
	            		'solicitud' => $rsMap['solicitud'],
	            		'actividad' => $rsMap['actividad'],
	            		'nombreContratista' => $rsMap['nombreContratista'],
	            		'cliente' => $rsMap['cliente'],
	            		'dirObra' => $rsMap['dirObra'],
	            		'rolLiquidador' => $rsMap['rolLiquidador'],
	            		'distrito' => $rsMap['distrito'],
	            		'tecnico' => $rsMap['tecnico'],
	            		'finReal' => $rsMap['finReal'],
	            		'mes' => $rsMap['mes'],
	            		'ruta' => $rsMap['ruta'],
	            		'flgRuta' => $rsMap['flgRuta']
					);
	            }
			} catch (Exception $exc) {
				echo $exc->getTraceAsString();	
			}
			return $miArray;
		}

		public function obtenerMapId(MapBean $mapBean){
			try {
				$miArray¨= "";
				$sql = "SELECT idMap,solicitud,actividad,nombreContratista,
				        cliente,dirObra,distrito,rolLiquidador,tecnico,finReal,mes 
				        FROM map where idMap = '$mapBean->idMap'";
				$conexion = new Conexion();
	            $cn = $conexion->Conectarse();
	            $map = mysql_query($sql, $cn);
	            while ($rsMap = mysql_fetch_array($map)) {
	            	$miArray[] = array(
	            		'idMap' => $rsMap['idMap'],
	            		'solicitud' => $rsMap['solicitud'],
	            		'actividad' => $rsMap['actividad'],
	            		'nombreContratista' => $rsMap['nombreContratista'],
	            		'cliente' => $rsMap['cliente'],
	            		'dirObra' => $rsMap['dirObra'],
	            		'rolLiquidador' => $rsMap['rolLiquidador'],
	            		'distrito' => $rsMap['distrito'],
	            		'tecnico' => $rsMap['tecnico'],
	            		'finReal' => $rsMap['finReal'],
	            		'mes' => $rsMap['mes']
					);
	            }
			} catch (Exception $exc) {
				echo $exc->getTraceAsString();
			}
			return $miArray;
		}

		public function obtenerTodos(){
			try {
				$miArray¨= "";
				$sql = "SELECT idMap,solicitud,actividad,nombreContratista,
				        cliente,dirObra,distrito,rolLiquidador,tecnico,finReal,mes FROM map ";
				$conexion = new Conexion();
	            $cn = $conexion->Conectarse();
	            $map = mysql_query($sql, $cn);
	            while ($rsMap = mysql_fetch_array($map)) {
	            	$miArray[] = array(
	            		'idMap' => $rsMap['idMap'],
	            		'solicitud' => $rsMap['solicitud'],
	            		'actividad' => $rsMap['actividad'],
	            		'nombreContratista' => $rsMap['nombreContratista'],
	            		'cliente' => $rsMap['cliente'],
	            		'dirObra' => $rsMap['dirObra'],
	            		'rolLiquidador' => $rsMap['rolLiquidador'],
	            		'distrito' => $rsMap['distrito'],
	            		'tecnico' => $rsMap['tecnico'],
	            		'finReal' => $rsMap['finReal'],
	            		'mes' => $rsMap['mes']
					);
	            }
			} catch (Exception $exc) {
				echo $exc->getTraceAsString();	
			}
			return $miArray;
		}

		public function actualizarRuta(MapBean $mapBean){
			try {
				$res = "";
				$sql = "UPDATE map set ruta = '$mapBean->ruta' WHERE idMap = '$mapBean->idMap'";
				$conexion = new Conexion();
	            $cn = $conexion->Conectarse();
	            $map = mysql_query($sql, $cn);
	            $res = "1";
			} catch (Exception $exc) {
				echo $exc->getTraceAsString();	
			}
			return $res;
		}

	}

?>