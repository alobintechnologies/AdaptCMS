<?php

class CaptchaHelper extends AppHelper
{
    /**
     * Name of the helper
     * 
     * @var string
     */
    public $name = 'Captcha';

    public $helpers = array(
        'Form'
    );

    /**
     * Kind of ugly, loads the SecurImage captcha
     *
     * @param null $name
     * @return string
     */
    public function form($name = null)
    {
        $input_options = array(
            'type' => 'text',
            'class' => 'captcha',
            'size' => 12,
            'maxlength' => 8,
            'div' => true,
            'label' => false
        );

        if (empty($name))
        {
            $input_options['name'] = 'captcha';
        }
        else
        {
            $input_options['name'] = $name;
        }

        /*return '<img id="siimage" style="border: 1px solid #000; margin-right: 15px" src="'. $this->params->webroot.'libraries/captcha/securimage_show.php?sid='.md5(uniqid()).'" alt="CAPTCHA Image" align="left">
<object type="application/x-shockwave-flash" data="'. $this->params->webroot.'libraries/captcha/securimage_play.swf?audio_file='. $this->params->webroot.'libraries/captcha/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000&amp;icon_file='. $this->params->webroot.'libraries/captcha/images/audio_icon.png" height="16" width="16">
<param name="movie" value="'. $this->params->webroot.'libraries/captcha/securimage_play.swf?audio_file='. $this->params->webroot.'libraries/captcha/securimage_play.php&amp;bgColor1=#fff&amp;bgColor2=#fff&amp;iconColor=#777&amp;borderWidth=1&amp;borderColor=#000&amp;icon_file='. $this->params->webroot.'libraries/captcha/images/audio_icon.png">
</object>
&nbsp;
<a tabindex="-1" style="border-style: none;" href="#" title="Refresh Image"><img class="refresh" src="'. $this->params->webroot.'libraries/captcha/images/refresh.png" alt="Reload Image" onclick="this.blur()" align="bottom" border="0" width="16" height="16"></a><br />
<strong>Enter Code*:</strong><br />' . $this->Form->input('captcha', $input_options);*/
	// changed the return without the audio
	return '<img id="siimage" style="border: 1px solid #000;" src="'. $this->params->webroot.'libraries/captcha/securimage_show.php?sid='.md5(uniqid()).'" alt="CAPTCHA Image" align="left" />&nbsp;

<a tabindex="-1" style="border-style: none;" href="#" title="Refresh Image"><img class="refresh" src="'. $this->params->webroot.'libraries/captcha/images/refresh.png" alt="Reload Image" onclick="this.blur()" align="bottom" border="0" width="16" height="16"></a><br />
<strong>Enter Code*:</strong><br />' . $this->Form->input('captcha', $input_options);
    }
}