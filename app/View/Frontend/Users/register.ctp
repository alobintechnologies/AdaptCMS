{{ addCrumb('Register', null) }}
<div class="col-md-3 col-sm-2 col-xs-12">
	{{ partial('Menus\guest_user_menus') }}
</div>
<div class="col-xs-12 col-sm-8 col-md-6 clearfix">
{{ form.create('User', array('class' => 'admin-validate')) }}
	<fieldset>
		<h2>Please Register</h2>
		<hr class="colorgraph">
		<div class="form-group">
			{{ form.input('username', array('class' => 'form-control required', 'placeholder' => 'Username')) }}
			<span id="username_ajax_result"></span>
		</div>
		<div class="form-group">
			{{ form.input('password', array('type' => 'password', 'class' => 'required form-control ', 'placeholder' => 'Password')) }}
		</div>
		<div class="form-group">
			{{ form.input('password_confirm', array('type' => 'password', 'class' => 'required form-control ', 'placeholder' => 'Confirm Password')) }}
		</div>
		<div class="form-group">
			{{ form.input('email', array('type' => 'password', 'class' => 'required email form-control ', 'placeholder' => 'Confirm Password')) }}
		</div>
		{{ form.hidden('last_reset_time', array('value' => $this->Time->format('Y-m-d H:i:s', time()) )) }}
	
		{% if not empty(security_questions) && !empty($security_options) %}
			{{ form.input('security_question_hidden', array(
				'options' => $security_options,
				'label' => false,
				'div' => false,
				'style' => 'display:none'
			)) }}

			{% for 1,security_questions %}
				{{ form.input('Security.' . $i . '.question', array(
					'empty' => '- choose -',
					'class' => 'required security-question form-control',
					'options' => $security_options,
					'label' => 'Security Question ' . $i
				)) }}
				<div id="Security{{ i }}Question" style="display: none">
					{{ form.input('Security.' . $i . '.answer', array(
						'class' => 'required security-answer form-control',
						'label' => 'Security Answer ' . $i
					)) }}
				</div>
			{% endfor %}
		{% endif %}
	
	<hr/>
	{% if not empty(captcha_setting) %}
		<div id="captcha" class="input text form-group">
			{{ captcha.form() }}
		</div>
	{% endif %}
	<div class="clearfix"></div>
	<hr/>
	<div class="row">
		<div class="col-xs-6 col-sm-6 col-md-6">
			<input type="submit" class="btn btn-lg btn-success btn-block" value="Register" id="submit">
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<a href="{{ url('login') }}" class="btn btn-lg btn-primary btn-block">Sign In</a>
		</div>
	</div>

{{ form.end() }}

{% if not empty(this->Facebook) %}
	<h1>3rd Party Signup</h1>

	{{ facebook_registration }}
{% endif %}
</div>
<div class="col-md-3 col-sm-2 col-xs-12">	
</div>
<div class="clearfix"></div>