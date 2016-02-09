var map = null;
var geocoder = null;
var obj = "";
var title = "";
var dis = "";

function limpiarFiltro(){
  $("#codsol").val("");
  $("#address").val("");
}


function initialize() {
  var op = 1;
  var error = 0;
  if (GBrowserIsCompatible()) {
    map = new GMap2(document.getElementById("map_canvas"));
    map.setCenter(new GLatLng(37.4419, -122.1419), 1);
    map.setUIToDefault();
    $.ajax({
      type:"POST",
      data:{
        op:op
      },
      url:"../../../controller/MapController.php",
      success:function(msg){
        var mapa = JSON.parse(msg);
        for(var i=0;i<mapa.length;i++){
          var latlong = null;
          var address = mapa[i].distrito;
          geocoder = new GClientGeocoder();
          geocoder.getLatLng(
             address + " Perú",
            function(point) {
              if (!point) {
                error = 1;
              } else {
                map.setCenter(point, 15);
                var marker = new GMarker(point, {draggable: true,title: address});
                map.addOverlay(marker);
                GEvent.addListener(marker, "dragend", function() {
                  marker.openInfoWindowHtml(marker.getLatLng().toUrlValue(6));
                  latlong = marker.getLatLng();
                  console.log(latlong);
                });
                GEvent.addListener(marker, "click", function() {
                  obtenerOrdenes(marker.getLatLng().toUrlValue(6));
                });
                GEvent.trigger(marker, "click");
              }
            }
          );
        }
        /*
        for(var i=0;i<jsonMap.length;i++){
          console.log(jsonMap[i].address+"///"+jsonMap[i].distrito);
        }
        */
      }
    });
  }
}

function obtenerOrdenes(address){
  var geocoder = new google.maps.Geocoder();
  geocoder.geocode({'address': address}, function(results, status) {
      if(status == google.maps.GeocoderStatus.OK) {
          /*console.log(results[0]['formatted_address']);*/
          /*alert(results[0]['formatted_address']);*/
      };
  });
}

function showAddress(address) {
  if($("#codsol").val() != ""){
    address = $("#codsol").val();
    var op = 4;
    $.ajax({
      type:"POST",
      data:{
        op:op,
        idMap:address
      },
      url:"../../../controller/MapController.php",
      success:function(msg){
        var mapa = JSON.parse(msg);
        address = mapa[0].dirObra.concat(' ',mapa[0].distrito,' Perú');
      }
    });
  }else{
    if($("#address").val() != ""){
      address = $("#address").val();
    }else{
      if($("#cboDistrito").val() != 0){
        address = $("#cboDistrito").val();
      }    
    }  
  }
  if (geocoder) {
    geocoder.getLatLng(
      address,
      function(point) {
        if (!point) {
          var alert = obtenerAlert("La direccion seleccionada no pudo filtrarse");
          $("#response").html(alert);
        } else {
          map.setCenter(point, 15);
          var marker = new GMarker(point, {draggable: true});
          map.addOverlay(marker);
          GEvent.addListener(marker, "dragend", function() {
            marker.openInfoWindowHtml(address);
          });
          GEvent.addListener(marker, "click", function() {
            marker.openInfoWindowHtml(address);
          });
          GEvent.trigger(marker, "click");
        }
      }
    );
  }
}

function obtenerMapaDistrito(obj) {
  var op = 2;
  var html = "";
  $.ajax({
    type:"POST",
    data:{
      op:op
    },
    url:"../../../controller/MapController.php",
    success:function(msg){      
      var mapa = JSON.parse(msg);
      html += "<table id='myTable' class='table table-striped table-bordered table-hover' style='background-color:white'>";
        html += "<thead>";
          html += "<tr>";
            html += "<th>Distrito</th>";
            html += "<th>Asig.</th>";
            html += "<th>Acción</th>";
          html += "</tr>";
        html += "</thead>";
        html += "<tbody class='bodyTable'>";
        for(var i=0;i<mapa.length;i++){
         html += "<tr>";
          html += "<td>"+mapa[i].distrito+"</td>";
          html += "<td><left>"+mapa[i].contador+"</left></td>";
          html += "<td style='width:30px;'><a href='#' data-toggle='tooltip' title='Ver Detalle'  onclick='obtenerAsigDistrito(\"" + mapa[i].distrito + "\")'><center><img src='../../../../assets/img/lupa.png' style='width:15px;'/></center></a></td>";
         html += "</tr>";
        }
        html += "</tbody>";
      html += "</table>";
      $("#"+obj).html(html);
      $('#'+obj).paging({limit:10});
    }
  });
}

function obtenerAsigDistrito(distrito){
  var op = 3;
  var root = "../../";
  dis = distrito;
  obj = "map";
  title = "Número de Asignaciones";
  var html = "";
  $.ajax({
    type:"POST",
    data:{
      distrito:distrito,
      op:op
    },
    url:"../../../controller/MapController.php",
    success:function(msg){
      console.log(msg);
      var mapa = JSON.parse(msg);
      html += "<table id='tableMap' class='table table-striped table-bordered table-hover' style='background-color:white'>";
        html += "<thead>";
          html += "<tr>";
            html += "<th class='tr-center'>Codigo</th>";
            html += "<th class='tr-center'>Cliente</th>";
            html += "<th class='tr-center'>Direccion</th>";
            html += "<th class='tr-center'>Distrito</th>";
            html += "<th class='tr-center' colspan='3'>Acción</th>";
          html += "</tr>";
        html += "</thead>";
        html += "<tbody class='bodyTable'>";
          for(var i=0;i<mapa.length;i++){
            html += "<tr>";
              html += "<td>"+mapa[i].solicitud.substring(0,mapa[i].solicitud.indexOf("."))+"</td>";
              html += "<td class='font-min'>"+mapa[i].cliente+"</td>";
              html += "<td class='font-min'>"+mapa[i].dirObra+"</td>";
              html += "<td class='font-min'>"+mapa[i].distrito+"</td>";
              html += "<td style='width:30px;'><a href='#' data-toggle='tooltip' title='Seleccionar' onclick='obtenerDistritoAddress("+mapa[i].idMap+")'><center><img src='../../../../assets/img/select3.png' style='width:15px;'/></center></a></td>";
              if(mapa[i].flgRuta == 1){
                html += "<td class='font-min'><a href="+root.concat('',mapa[i].ruta)+" target='_blank' data-toggle='tooltip' title='Descargar'><center>"+"<img src='../../../../assets/img/download.png' style='width:15px;'/>"+"</center></a></td>";
                html += "<td class='font-min'><center><a href='#' onclick='eliminarArchivoMap(\""+mapa[i].ruta+"\","+mapa[i].idMap+")' data-toggle='tooltip' title='Eliminar archivo'><i class='fa fa-trash'></i></a></center></td>";
              }else{
                if (mapa[i].flgRuta == 0){
                  html += "<td class='font-min'><a href='#' data-toggle='tooltip' title='Subir' onclick='subir(\""+obj+"\","+mapa[i].idMap+")'><center>"+"<img src='../../../../assets/img/upload.png' style='width:15px;'/>"+"</center></a></td>";
                  html += "<td class='font-min'><a href='#' class='disable' data-toggle='tooltip' title='Sin archivo'><i class='fa fa-ban'></i></a></td>";
                }
              }
            html += "</tr>";
          }
        html += "</tbody>";
      html += "</table>";
      crearModal(html,obj,title);
      $('#tableMap').paging({limit:5});
    }
  });
}

function obtenerDistritoAddress(idMap){
  var op = 4;
  $.ajax({
    type:"POST",
    data:{
      op:op,
      idMap:idMap
    },
    url:"../../../controller/MapController.php",
    success:function(msg){
      var mapa = JSON.parse(msg);
      mostrarAddress(mapa[0].dirObra.concat(' ',mapa[0].distrito,' Perú'));
      $("#"+obj).modal("hide");
    }
  });
}

function mostrarAddress(address) {
  var alert = "";
  if (geocoder) {
    geocoder.getLatLng(
      address,
      function(point) {
        if (!point) {
          alert = obtenerAlert("La direccion seleccionada no pudo filtrarse");
          $("#response").html(alert);
        } else {
          map.setCenter(point, 15);
          var marker = new GMarker(point, {draggable: true});
          map.addOverlay(marker);
          GEvent.addListener(marker, "dragend", function() {
            marker.openInfoWindowHtml(address);
          });
          GEvent.addListener(marker, "click", function() {
            marker.openInfoWindowHtml(address);
          });
          GEvent.trigger(marker, "click");
          alert = obtenerDireccion(address);
        }
      }
    );
  }
}

var jsonModal = [];
if(jsonModal.length != 0){
  var json = JSON.parse(jsonModal);
}

function obtenerModal(){
  var obj = "map";
  var title = "Número de Asignaciones";
  jsonModal.push({
    'Codigo':'Cod. Solicitud',
    'Cliente':'Cliente',
    'Direccion':'Dirección',
    'Distrito':'Distrito'
  });
  var mod = crearModal(jsonModal,obj,title);
  $("#modal").html(mod);
  $("#"+obj).modal("show");
  jsonModal = [];
}

function subir(objOld,idMap){
  var obj = "upload";
  var title = "Subir Plano";
  var html = '<form id="formData" enctype="multipart/form-data" role="form"><table><tr><td style="padding:5px;"><input type="file" id="image" name="image" class="filestyle form-control"></td><td><button type="button" onclick="subirArchivo('+idMap+',\''+obj+'\')" class="btn btn-primary" >Subir</button></td></tr></table><form>';
  html += "<br/><div id='msg'></div>";
  $("#"+objOld).modal("hide");
  crearModal(html,obj,title);
}

function subirArchivo(idMap,obj){
  var op = 6;
  var inputFileImage = document.getElementById("image");
  var file = inputFileImage.files[0];
  var data = new FormData();
  data.append('op',op);
  data.append('archivo',file);
  data.append('idMap',idMap);
  $.ajax({
    type:'POST',
    data:data, 
    url:"../../../controller/MapController.php",
    contentType:false,
    processData:false,
    cache:false,
    success:function(msg){
      if(msg == "1"){
        obtenerAsigDistrito(dis);
        $("#"+obj).modal("hide");
      }else{
        if(msg == "0"){
          var msg = obtenerAlert("Ha ocurrido un error por favor verifique");
          $("#msg").html(msg);
        }
      }
    }
  });
}  

function eliminarArchivoMap(root,idMap){
  var op = 7;
  $.ajax({
    type:"POST",
    data:{
      op:op,
      idMap:idMap,
      root:root
    },
    url:"../../../controller/MapController.php",
    success:function(msg){
      console.log(msg);
      if(msg == "1"){
        obtenerAsigDistrito(dis);
        $("#"+obj).modal("hide");
      }else{
        if(msg == "0"){
          var msg = obtenerAlert("Ha ocurrido un error por favor verifique");
          $("#msg").html(msg);
        }
      }
    }
  });
}






