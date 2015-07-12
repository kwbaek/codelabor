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
<meta charset="UTF-8" />
<!-- Registration Form -->
<title><spring:message code="title.example.validation.hibernate.safeHtml.post" /> <system:properties key="servlet.container.id" /></title>
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
				<!-- Registration Form -->
				<h2>
					<spring:message code="heading.example.validation.hibernate.safeHtml.form" />
				</h2>
				<hr />

				<!-- global errors -->
				<div id="global.errors.area"></div>

				<h2>
					<spring:message code="heading.example.validation.hibernate.safeHtml.whitelistType" />
				</h2>
				<form:form commandName="whitListTypeDto">
					<!-- form errors -->
					<form:errors path="*" />
					<codelaborForm:errors path="*" />

					<table class="bodyTable">
						<tr class="b">
							<!-- stringData1 -->
							<th><label for="stringData1">@SafeHtml(whitelistType=WhiteListType.NONE)</label></th>
							<td><form:input path="stringData1" type="text" placeholder="" /></td>
							<!-- field errors  -->
							<td><form:errors path="stringData1" /></td>
							<td>This whitelist allows only text nodes: all HTML will be stripped.</td>
						</tr>
						<tr class="b">
							<!-- stringData2 -->
							<th><label for="stringData2">@SafeHtml(whitelistType=WhiteListType.SIMPLE_TEXT)</label></th>
							<td><form:input path="stringData2" type="text" placeholder="" /></td>
							<!-- field errors  -->
							<td><form:errors path="stringData2" /></td>
							<td>This whitelist allows only simple text formatting: b, em, i, strong, u. All other HTML (tags and attributes) will be removed.</td>
						</tr>
						<tr class="b">
							<!-- stringData3 -->
							<th><label for="stringData3">@SafeHtml(whitelistType=WhiteListType.BASIC)</label></th>
							<td><form:input path="stringData3" type="text" placeholder="" /></td>
							<!-- field errors  -->
							<td><form:errors path="stringData3" /></td>
							<td>This whitelist allows a fuller range of text nodes: a, b, blockquote, br, cite, code, dd, dl, dt, em, i, li, ol, p, pre, q, small, strike,
								strong, sub, sup, u, ul , and appropriate attributes. Links (a elements) can point to http, https, ftp, mailto, and have an enforced rel=nofollow
								attribute. Does not allow images.</td>
						</tr>
						<tr class="b">
							<!-- stringData4 -->
							<th><label for="stringData4">@SafeHtml(whitelistType=WhiteListType.BASIC_WITH_IMAGES)</label></th>
							<td><form:input path="stringData4" type="text" placeholder="" /></td>
							<!-- field errors  -->
							<td><form:errors path="stringData4" /></td>
							<td>This whitelist allows the same text tags as BASIC, and also allows img tags, with appropriate attributes, with src pointing to http or https.</td>
						</tr>
						<tr class="b">
							<!-- stringData5 -->
							<th><label for="stringData5">@SafeHtml(whitelistType=WhiteListType.RELAXED)</label></th>
							<td><form:input path="stringData5" type="text" placeholder="" /></td>
							<!-- field errors  -->
							<td><form:errors path="stringData5" /></td>
							<td>This whitelist allows a full range of text and structural body HTML: a, b, blockquote, br, caption, cite, code, col, colgroup, dd, dl, dt, em,
								h1, h2, h3, h4, h5, h6, i, img, li, ol, p, pre, q, small, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, tr, u, ul Links do not have an
								enforced rel=nofollow attribute, but you can add that if desired.</td>
						</tr>
						<tr class="b">
							<td colspan="4"><input id="submit" type="submit" value="<spring:message code="button.submit" />" /> <input type="reset"
								value="<spring:message code="button.reset" />" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</div>
	<div class="clear">
		<hr />
	</div>
	<%@ include file="/WEB-INF/jspf/example/footer.jspf"%>


</body>
</html>