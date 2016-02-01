<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" >
<head>
	<?php
        include_once '../../plantilla/style.php';
	?>
	<?php
        include_once '../../plantilla/nav.php';
	?>
</head>
<body onunload="GUnload()">
<div class="container">
    <div class="row">
		<div class="col-md-12">
            <div class="panel-group" id="accordion">
			    <div class="panel panel-default">
			        <div class="panel-heading">
			            <h4 class="panel-title">
			                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" class="pointer">
			                    Buscar Dirección
			                </a><i class="indicator glyphicon glyphicon-chevron-down  pull-right"></i>
			            </h4>
			        </div>
			        <div id="collapseOne" class="panel-collapse collapse in">
			            <div class="panel-body">
			                <form class="form-inline" role="form" action="#" onsubmit="showAddress(this.address.value); return false">
						      	<input type="text" class="form-control" style="width:150px;" id="codsol" name="codsol" placeholder="Ingresar Codigo" />
						        <input type="text" class="form-control" style="width:450px" id="address" name="address" placeholder="Ingresar Ubicación" />
						        <!--<select id="cboDistrito" class="selectpicker" data-live-search="true" ></select>-->
						        <input type="submit" value="Buscar" class="btn btn-primary" style="width:150px;" />
						        <input type="button" onclick="limpiarFiltro()" value="Limpiar" class="btn btn-primary" style="width:150px;" />
			                </form>        
			            </div>
			        </div>
			    </div> 
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="col-md-8">
				<center>
					<div id="map_canvas" style="width: 750px; height: 500px"></div>
					<br/>
					<div id="response"></div>
				</center>	
			</div>
			<div class="col-md-4">
				<p style="font-medium"><i class="fa fa-arrow-circle-right" style='color:red;padding-right:10px;'></i><b>Lista de trabajos</b></p>
				<div id="tableDistrito"></div>
			</div>
		</div>
	</div>
	<div id="modal">
		<p style="display:none;"></p>
	</div>
</div>
<?php
	include_once '../../plantilla/footer.php';
?>
<?php
	include_once '../../plantilla/script.php';
?>
<script type="text/javascript" >
	initialize();
	obtenerDistrito("cboDistrito");
	obtenerMapaDistrito("tableDistrito");
</script>
</body>
</html>