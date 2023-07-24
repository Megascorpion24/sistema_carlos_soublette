<?php
class datos{
	private $ip = "localhost";
    private $bd = "colegiocarlossoublette";
    private $usuario = "root";
    private $contrasena = "";



    protected function conecta(){

        $pdo = new PDO("mysql:host=".$this->ip.";dbname=".$this->bd."",$this->usuario,$this->contrasena);

        $pdo->exec("set names utf8");
        return $pdo;
    }

    /*public function registrar_bitacora($cedula, $accion)
    {
        $sql = "INSERT INTO bitacora (idUsuario, fechaRegistro, horaRegistro, accion) 
        VALUES(:ced, CURDATE(), CURTIME(), :accion)";

        $stmt = $this->conecta()->prepare($sql);

        $stmt->execute(array(
            ":ced" => $cedula,
            
            ":accion" => $accion
        ));
    }*/
}
?>
