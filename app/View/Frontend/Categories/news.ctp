{{ addCrumb($category['title'], null) }}

{{ setTitle($category['title']) }}

<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-6">
		<h3>{{ category['title'] }}</h3>

		{% if empty(articles) %}
			<p>No Articles Found</p>
		{% else %}
			{% loop article in articles %}
				<div class="news clearfix">
					<a href="{{ url('article_view', $article) }}"><h4>{{ article['Article']['title'] }}</h4></a>
					<p class="lead">
						@ <small><em>{{ time(article['Article']['created']) }}</em></small>
					</p>
					{{ image($article['Data']['news-image']) }}
					{{ article['Data']['summary'] }}
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
	<div class="col-md-3">
	{{ partial('Banners/home_right_banner', array('data' => 'serviceside.jpg')) }}
	</div>
</div> <!-- /end of news row -->