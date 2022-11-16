<?php

$title = 'CV';
$description = 'Lire le CV';

ob_start();

?>

<embed src="public/documents/Resume_Addiella_AMOUZOUN.pdf" width=100% height=1400 type='application/pdf'/>

<?php

$content = ob_get_clean();
include __DIR__ . "/../template.php";
?>
