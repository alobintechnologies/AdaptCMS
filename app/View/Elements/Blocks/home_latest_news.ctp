<h3 class="theme-color-bold">Latest News</h3>

{% if empty(data) %}
	No Latest News.
{% endif %}
<div class="list-group">
{% loop news in data %}
	{{ image($news['Data']['news-image']) }}
	{{ news['Data']['summary'] }}
	<a href="#" class="list-group-item">
		 <p class="list-group-item-text "> {{ news['Article']['title'] }} </p>
	</a>
{% endloop %}
</div>
<a href="{{ url('category_view', 'news') }}" class="btn btn-primary btn-block btn-sm">&raquo; Click here for more new stories.</a>