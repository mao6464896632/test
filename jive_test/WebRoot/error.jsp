<%--
  -
  - $RCSfile: error.jsp,v $
  - $Revision: 1.16 $
  - $Date: 2003/05/02 16:09:15 $
  -
--%>

<%@ include file="global.jsp" %>

<%@ taglib uri="webwork" prefix="ww" %>
<%@ taglib uri="jivetags" prefix="jive" %>

<jsp:include page="header.jsp" flush="true" />

<div style="width:960px; margin:0px auto;">

<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr valign="top">
    <td width="98%">

        <%-- Forum name and brief info about the forum --%>

        <p class="jive-page-title">
        <%-- Community Forums Error --%>
        <jive:i18n key="error.title" />
        </p>

    </td>
    <td width="1%"><img src="images/blank.gif" width="10" height="1" border="0"></td>
    <td width="1%">

        <%@ include file="accountbox.jsp" %>

    </td>
</tr>
</table>

<br><br>

<ww:iterator value="errors">
    <li><ww:property />
</ww:iterator>

<ww:if test="hasErrorMessages == true">

    <%--Error: --%>
    <jive:i18n key="global.error" /><jive:i18n key="global.colon" />

    <ul>
        <ww:iterator value="errorMessages" status="'status'">
            <li><ww:property />
        </ww:iterator>
    </ul>

</ww:if>
<ww:else>

    <%-- A general error occurred. --%>
    <jive:i18n key="error.general_error" />

</ww:else>

</div>

<jsp:include page="footer.jsp" flush="true" />