{{ addCrumb($category['title'], null) }}

{{ setTitle($category['title']) }}

<div class="row">
	<div class="col-md-3 col-sm-3">
		{{ partial('Menus\accordion_menu') }}
	</div>
	<div class="col-md-6 col-sm-6">
		<div class="panel panel-default">
		      <div class="panel-heading">
			<h4 class="panel-title">{{ category['title'] }}</h4>
		      </div>
		      <div class="panel-body">
			{% if empty(articles) %}
				<p>No News Found</p>
			{% else %}
				{% loop article in articles %}
					<div class="news clearfix">
						<a href="{{ url('article_view', $article) }}"><h4>{{ article['Article']['title'] }}</h4></a>
						<p class="lead">
							@ <small><em>{{ time(article['Article']['created']) }}</em></small>
						</p>
						<div class="row">
						<div class="col-md-2 col-sm-3 col-xs-3">
						{{ image($article['Data']['news-image'], array('style' => 'width:100%;')) }}
						</div>					
						{% if not empty(article['Data']['short-desc']) %}
						<div class="col-md-10 col-sm-9 col-xs-9">
						{{ article['Data']['short-desc'] }}
						</div>
						{% endif %}
						</div>
						<span class="pull-left">
						    <a href="{{ url('article_view', $article) }}" class="btn btn-primary">Read More</a>
						    <span style="margin-left: 10px">
							<i class="icon icon-comment"></i>&nbsp;
								<a href="{{ url('article_view', $article) }}#comments">{{ article['Comments'] }} Comments</a>
						    </span>
						    <span style="margin-left: 10px">
							<i class="icon-user"></i>&nbsp;
							Posted by <a href="{{ url('user_profile', $article) }}">{{ article['User']['username'] }}</a>
						    </span>
						</span>
						<span class="pull-right">
							{% if not empty(article['Article']['tags']) %}
									{% loop tag in article['Article']['tags'] %}
								<a href="{{ url('article_tag', $tag) }}" class="tags">
									<span class="btn btn-success">{{ tag }}</span>
								</a>
							{% endloop %}
							{% endif %}
						</span>
					</div>
					<hr>
				{% endloop %}
			{% endif %}

			{{ partial('pagination') }}
		      </div>
		</div> <!-- news panel end -->		
	</div>
	<div class="col-md-3 col-sm-3">
	{{ partial('Banners/home_right_banner', array('data' => 'serviceside.jpg')) }}
	</div>
</div> <!-- /end of news row -->