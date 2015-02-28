<link rel="stylesheet" href="<?php echo $config_sys['site_url']._DS; ?>templates<?php echo _DS.$config_sys['template']._DS; ?>style.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $config_sys['site_url']._DS; ?>templates<?php echo _DS.$config_sys['template']._DS; ?>/font/stylesheet.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $config_sys['site_url']._DS; ?>templates<?php echo _DS.$config_sys['template']._DS; ?>slider.css" type="text/css" />
<script src="<?php echo $config_sys['site_url']._DS; ?>templates<?php echo _DS.$config_sys['template']._DS."js"._DS; ?>jquery.slider.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready( function() {
		$('#slider').nivoSlider({
			effect:'sliceDown',
			slices:15,
			animSpeed:700,
			pauseTime:5000,
			startSlide:0,
			directionNav:false,
			directionNavHide:false,
			controlNav:false,
			controlNavThumbs:false,
			keyboardNav:false,
			pauseOnHover:true,
			manualAdvance:false,
			captionOpacity:0.8
		});
    });
</script>