<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@taglib prefix="dsp" uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_0"%>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />
<dsp:importbean bean="/atg/dynamo/droplet/ErrorMessageForEach"/>
 
<title>ATG Login Page</title>
</head>
<dsp:page>
<body>
    <div>
        <div>ATG out of the box authentication capability.</div>
        <br/>
        <dsp:form formid="loginForm" method="post" >
            <div>
                <div>Please enter your user id and password below</div>
                <table>
                    <tbody>
 
                        <tr>
                            <td width="150">User ID:</td>
                            <td>
                                <dsp:input bean="ProfileFormHandler.value.login" maxlength="30" size="25" type="text" required="true"  />
                            </td>
                        </tr>
 
                         <tr>
                                 <td>Password:</td>
                                <td>
                                    <dsp:input bean="ProfileFormHandler.value.password" maxlength="30" size="25" type="password" required="true"  />
                                </td>
                         </tr>
 
                          <tr>
                              <td>&nbsp;</td>
                              <td>
                                <dsp:input bean="ProfileFormHandler.login" type="submit" value="Log In" />
 
                                <dsp:input bean="ProfileFormHandler.loginSuccessURL" type="hidden" value="myindex.jsp" />
 
                              </td>
                          </tr>
                          <tr>
 
                            <td colspan="2">
                                <ul>
                                    <dsp:droplet name="ErrorMessageForEach">
                                        <dsp:param bean="ProfileFormHandler.formExceptions" name="exceptions"/>
                                        <dsp:oparam name="output">
                                            <li>
                                                <dsp:valueof param="message"/>
                                            </li>
                                        </dsp:oparam>
                                    </dsp:droplet>
                                </ul>
                            </td>
                          </tr>
                    </tbody>
 
                </table>
            </div>
 
        </dsp:form>
    </div>
 
</body>
</dsp:page>
</html>