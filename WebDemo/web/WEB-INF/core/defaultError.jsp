<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp"%>
<html>
  <head>
    <script type="text/javascript">
    function init(){
    	if(${flag}){
    		$("#image").attr("src","${basePath}qrCode/QrCode.jpg");
     		$("#image").show();
    	}else{
    		$("#image").hide();
    	}
    	
    }
    	function wxPay(){
//     		$("#image").attr("src","${basePath}images/testImage.jpg");
//     		$("#image").show();
    		window.location.href = "${basePath}lcc/wxpay!payNative2.action";
    	}
    	function aliPay(){
//     		$("#image").attr("src","${basePath}images/testImage.jpg");
//     		$("#image").show();
    		window.location.href = "${basePath}lcc/alipay!tradePrecreate.action";
    	}
    </script>
  </head>
  
  <body onload="init()">
  错误页面
    <input type="button" value="生成微信二维码" onclick="wxPay()"/>
     <input type="button" value="生成支付宝二维码" onclick="aliPay()"/>
    <br/>
    <img id="image" name="image" alt="图片生成失败" height="400px" width="400px" />
  </body>
</html>
