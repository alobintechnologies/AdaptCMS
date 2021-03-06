<!DOCTYPE html>
{% if not empty(this->Facebook) %}
{{ facebook.html() }}
{% else %}
<html lang="en"> 
{% endif %}
<head>
	{{ html.charset() }}
	<title>
		{{ sitename }} | {{ title_for_layout }}
	</title>

	<?= $this->Html->meta('favicon.ico', $this->webroot . 'img/favicon.ico', array('type' => 'icon')) ?>

	{{ headers }}

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="apple-touch-icon" href="{{ webroot }}img/apple-touch-icon.png" />

	<!-- Le styles -->
	{{ css("bootstrap-default.min") }}
	<style type="text/css">
		body {			
			padding-bottom: 40px;
		}

		.sidebar-nav {
			padding: 9px 0;
		}
	</style>

	{{ css("font-awesome.min") }}
	{{ css("style") }}
	{{ css("plugins/skitter/skitter.styles") }}

	<!--[if lt IE 9]>
	{{ js('html5.min') }}
	<![endif]-->
	<!--[if IE 7]>
	{{ css("font-awesome-ie7.min") }}
	<![endif]-->
</head>

<body>
<!--start: Header -->
<header class="page-header">		
	<nav class="navbar navbar-fixed-top navbar-default header-navbar" role="navigation">
	<!--start: Container -->				
	<div class="container">
	    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
		    <span class="sr-only">Toggle navigation</span>
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		</button>
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex2-collapse">
		    <span class="sr-only">Toggle navigation</span>
		    <span class="glyphicon glyphicon-th-list"></span>
		</button>
		<a href="{{ webroot }}" class="navbar-brand">{{ image('logo.png') }}</a>		    </div>
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse navbar-ex1-collapse">		    			
		<ul class="nav navbar-nav navbar-right cl-effect-21" id="top-menu">
		    <li class="active"><a href="{{ webroot }}">Home</a></li>
		    <li><a href="#about">Our Benefits</a></li>
		    <li><a href="{{ url('category_view', array('classifieds')) }}">Products</a></li>
		    <li><a href="{{ url('category_view', array('calendars')) }}">E-News</a></li>
		    <li><a href="{{ url('category_view', array('listings')) }}">Services</a></li>
		    <li><a href="{{ url('category_view', array('news')) }}">Events</a></li>
		    <li><a href="{{ url('category_view', array('videos')) }}">Videos</a></li>
		</ul>
	    </div>
	    <!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
	</nav>					
</header>
<!--end: Header-->
<div class="container">
<div class="row">
	<div class="col-md-12">
		<?php echo $this->Html->image('top_banner.jpg', array('class' => 'top-banner')) ?>
	</div>
	<div class="col-md-12">
		<div class="info-bar "><p class="p-text">Promoting packaging, printing, wide format news, events and equipment online since 2002</p></div>
	</div>
</div>
<div class="wrapper">
	{{ breadcrumbs }}
	<!--nocache-->
	{{ flash }}
	<!--/nocache-->

	{{ content }}	
</div>
<hr />
<footer class="row footerline ">
	<div class="col-md-3 "> 
		Copyright @ All Rights Reserved.	
	</div>
	<div class="col-md-7 col-md-offset-2">
		<ul class="nav nav-list nav-justified">
			<li>terms & conditions <span class="sep">|</span></li> 
			<li>privacy policy <span class="sep">|</span></li> 
			<li>contact us<span class="sep">|</span></li>
			<li>site map<span class="sep">|</span></li>
			<li>link to Pxl Post</li>
		 </ul>
	</div>
</footer>

</div>
</body>
{% if not empty(this->Facebook) %}
{{ facebook.init() }}
{% endif %}
<!-- start: Java Script -->
<?php
echo $this->Html->script('vendor/skitter/jquery.easing.1.3');
echo $this->Html->script('vendor/skitter/jquery.animate-colors-min');
echo $this->Html->script('vendor/skitter/jquery.skitter.min');

?>
<!-- end: Java Script -->
<script type="text/javascript">
	$(window).scroll(function() {
	    if ($(".navbar").offset().top > 50) {
		$(".navbar-fixed-top").addClass("top-nav-collapse");
	    } else {
		$(".navbar-fixed-top").removeClass("top-nav-collapse");
	    }
	});
	jQuery(document).ready(function($) {
	    $(".box_skitter_large").skitter();
	});
</script>
</html>