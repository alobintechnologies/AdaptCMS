{{ addCrumb('Login', url('login')) }}
{{ addCrumb('Forgot Password', null) }}


<div class="col-md-3 col-sm-2 col-xs-12">
	{{ partial('Menus\guest_user_menus') }}
</div>
<div class="col-xs-12 col-sm-8 col-md-6 clearfix">
	<fieldset>
		<h2>Forgot your password</h2>
		<hr class="colorgraph">
		{% if not empty(activate) %}
		    <p>Check your email and click on the link - from there you will enter in a new password and can then login into your account.</p>
		{% else %}
			<p>Please enter your e-mail address or username and a link will be sent to you. Follow those instructions to change your password.</p>

		    {{ form.create('', array('class' => 'admin-validate')) }}

			{{ form.input('username', array('required' => false, 'class' => 'form-control')) }}

			<h4>OR</h4>

			{{ form.input('email', array('class' => 'email', 'required' => false, 'class' => 'form-control')) }}

			<label>Captcha</label>

			<div id="captcha">
			    {{ captcha.form('data[User][captcha]') }}
			</div>
			{{ form.end('Submit') }}
		{% endif %}
	</fieldset>
</div>
<div class="col-md-3 col-sm-2 col-xs-12">	
</div>

<div class="clearfix"></div>
