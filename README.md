##consulta para el pdo obtenienod todos los equipos de la bbdd
<?php
    include_once __DIR__."/dao/DAOFactory.php";
    $factory = DAOFactory::getInstance();
    $pdo = $factory->getConnection();
    $partidos = $pdo->query("select * from equipos")->fetchAll();
    var_dump($partidos)
?>

<p>hola</p>