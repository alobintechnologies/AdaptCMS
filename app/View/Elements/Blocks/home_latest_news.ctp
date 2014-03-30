<h3 class="theme-color-bold">Latest News</h3>

{% if empty(data) %}
	No Latest News.
{% endif %}
<div class="list-group">
{% if not empty(data) %}
	{{ image($data[0]['Data']['news-image'], array('class' => 'full-size')) }}
	<div class="well">
		{{ data[0]['Data']['short-desc'] }}
		<a href="{{ url('article_view', $data[0]) }}">Read more &raquo;</a>
	</div>
{% endif %}
{% loop news in data %}
	<a href="{{ url('article_view', $news) }}" class="list-group-item">
		 <p class="list-group-item-text "> {{ news['Article']['title'] }} </p>
	</a>
{% endloop %}
<a href="{{ url('category_view', 'news') }}" class="btn btn-primary btn-block btn-sm">&raquo; Click here for more new stories.</a>
</div>