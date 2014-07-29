<%@ tag body-content="empty"%>
<%@ attribute name="dccId" required="true" type="java.lang.String" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<%-- set a DEFAULT ftp.url property --%>
<c:choose>
<c:when test="${fn:length(WEB_PROPERTIES['ftp.url']) gt 10 }" >
<c:set var="ftpURL" value="${WEB_PROPERTIES['ftp.url']}" />
</c:when>
<c:otherwise>
<c:set var="ftpURL" value="http://data.modencode.org/cgi-bin/findFiles.cgi?download=" />
</c:otherwise>
</c:choose>

<!--
<a href="${ftpURL}/download_tarball/${fn:substringAfter(dccId, 'modENCODE_')}.tgz?structured=true"
         title="Download all data files (tarball)" class="value extlink">
<img class="exportDiv" style="position:relative; top:3px;" border="0" src="model/images/download.png" height="16" width="16"/>
         <c:out value="Download ALL data files" />
         </a>
<br>
-->

 <a href="http://data.modencode.org/cgi-bin/findFiles.cgi?download=${fn:substringAfter(dccId, 'modENCODE_')}"
         title="Download submission ${dccId} data files" class="value extlink" target="_new">
         <c:out value="Download data files" />
         </a>

