<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglib.jspf"%>
<!DOCTYPE html>
<!--
  - Copyright(c)2007 by codelabor.org
  - 
  - Licensed under the Apache License, Version 2.0 (the "License");
  - you may not use this file except in compliance with the License.
  - You may obtain a copy of the License at
  - 
  -     http://www.apache.org/licenses/LICENSE-2.0
  - 
  - Unless required by applicable law or agreed to in writing, software
  - distributed under the License is distributed on an "AS IS" BASIS,
  - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  - See the License for the specific language governing permissions and
  - limitations under the License.
  -->
<!--
  - Author(s): Sang Jae Shin
  -->
<html>
<head>
<meta charset="UTF-8">
<title>Function Example <system:properties key="servlet.container.id" /></title>
<%@ include file="/WEB-INF/jspf/script.jspf"%>
<%@ include file="/WEB-INF/jspf/style.jspf"%>
<%@ include file="/WEB-INF/jspf/example/favicon.jspf"%>
</head>
<body class="composite">
	<%@ include file="/WEB-INF/jspf/example/header.jspf"%>
	<div id="breadcrumbs">
		<%@ include file="/WEB-INF/jspf/example/breadcrumb.jspf"%>
	</div>
	<div id="leftColumn">
		<div id="navcolumn">
			<%@ include file="/WEB-INF/jspf/example/navigation.jspf"%>
		</div>
	</div>
	<div id="bodyColumn">
		<div id="contentBox">
			<div class="section">
				<h2>Function Example</h2>
				<%
					pageContext.setAttribute("muliLineTextLF", "1234\nqwer\n가나다라\n");
					pageContext.setAttribute("muliLineTextCR", "1234\rqwer\r가나다라\r");
					pageContext.setAttribute("muliLineTextCRLF", "1234\r\nqwer\r\n가나다라\r\n");
					pageContext.setAttribute("muliLineTextLFCR", "1234\n\rqwer\n\r가나다라\n\r");
					pageContext.setAttribute("muliLineTextLFCRCRLFFCR", "1234\nqwer\n가나다라\n1234\rqwer\r가나다라\r1234\r\nqwer\r\n가나다라\r\n1234\n\rqwer\n\r가나다라\n\r");

					pageContext.setAttribute("LF", "\n");
					pageContext.setAttribute("CR", "\r");
					pageContext.setAttribute("CRLF", "\r\n");
					pageContext.setAttribute("LFCR", "\n\r");
					pageContext.setAttribute("LFCRCRLFLFCR", "(\n|\r|\r\n|\n\r)");
					pageContext.setAttribute("BR", "<br />");
				%>

				<h3>Expression Language</h3>
				<table class="bodyTable">
					<tr class="b">
						<th>before</th>
						<th>after</th>
					</tr>
					<tr class="b">
						<td>1234\nqwer\n가나다라\n</td>
						<td>${muliLineTextLF}</td>
					</tr>
					<tr class="b">
						<td>1234\rqwer\r가나다라\r</td>
						<td>${muliLineTextCR}</td>
					</tr>
					<tr class="b">
						<td>1234\r\nqwer\r\n가나다라\r\n</td>
						<td>${muliLineTextCRLF}</td>
					</tr>
					<tr class="b">
						<td>1234\n\rqwer\n\r가나다라\n\r</td>
						<td>${muliLineTextLFCR}</td>
					</tr>
					<tr class="b">
						<td>1234\nqwer\n가나다라\n1234\rqwer\r가나다라\r1234\r\nqwer\r\n가나다라\r\n1234\n\rqwer\n\r가나다라\n\r</td>
						<td>${muliLineTextLFCRCRLFFCR}</td>
					</tr>					
				</table>
				
				<h3>JSTL Core</h3>
				<h4>c:out</h4>
				<table class="bodyTable">
					<tr class="b">
						<th>before</th>
						<th>after</th>
					</tr>
					<tr class="b">
						<td>1234\nqwer\n가나다라\n</td>
						<td><c:out value="${muliLineTextLF}" /></td>
					</tr>
					<tr class="b">
						<td>1234\rqwer\r가나다라\r</td>
						<td><c:out value="${muliLineTextCR}" /></td>
					</tr>
					<tr class="b">
						<td>1234\r\nqwer\r\n가나다라\r\n</td>
						<td><c:out value="${muliLineTextCRLF}" /></td>
					</tr>
					<tr class="b">
						<td>1234\n\rqwer\n\r가나다라\n\r</td>
						<td><c:out value="${muliLineTextLFCR}" /></td>
					</tr>		
				</table>
				
				<h3>JSTL Function</h3>
				<h4>fn:replace</h4>
				<table class="bodyTable">
					<tr class="b">
						<th>before</th>
						<th>after</th>
						<th>replace</th>
					</tr>
					<tr class="b">
						<td>1234\nqwer\n가나다라\n</td>
						<td>${fn:replace(muliLineTextLF, LF, BR)}</td>
						<td>LF -&gt; BR</td>
					</tr>
					<tr class="b">
						<td>1234\rqwer\r가나다라\r</td>
						<td>${fn:replace(muliLineTextCR, CR, BR)}</td>
						<td>CR -&gt; BR</td>
					</tr>
					<tr class="b">
						<td>1234\r\nqwer\r\n가나다라\r\n</td>
						<td>${fn:replace(muliLineTextCRLF, CRLF, BR)}</td>
						<td>CRLF -&gt; BR</td>
					</tr>
					<tr class="b">
						<td>1234\n\rqwer\n\r가나다라\n\r</td>
						<td>${fn:replace(muliLineTextLFCR, LFCR, BR)}</td>
						<td>LFCR -&gt; BR</td>
					</tr>	
				</table>

				<h4>LF (Unix)</h4>
				${fn:replace(muliLineTextLF, LF, BR)}

				<h4>CR (Mac OS)</h4>
				${fn:replace(muliLineTextCR, CR, BR)}

				<h4>CR+LF (Windows)</h4>
				${fn:replace(muliLineTextCRLF, CRLF, BR)}

				<h4>LF+CR (RISC OS)</h4>
				${fn:replace(muliLineTextLFCR, LFCR, BR)}

				<h3>JSTL Function 2</h3>

				<h4>LF (Unix)</h4>
				${fn:replace(muliLineTextLFCR, LF, BR)}

				<h4>CR (Mac OS)</h4>
				${fn:replace(muliLineTextLFCR, CR, BR)}

				<h4>CR+LF (Windows)</h4>
				${fn:replace(muliLineTextLFCR, CRLF, BR)}

				<h4>LF+CR (RISC OS)</h4>
				${fn:replace(muliLineTextLFCR, LFCR, BR)}

				<h4>LF, CR, CR+LF, LF+CR</h4>
				${fn:replace(muliLineTextLFCRCRLFFCR, LFCRCRLFLFCR, BR)}				

				<h3>Spring Taglib</h3>

				<h4>escapeBody: LF</h4>
				<spring:escapeBody javaScriptEscape="true">${muliLineTextLF}</spring:escapeBody>

				<h4>escapeBody: CR</h4>
				<spring:escapeBody javaScriptEscape="true">${muliLineTextCR}</spring:escapeBody>

				<h4>escapeBody: CRLF</h4>
				<spring:escapeBody javaScriptEscape="true">${muliLineTextCRLF}</spring:escapeBody>

				<h4>escapeBody: LFCR</h4>
				<spring:escapeBody javaScriptEscape="true">${muliLineTextLFCR}</spring:escapeBody>


			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>
</body>
</html>