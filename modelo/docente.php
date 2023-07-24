<?php

require_once('modelo/conexion.php');
class docente extends datos{
    private $cedula;
	private $nombre;
	private $apellido;
	private $categoria;
	private $fecha;
	private $especializacion;
	private $profecion;
    private $edad;
    private $anos;
    private $correo;
    private $direccion;

    public function set_cedula($valor){
		$this->cedula = $valor; 
	}
	public function set_nombre($valor){
		$this->nombre = $valor; 
	}
	public function set_apellido($valor){
		$this->apellido = $valor; 
	}
	public function set_categoria($valor){
		$this->categoria = $valor; 
	}
	public function set_fecha($valor){
		$this->fecha = $valor; 
	}
	public function set_especializacion($valor){
		$this->especializacion = $valor; 
	}
	public function set_profecion($valor){
		$this->profecion = $valor; 
	}
    public function set_edad($valor){
		$this->edad = $valor; 
	}
	public function set_años($valor){
		$this->anos = $valor; 
	}
    public function set_correo($valor){
		$this->correo = $valor; 
	}
    public function set_direccion($valor){
		$this->direccion = $valor; 
	}
   
    public function registrar(){


        $co = $this->conecta();
		$co->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        if(!$this->existe($this->cedula)){
            try{
                $r= $co->prepare("Insert into docentes(
						
                    cedula,
                    nombre,
                    apellido,
                    categoria,
                    fecha_nacimiento,
                    especializacion,
                    profecion,
                    edad,
                    anos_trabajo,
                    correo,
                    direccion
                    )
            

                    Values(
                        :cedula,
                        :nombre,
                        :apellido,
                        :categoria,
                        :fecha_nacimiento,
                        :especializacion,
                        :profecion,
                        :edad,
                        :anos_trabajo,
                        :correo,
                        :direccion
                    )");
                $r->bindParam(':cedula',$this->cedula);	
                $r->bindParam(':nombre',$this->nombre);	
                $r->bindParam(':apellido',$this->apellido);	
                $r->bindParam(':categoria',$this->categoria);	
                $r->bindParam(':fecha_nacimiento',$this->fecha);	
                $r->bindParam(':especializacion',$this->especializacion);	
                $r->bindParam(':profecion',$this->profecion);	
                $r->bindParam(':edad',$this->edad);	
                $r->bindParam(':anos_trabajo',$this->anos);	
                $r->bindParam(':correo',$this->correo);	
                $r->bindParam(':direccion',$this->direccion);	
            
             
                $r->execute();

             
                    return "Registro incluido";	
                
            }catch(Exception $e){
                return $e->getMessage();
            }
                
            }
            else{
                return "cedula registrada";
            }
    








        }

        public function modificar(){


            $co = $this->conecta();
            $co->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            if($this->existe($this->cedula)){
                try{
                    $r= $co->prepare("Update docentes set 
                            
                       
                        nombre=:nombre,
                        apellido=:apellido,
                        categoria=:categoria,
                        fecha_nacimiento=:fecha_nacimiento,
                        especializacion=:especializacion,
                        profecion=:profecion,
                        edad=:edad,
                        anos_trabajo=:anos_trabajo,
                        correo=:correo,
                        direccion=:direccion
                        where
						cedula =:cedula
                        
                
    
                    
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        ");
                    $r->bindParam(':cedula',$this->cedula);	
                    $r->bindParam(':nombre',$this->nombre);	
                    $r->bindParam(':apellido',$this->apellido);	
                    $r->bindParam(':categoria',$this->categoria);	
                    $r->bindParam(':fecha_nacimiento',$this->fecha);	
                    $r->bindParam(':especializacion',$this->especializacion);	
                    $r->bindParam(':profecion',$this->profecion);	
                    $r->bindParam(':edad',$this->edad);	
                    $r->bindParam(':anos_trabajo',$this->anos);	
                    $r->bindParam(':correo',$this->correo);	
                    $r->bindParam(':direccion',$this->direccion);	
                
                 
                    $r->execute();
    
                 
                        return "Registro modificado";	
                    
                }catch(Exception $e){
                    return $e->getMessage();
                }
                    
                }
                else{
                    return "cedula no registrada";
                }
        
    
    
    
    
    
    
    
    
            }
    

public function consultar(){
    $co = $this->conecta();
		
		$co->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        try{
			
			
			$resultado = $co->prepare("Select * from docentes");
			$resultado->execute();
           $respuesta="";

            foreach($resultado as $r){
                
                $respuesta=$respuesta."<th>".$r['cedula']."</th>";
                $respuesta=$respuesta."<th>".$r['nombre']."</th>";
                $respuesta=$respuesta."<th>".$r['apellido']."</th>";
                $respuesta=$respuesta."<th>".$r['categoria']."</th>";
                $respuesta=$respuesta."<th>".$r['fecha_nacimiento']."</th>";
                $respuesta=$respuesta."<th>".$r['especializacion']."</th>";
                $respuesta=$respuesta."<th>".$r['profecion']."</th>";
                $respuesta=$respuesta."<th>".$r['edad']."</th>";
                $respuesta=$respuesta."<th>".$r['anos_trabajo']."</th>";
                $respuesta=$respuesta."<th>".$r['correo']."</th>";
                $respuesta=$respuesta."<th>".$r['direccion']."</th>";
                $respuesta=$respuesta.'<th>
                <a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="modificar(`'.$r['cedula'].'`)">
               <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
               </a>
               <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"  onclick="eliminar(`'.$r['cedula'].'`)">
               <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
               </a>
             </th>';
             $respuesta= $respuesta.'</tr>';

            }

           
            return $respuesta;
         
							
							


			
			
		}catch(Exception $e){
			
			return false;
		}
}

    private function existe($cedula){
		
		$co = $this->conecta();
		
		$co->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
		
		try{
			
			
			$resultado = $co->prepare("Select * from docentes where cedula=:cedula");
			
			$resultado->bindParam(':cedula',$cedula);
			$resultado->execute();
			$fila = $resultado->fetchAll(PDO::FETCH_BOTH);
			if($fila){ 

				return true; 
			    
			}
			else{
				
				return false; 
			}
			
		}catch(Exception $e){
			
			return false;
		}
	}


    public function eliminar(){
        $co = $this->conecta();
		$co->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		if($this->existe($this->cedula)){
		

			try {
					$r=$co->prepare("Delete from docentes 
						where
						cedula= :cedula
						");
					$r->bindParam(':cedula',$this->cedula);
					$r->execute();
					return "Registro Eliminado";
                    
			} catch(Exception $e) {
				return $e->getMessage();
			}
			
		

		}
		else{
			return "Cedula no registrada";
		}
    }

}

?>