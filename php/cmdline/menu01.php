#!/usr/bin/php7.2
#
# Exemplo de menu em php
# para linha de comando
#
<?php
system('clear');
$menu = 9;
while ($menu != 0) {
	echo "*******************\n";
	echo "* Menu em PHP     *\n";
	echo "*******************\n";
	echo "* 1  - Cadastros  *\n";
	echo "* 2  - Processos  *\n";
	echo "* 3  - Relatorios *\n";
	echo "*                 *\n";
	echo "* 99 - Sair       *\n";
	echo "*******************\n";
	echo "> ";
	$menu = fgets(STDIN);
	system('clear');

	switch ($menu) {
	case 1:
		echo "cadastro\n";
		fgets(STDIN);
		system('clear');
		break;
	case 2:
		echo "processo\n";
		fgets(STDIN);
		system('clear');
		break;
	case 3:
		echo "relatorio\n";
		fgets(STDIN);
		system('clear');
		break;
	case 99:
		echo "Sair\n";
		exit;
		break;
	default:
		$menu = 9;
		break;
	}
}
?>
