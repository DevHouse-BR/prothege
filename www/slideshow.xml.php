<?
echo('<?xml version="1.0" encoding="utf-8"?>' . chr(10));
?>
<slideshow>	
	<preferences kenBurnsMode="random" controlAlpha="50" controlAutoHide="true" controlDelay="3" controlLineWidth="2" controlRoundedCorners="10"/>
	<album thumbnail="images/slideshow/album.jpg" title="Núcleo do Evento" description="Amostra de Imagens" imagePath="images/slideshow" thumbnailPath="images/slideshow">
<?	
$d = dir("images/slideshow");
while (false !== ($arquivo = $d->read())) {
	if(($arquivo != ".") && ($arquivo != "..") && ($arquivo != "album.jpg"))
    echo(chr(9) . chr(9) . '<img src="' . $arquivo.'"/>' . chr(10));
}
$d->close();
?>	</album>	
</slideshow>