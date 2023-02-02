<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>物资捐赠管理系统</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.js"></script>
	</head>
	<body class="no-skin">
		<div class="main-container ace-save-state" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="page-header"><h1>捐赠物资-信息填写</h1></div>
						<div class="row">
							<div class="col-xs-12">
								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 物资名称 </label>
										<div class="col-sm-9">
											<input type="text" id="m_materialName" name="m_materialName" placeholder="请填写要捐赠的物资名称" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 捐赠人 </label>
										<div class="col-sm-9">
											<input type="text" id="m_donator" name="m_donator" placeholder="请填写捐赠人姓名" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 物资类型 </label>
										<div class="col-sm-9">
											<input type="text" id="m_materialType" name="m_materialType" placeholder="请填写物资类型" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" > 生产日期 </label>
										<div class="col-sm-9">
											<input type="date" id="m_factdate" name="m_factdate" placeholder="请填写物资的生产日期" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button" id="btn_submit" onclick="book_donation()">
												<i class="ace-icon fa fa-check bigger-110"></i>
												提交信息
											</button> &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												取消
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function book_donation() {
				var m_materialName = $('#m_materialName').val();
				var m_donator = $('#m_donator').val();
				var m_materialType = $('#m_materialType').val();
				var m_factdate = $('#m_factdate').val();
				
				if (m_materialName == null || m_materialName == '') {
					alert('请填写物资名称');
					return false;
				}
				
				if (m_donator == null || m_donator == '') {
					alert('请填写捐赠人姓名');
					return false;
				}
				
				if (m_materialType == null || m_materialType == '') {
					alert('请填写物资类型');
					return false;
				}
				
				if (m_factdate == null || m_factdate == '') {
					alert('请选择生产日期');
					return false;
				}
				
				$.ajax({
					type : "post",
					url : "donation_submit",
					data : {mMaterialName:m_materialName,mDonator:m_donator,mMaterialType:m_materialType,mFactdate:m_factdate},
					dataType : 'json',
					success : function(data){ 
						if (data.msg == 'success') {
							alert("添加物资信息成功！您可以在‘首页-物资审核’中查看详情");
							window.location.href="main";
						} else {
							alert("添加失败");
						}
					},
					error : function() {
						alert('添加失败');
					}
				});
			}
		</script>
	</body>
</html>