<?php 

if (!is_file("modelo/".$pagina.".php")){
	
	echo "Falta definir la clase ".$pagina;
	exit;
}
require_once("modelo/".$pagina.".php"); 


	if(is_file("vista/".$pagina.".php")){

		$o = new docente();
		if(!empty($_POST['accion'])){

		
			$o->set_cedula($_POST['cedula']);
			$o->set_nombre($_POST['nombre']);
			$o->set_apellido($_POST['apellido']);
			$o->set_categoria($_POST['categoria']);
			$o->set_fecha($_POST['fecha']);
			$o->set_especializacion($_POST['especializacion']);
			$o->set_profecion($_POST['profecion']);
			$o->set_edad($_POST['edad']);
			
			$o->set_años($_POST['años']);
			$o->set_correo($_POST['correo']);
			$o->set_direccion($_POST['direccion']);
			$mensaje = $o->registrar();

			echo $mensaje;
			exit;
			
			
		  }
		  if(!empty($_POST['accion1'])){

		
			$o->set_cedula($_POST['cedula1']);
			$o->set_nombre($_POST['nombre1']);
			$o->set_apellido($_POST['apellido1']);
			$o->set_categoria($_POST['categoria1']);
			$o->set_fecha($_POST['fecha1']);
			$o->set_especializacion($_POST['especializacion1']);
			$o->set_profecion($_POST['profecion1']);
			$o->set_edad($_POST['edad1']);
			
			$o->set_años($_POST['años1']);
			$o->set_correo($_POST['correo1']);
			$o->set_direccion($_POST['direccion1']);
			$mensaje = $o->modificar();
		
			echo $mensaje;
			exit;
			
			
		  }

		  if(!empty($_POST['accion3'])){

		
			$o->set_cedula($_POST['cedula2']);
			
			$mensaje = $o->eliminar();
			
			echo $mensaje;
			exit;
			
			
		  }
		  if(!empty($_POST['consulta'])){

		
			
			
			$consuta=$o->consultar();
			
			echo $consuta;
			exit;
			
			
		  }


		  $consuta=$o->consultar();
		require_once("vista/".$pagina.".php");
	}
	else{
		echo "PAGINA EN CONSTRUCCION";
	}

?>