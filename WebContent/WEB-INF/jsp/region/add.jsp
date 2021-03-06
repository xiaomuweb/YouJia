<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<html>
	<head>
		<title></title>
		<link type="text/css" rel="stylesheet" href="${basePath}/css/admin.css"/>
		<script type="text/javascript" src="${basePath}/datePicker/WdatePicker.js"></script>		
	</head>
	<body>
		<div class="body-box">
			<div class="rhead">
				<div class="rpos">当前位置： ${currentPosition}</div>
				<form class="ropt" method="post">
					<input type="button" value=" 返 回 " onclick="history.back();"/>
				</form>
				<div class="clear"></div>
			</div>
			<form method="post" action="region_save.do" id="myForm">
				<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">名&nbsp;&nbsp;&nbsp;&nbsp;称：</td>
						<td width="80%" class="pn-fcontent"><input type="text" name="region.name"/></td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">开始时间：</td>
						<td width="80%" class="pn-fcontent"><input type="text" name="region.startTime" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" /></td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">结束时间：</td>
						<td width="80%" class="pn-fcontent"><input type="text" name="region.endTime" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" /></td>
					</tr>										
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">状&nbsp;&nbsp;&nbsp;&nbsp;态：</td>
						<td width="80%" class="pn-fcontent">
							<select name="region.state">
				  				<option value="0">未开始</option>
				  				<option value="1">海选</option>
				  				<option value="2">决赛</option>
				  				<option value="3">结束</option>
				  			</select>
						</td>
					</tr>
					<tr>
						<td width="20%" class="pn-flabel pn-flabel-h">说明：</td>
						<td width="80%" class="pn-fcontent">
							<textarea rows="5" cols="30" name="region.remark"></textarea>
						</td>
					</tr>					
					<tr>
						<td colspan="2" class="pn-fbutton">
							<input type="submit" value=" 保 存 "/> &nbsp;
						<input type="reset" value=" 重 置 "/></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>