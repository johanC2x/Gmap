
var resElimina = 0;

function asignarPerfil(idUsuario,val) {
	var op = 2;
	var html = "";
	var obj = "new_Perfil";
	var title = "Asignar Perfil";
	$.ajax({
		type:"POST",
		data:{
			op:op,
			idUsuario:idUsuario
		},
		url:"../../../controller/PerfilController.php",
		success:function(msg){
			var perfil = JSON.parse(msg);
			if(perfil.length != 0){
				html += '<div id="modPerfil">';
					html += '<form>';
		                html += '<select id="val" multiple="multiple">';
						for(var i=0;i<perfil.length;i++){
							html += "<option value=" + perfil[i].idperfil + " " + perfil[i].selected + ">" + perfil[i].nombre + "</option>";
						}
						html += '</select>';
		                html += '<br/>';
		                html += '<button type="button" class="btn btn-primary btn-block" onclick="actualizarAsignacionPerfil('+idUsuario+')" >Asignar</button>';
	            	html += '</form>';
            	html += '</div>';
			}else{
				if(perfil.length == 0){
					html = obtenerAlert("Ha ocurrido un Error");
				}
			}
			if(val == 1){
				crearModal(html,obj,title);
			}else{
				$("#val").bootstrapDualListbox('refresh');
			}
			$("#val").bootstrapDualListbox();
		}
	});
}

function actualizarAsignacionPerfil(idUsuario){
	var list = "";
    var respuesta = "";
    var errorInsert = "";
    var resp = 0;
    $("#val").bootstrapDualListbox();
    var i = $('#val > option:selected').length; 
    var array = []; 
    array.push($("#val").bootstrapDualListbox().val());
    list = array[0]; 
    if(list == null){
    	resElimina = eliminarPerfilUSuario(idUsuario);
    	if(!isNaN(resElimina)){
    		asignarPerfil(idUsuario,2);
    		errorInsert = obtenerAlert("Operación realizada con éxito");
        	$("#responseCreate").html(errorInsert);
    	}else{
    		var error = obtenerAlert("Se ha producido un error");
        	$("#responseCreate").html(error);
    	}
    }else{
        var lista = list.toString().split(",");
        resElimina = eliminarPerfilUSuario(idUsuario);
        if(!isNaN(resElimina)){
        	for (var j = 0; j < lista.length; j++) {
	            console.log(parseInt(lista[j]));
	            resp = insertarPerfilUsuario(parseInt(lista[j]),idUsuario);
	        }
	        if(isNaN(resp)){
        		asignarPerfil(idUsuario,2);
	        }
        }else{
        	if(isNaN(resElimina)){
        		var errorInsert = obtenerAlert("Se ha producido un error");
        		$("#responseCreate").html(errorInsert);
        	}
        }
    }
}

function eliminarPerfilUSuario(idUsuario){
	var op = 2;
	var res = $.ajax({
		type:"POST",
		data:{
			op:op,
			idUsuario:idUsuario
		},
		async: false,
		url:"../../../controller/PerfilUsuarioController.php",
		success:function(msg){
			console.log(parseInt(msg));
		}
	});
	return parseInt(res.responseText);
}

function insertarPerfilUsuario(idPerfil,idUsuario){
	var op = 3;
	var res = $.ajax({
		type:"POST",
		data:{
			op:op,
			idPerfil:idPerfil,
			idUsuario:idUsuario
		},
		url:"../../../controller/PerfilUsuarioController.php",
		success:function(msg){
			console.log(parseInt(msg));
		}
	});
	return parseInt(res.responseText);	
}