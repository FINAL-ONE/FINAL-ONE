<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="contact form example">
  <title>Contact Form Example</title>
</head>
<style>
body {
  margin: 2em;
  padding: 0 50px;
}

textarea {
  width: 100%;
}
.content-head {
  font-weight: 400;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  margin: 2em 0 1em;
}
.is-center {
  text-align: center;
}
#sendBtn {
  color: white;
  border-radius: 4px;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
  background: #fe6666;
}
.button-xlarge {
  font-size: 125%;
}
button {
  float: right;
}
#name, #email {
  width: 50%;
}
.honeypot-field {
  display:
}


</style>
<body>
  <h2 class="content-head is-center">awesome</h2><br>

<!-- START HERE -->
   <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
   <!-- Style The Contact Form How Ever You Prefer -->
   <link rel="stylesheet" href="style.css">

  <form class="gform pure-form pure-form-stacked" method="POST" data-email="example@email.net"
  action="https://script.google.com/macros/s/AKfycbzexFA7z45S92RlejeSohws9Lg7nvmfULqio9Cwsw/exec">
    <!-- change the form action to your script url -->

    <div class="form-elements">
      <fieldset class="pure-group">
        <label for="name">성함: </label>
        <input id="name" name="name" placeholder="Name" />
      </fieldset>

      <fieldset class="pure-group">
        <label for="message">문의사항: </label>
        <textarea id="message" name="message" rows="10"
        placeholder="Message"></textarea>
      </fieldset>

      <fieldset class="pure-group">
        <label for="email">이메일 주소:</label>
        <input id="email" name="email" type="email" value=""
        required placeholder="Email Address"/>
      </fieldset>

      <button class="button-success pure-button button-xlarge" id= "sendBtn">
        <i class="fa fa-paper-plane"></i>&nbsp;Send</button>
    </div>

    <!-- Customise the Thankyou Message People See when they submit the form: -->
    <div class="thankyou_message" style="display:none;">
      <h2><br><br>당사에 문의해주셔서 감사합니다.<br>보내주신 문의사항이 성공적으로 접수되었습니다.<br> 답변은 업무일 기준으로 3일 이내에 보내드립니다.</h2>
    </div>


<div style="display:none" class="thankyou_message">
 <!-- You can customize the thankyou message by editing the code below -->
 <h2><br><br>당사에 문의해주셔서 감사합니다.<br>보내주신 문의사항이 성공적으로 접수되었습니다.<br> 답변은 업무일 기준으로 3일 이내에 보내드립니다.</h2>
</div>

  </form>

  <!-- Submit the Form to Google Using "AJAX" -->
  <script data-cfasync="false" src="form-submission-handler.js"></script>
<!-- END -->

<script data-cfasync="false" type="text/javascript"
src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js"></script>
</body>
</html>