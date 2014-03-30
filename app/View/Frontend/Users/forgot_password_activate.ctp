{{ addCrumb('Login', url('login')) }}
{{ addCrumb('Forgot Password Activation', null) }}

<h2>
    Forgot Password - Activate
</h2>

<p>
    Please fill out the below form to update your password. If you have not submitted a request, <a href="{{ url('user_forgot_password') }}">click here</a>
    to submit a forgot password request.
</p>

{{ form.create('', array('class' => 'admin-validate')) }}

    {{ form.input('username', array(
        'type' => 'text', 
        'class' => 'required'
    )) }}

    {{ form.input('activate_code', array(
        'type' => 'text', 
        'class' => 'required'
    )) }}

    {{ form.input('password', array(
        'type' => 'password',
        'label' => 'New Password',
        'class' => 'required'
    )) }}
    {{ form.input('password_confirm', array(
        'type' => 'password', 
        'class' => 'required'
    )) }}

    <label>Captcha</label>

    <div id="captcha">
        {{ captcha.form('data[User][captcha]') }}
    </div>
{{ form.end('Submit') }}