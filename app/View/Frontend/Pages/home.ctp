<style type="text/css">
	.breadcrumb {
		display: none;
	}
</style>
<div class="row">
	<div class="col-md-4">
		 <div style="height:280px" >
			 <h2>&ldquo;Photography helps people to see&rdquo;,</h2>
			 <h4 class="theme-color">Berenice Abbott</h4>
			 <h6> Photographer, 1898-1991</h6>
		</div>
		<div class="info-sm-bar pxp-bg-color theme-wt-color">What our clients say</div>
	</div>
	<div class="col-md-8 "> 
		<div class="border_box">
			<div class="box_skitter box_skitter_large">
				<ul>
					<li><a href="#cube"><?php echo $this->Html->image('hp.jpg', array('class' => 'cube full-size')); ?></a><div class="label_text"><p>cube</p></div></li>
					<li><a href="#cubeRandom"><?php echo $this->Html->image('bottcher_banner.jpg', array('class' => 'cubeRandom full-size')); ?></a><div class="label_text"><p>cubeRandom</p></div></li>
					
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-4">
		{{ partial('Blocks/home_latest_news', array('data' => $block_data['latest-news'])) }}
		{{ partial('Banners/home_left_banner') }}
	</div>
	<div class="col-md-4">
		 {{ partial('Blocks/home_latest_products') }}
		 {{ partial('Blocks/home_latest_videos') }}
		 {{ partial('Blocks/home_latest_events') }}
	</div>
	<div class="col-md-4">
		{{ partial('Blocks/home_services_of_week') }}		
		{{ partial('Banners/home_right_banner') }}
	</div>
</div>
{{ partial('Blocks/sponsors', array('data' => 'servicesweek.jpg')) }}