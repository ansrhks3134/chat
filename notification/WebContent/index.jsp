<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title>Desktop Notification 예제</title>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <script
    type="text/javascript"
    src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.12.0/jquery.js"
    
  ></script>

    <link rel="stylesheet" type="text/css" href="/css/result-light.css">

      <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">

  <style id="compiled-css" type="text/css">
      body {
    padding: 2em;
}
  </style>


  <!-- TODO: Missing CoffeeScript 2 -->

  <script type="text/javascript">//<![CDATA[

    window.onload=function(){
      
var requestPermissionButton = $("#requestPermissionButton");
var notificationButton = $("#notificationButton");
var notificationMessage = $("#notificationMessage");
var iconDataURI = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAKBJREFUeNpiYBjpgBFd4P///wJAaj0QO9DEQiAg5ID9tLIcmwMYsDgABhqoaTHMUHRxpsGYBv5TGqTIZsDkYWLo6gc8BEYdMOqAUQeMOoAqDgAWcgZAfB9EU63SIAGALH8PZb+H8v+jVz64KiOK6wIg+ADEArj4hOoCajiAqMpqtDIadcCoA0YdQIoDDtCqQ4KtBY3NAYG0csQowAYAAgwAgSqbls5coPEAAAAASUVORK5CYII=";

//데스크탑 알림 권한 요청 버튼을 누르면,
requestPermissionButton.on("click", function () {
	//데스크탑 알림 권한 요청
    Notification.requestPermission(function (result) {

        //요청을 거절하면,
        if (result === 'denied') {
            return;
        }
        //요청을 허용하면,
        else {
            //데스크탑 알림 권한 요청 버튼을 비활성화
            requestPermissionButton.attr('disabled', 'disabled');
            //데스크탑 메시지 입력폼을 활성화
            notificationMessage.removeAttr('disabled');
            //데스크탑 메시지 요청 버튼을 활성화
            notificationButton.removeAttr('disabled');
            return;
        }
    });
});


//데스크탑 알림 버튼을 누르면,
notificationButton.on("click", function () {
    var message = notificationMessage.val();
    
    //메시지를 입력한 경우에만,
    if (message !== null && message.length > 0) {
        
        var options = {
            body: message,
            icon: iconDataURI
        }
       
        //데스크탑 알림 요청
        var notification = new Notification("데스크탑 알림 타이틀", options);
        
        //알림 후 5초 뒤,
        setTimeout(function () {
            //얼람 메시지 닫기
            notification.close();
        }, 5000);
    }
});


    }

  //]]></script>

</head>
<body>
    <button id="requestPermissionButton" class="btn btn-warning btn-lg btn-block">데스크탑 알림 권한 요청</button>
<hr />
<div id="notificationBlock" class="form-group">
    <label class="control-label">알림 메시지</label>
    <div class="input-group">
        <span class="input-group-addon">메시지</span>
        <input id="notificationMessage" type="text" class="form-control" disabled/>
        <span class="input-group-btn">
            <button id="notificationButton" class="btn btn-info" type="button" disabled>알림</button>
        </span>
    </div>
</div>

  
  <script>
    // tell the embed parent frame the height of the content
    if (window.parent && window.parent.parent){
      window.parent.parent.postMessage(["resultsFrame", {
        height: document.body.getBoundingClientRect().height,
        slug: "232ssuvh"
      }], "*")
    }

    // always overwrite window.name, in case users try to set it manually
    window.name = "result"
  </script>
</body>
</html>
