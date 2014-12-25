<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleWebServicesProxyid" scope="session" class="com.main.WebServicesProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleWebServicesProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleWebServicesProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleWebServicesProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.main.WebServices getWebServices10mtemp = sampleWebServicesProxyid.getWebServices();
if(getWebServices10mtemp == null){
%>
<%=getWebServices10mtemp %>
<%
}else{
        if(getWebServices10mtemp!= null){
        String tempreturnp11 = getWebServices10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String login_2id=  request.getParameter("login18");
            java.lang.String login_2idTemp = null;
        if(!login_2id.equals("")){
         login_2idTemp  = login_2id;
        }
        String password_3id=  request.getParameter("password20");
            java.lang.String password_3idTemp = null;
        if(!password_3id.equals("")){
         password_3idTemp  = password_3id;
        }
        %>
        <jsp:useBean id="com1main1AuthenticateInput_1id" scope="session" class="com.main.AuthenticateInput" />
        <%
        com1main1AuthenticateInput_1id.setLogin(login_2idTemp);
        com1main1AuthenticateInput_1id.setPassword(password_3idTemp);
        java.lang.String authenticate13mtemp = sampleWebServicesProxyid.authenticate(com1main1AuthenticateInput_1id);
if(authenticate13mtemp == null){
%>
<%=authenticate13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(authenticate13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>