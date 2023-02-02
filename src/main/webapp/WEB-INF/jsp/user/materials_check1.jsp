<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>物资捐赠管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/components/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
	</head>
	<body class="no-skin">
		<div class="main-container ace-save-state" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="page-header">
							<h1>以下物资审核已通过：</h1>
							<br />
							<span style="color: red">请尽快将物资送到物资中心，待管理员确认成功捐赠后，您的物资才成功捐赠！</span>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
											<tr>
												<th>序号</th>
												<th>物资名称</th>
												<th>捐赠人</th>
												<th>物资类型</th>
												<th>生产日期</th>
												<th>审核日期</th>
												<th>捐赠日期</th>
											</tr>
											</thead>
											<tbody>
											<c:choose>
												<c:when test="${not empty MaterialsList }">
													<c:forEach items="${MaterialsList }" varStatus="index" var="material">
														<tr>
														<td>
																${index.count }
															<input type="hidden" name="m_id" value="${material.mId }" />
														</td>
														<td> ${material.mMaterialName }</td>
														<td>${material.mDonator }</td>
														<td>${material.mMaterialType }</td>
														<td>${material.mFactdate}</td>
														<td>${material.mCheckdate }</td>
														<td>${material.mDate }</td>
														</c:forEach>
														</tr>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="6"><h1>您还未捐赠过物资！</h1></td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
								</div>
								<div class="hr hr-18 dotted hr-double"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>