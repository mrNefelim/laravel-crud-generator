<?php

require_once 'Template.php';
require_once 'CrudGenerator.php';


if (empty($argv[1])) {
    die('Первый параметр - имя пакета - является обязательным' . PHP_EOL);
}

$crudGenerator = new CrudGenerator($argv[1], $argv[2], $argv[3]);
$crudGenerator->run();