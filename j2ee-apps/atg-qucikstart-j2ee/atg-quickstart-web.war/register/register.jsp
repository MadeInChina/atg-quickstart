<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
<%@taglib prefix="dsp" uri="http://www.atg.com/taglibs/daf/dspjspTaglib1_0"%>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />
<dsp:importbean bean="/atg/dynamo/droplet/ErrorMessageForEach"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>User Registration Page</title>
</head>
 
<body>
<dsp:page>
    <dsp:form id="registerForm" method="post" action="register.jsp">
            <div>
                <div>Please fill all the fields given below and click register button.</div>
                <br/>
                <table>
                    <tbody>
                        <tr>
                            <td width="150">First Name *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.firstName" maxlength="30" size="25" type="text" required="true"  /></td>
                        </tr>
 
                        <tr>
                            <td>Last Name *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.lastName" maxlength="30" size="25" type="text" required="true"  /></td>
                        </tr>
 
                        <tr>
                            <td>Username *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.login" maxlength="30" size="25" type="text" required="true"  /></td>
                        </tr>
 
                        <tr>
                            <td>Password *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.password" maxlength="30" size="25" type="password" required="true"  /></td>
                        </tr>
 
                        <tr>
                            <td>Confirm Password *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.password" maxlength="30" size="25" type="password" required="true"   /></td>
                        </tr>
 
                        <tr>
                            <td>Email ID *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.email" maxlength="30" size="25" type="password" required="true"   /></td>
                        </tr>
 
                        <tr>
                            <td>Gender *</td>
                            <td>
                                <dsp:input bean="ProfileFormHandler.value.gender"  type="radio" required="true" >Male </dsp:input>
                                <dsp:input bean="ProfileFormHandler.value.gender" type="radio" required="true" >Female </dsp:input>
                            </td>
                        </tr>
 
                        <tr>
                            <td colspan="2">
                                <dsp:input bean="ProfileFormHandler.create" type="submit" value="Register" />
 
                                <dsp:input bean="ProfileFormHandler.createSuccessURL" type="hidden" value="../login/login.jsp" />
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
        </dsp:page>
    </body>
</html>