
/* Constante Basicas */

var preloader = "<left><img src='../gmap/assets/img/ajax_loader.gif'></left>";
var ruta_inicio = "<div class='well'><a href='panelControl.html'>Inicio</a>";

function obtenerAlert(msg) {
    var alert = "";
    alert += '<div class="alert alert-info">';
    alert += '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + msg;
    alert += '</div>';
    return alert;
}

function obtenerRuta(route){
    var ruta = "" ;
    ruta= "<div class='well'><a href='../../../vistas/panelControl.php'> Inicio </a><span style='color:red;' > > </span> "+ route +" </div>";
    return ruta;
}

function obtenerDireccion(dir){
  var ruta = "" ;
  ruta= "<div class='well'><p class='tr-left'>Direccion <span style='color:red;'><i class='fa fa-arrow-right'></i></span> "+ dir +"</p></div>";
  return ruta; 
}

/* Constante Modal */

function crearModal(json,obj,title){
  var html = "";
  html += '<div id="'+obj+'" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">';
    html += '<div class="modal-dialog modal-lg">';
      html += '<div class="modal-content">';
          html += '<div class="modal-header">';
            html += '<button type="button" class="close" data-dismiss="modal">&times;</button>';
            html += '<h4 class="modal-title">'+title+'</h4>';
          html += '</div>';
          html += '<div class="modal-body">';
            html += json;
          html += '</div>';
          html += '<div class="modal-footer">';
            html += '<left>';
                html += '<div id="responseCreate" ></div>';
            html += '</left>';
          html += '</div>';
      html += '</div> ';
    html += '</div>';
  html += '</div>';
  $("#modal").html(html);
  $("#"+obj).modal("show");
}

function modalMap(json){
  var html = "";
  var op = 3;
  html += "<table class='table table-striped table-bordered table-hover' style='background-color:white'>";
    html += "<thead>";
      for(var i=0;i<json.length;i++){
        html += "<tr>"+json[i].Codigo+"</tr>";
        html += "<tr>"+json[i].Cliente+"</tr>";
        html += "<tr>"+json[i].Direccion+"</tr>";
        html += "<tr>"+json[i].Distrito+"</tr>";
      }
    html += "</thead>";
    html += "<tbody class='bodyTable'>";
    html += "</tbody>";
  html += "</table>";
  return html;
}

function cerrarSesion() {
  var op = 0;
  $.ajax({
    type:"POST",
    data:{
      op:op
    },
    url:"../../../controller/MapController.php",
    success:function(msg){
      console.log(msg);
      if(msg = 1){
        location.href = "../../../../index.php";
      }
    }
  });
}