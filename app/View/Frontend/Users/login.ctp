{{ addCrumb('Login', null) }}

<div class="col-md-3 col-sm-2 col-xs-12">
	{{ partial('Menus\guest_user_menus') }}
</div>
<div class="col-xs-12 col-sm-8 col-md-6 clearfix">
	{{ form.create() }}
		<fieldset>
			<h2>Please Sign In</h2>
			<hr class="colorgraph">
			<div class="form-group">
				{{ form.input('username', array('class' => 'form-control input-lg', 'placeholder' => 'Username')) }}
			</div>
			<div class="form-group">
				{{ form.input('password', array('class' => 'form-control input-lg', 'placeholder' => 'Password')) }}
			</div>
			<span class="button-checkbox">
				<button type="button" class="btn" data-color="info">Remember Me</button>
  			        <input type="checkbox" name="remember_me" id="remember_me" checked="checked">
				<a href="{{ url('user_forgot_password') }}" class="btn btn-link pull-right">Forgot Password?</a>
			</span>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
					<a href="{{ url('register') }}" class="btn btn-lg btn-primary btn-block">Register</a>
				</div>
			</div>
		</fieldset>
	{{ form.end() }}
	{% if not empty(this->Facebook) %}
	<h1>3rd Party Login</h1>

	<p>
		{{ facebook.login }}
	</p>
	<p>
		{% if current_user('login_type') && current_user('login_type') == 'facebook' %}
			{{ facebook.logout }}
		{% endif %}
	</p>
{% endif %}
</div>	
<div class="col-md-3 col-sm-2 col-xs-12">	
</div>

<div class="clearfix"></div>