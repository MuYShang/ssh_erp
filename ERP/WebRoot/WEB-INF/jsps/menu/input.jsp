<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/Calendar.js"></script>
<script type="text/javascript">
	$(function() {
		
		var allFlag=true;
		var allCheck=function(){
			$("[name=roleUuids]:checkbox").each(function () {
                if($(this).attr("checked")!="checked"){
                	allFlag=false;
                	return;
                }
            });
			if(allFlag) {
				$("#all").attr("checked",true);
			}
			else
				$("#all").attr("checked",false);
			allFlag=true;
		}
		
		$("#all").click(function() {
			$("[name=roleUuids]:checkbox").attr("checked",$("#all").attr("checked")=="checked");
		});
		$("#reverse").click(function() {
			$("[name=roleUuids]:checkbox").each(function () {
                $(this).attr("checked", !$(this).attr("checked"));
            });
			allCheck();
		});
		$("[name=roleUuids]:checkbox").click(function(){
			allCheck();
		});
	});
</script>
<div class="content-right">
	<div class="content-r-pic_w">
		<div style="margin:8px auto auto 12px;margin-top:6px">
			<span class="page_title">菜单管理</span>
		</div>
	</div>
	<div class="content-text">
		<div class="square-order">
			<s:form action="menu_save" method="post">
			<s:hidden name="mm.uuid"></s:hidden>
  			<div style="border:1px solid #cecece;">
				<table width="100%"  border="0" cellpadding="0" cellspacing="0">
				  <tr bgcolor="#FFFFFF">
				    <td>&nbsp;</td>
				  </tr>
				</table>
				<table width="100%"  border="0" cellpadding="0" cellspacing="0">
				    <tr  bgcolor="#FFFFFF">
				      <td width="18%" height="30" align="center">菜单名称</td>
				      <td width="32%">
				      	<s:textfield name="mm.name" size="25"></s:textfield>
				      </td>
				      <td width="18%" align="center">所属父菜单</td>
				      <td width="32%">
				      <s:select list="parentMenuList" name="mm.parent.uuid" listKey="uuid" listValue="name" cssStyle="width:190px" />
				      </td>
				    </tr>
				    <tr  bgcolor="#FFFFFF">
				      <td colspan="4">&nbsp;</td>
				    </tr>
				    <tr  bgcolor="#FFFFFF">
				      <td width="18%" height="30" align="center">URL</td>
				      <td width="82%" colspan="3">
				      	<s:textfield name="mm.url" size="82"></s:textfield>
				      </td>
				    </tr>
				    <tr  bgcolor="#FFFFFF">
				      <td colspan="4">&nbsp;</td>
				    </tr>
				    <tr  bgcolor="#FFFFFF">
				      <td width="18%" height="30" align="center">角色名称</td>
				      <td width="82%" colspan="3">
				      	<input type="checkbox" id="all">全选&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				      	<input type="checkbox" id="reverse">反选
				      </td>
				    </tr>
				    <tr  bgcolor="#FFFFFF">
				      <td width="18%" height="30" align="center">&nbsp;</td>
				      <td width="82%" colspan="3">
				      	<s:checkboxlist list="roleList" listKey="uuid" listValue="name" name="roleUuids"></s:checkboxlist>
				      </td>
				    </tr>
				    <tr  bgcolor="#FFFFFF">
				      <td colspan="4">&nbsp;</td>
				    </tr>
				</table>
			</div>
			<div class="order-botton">
				<div style="margin:1px auto auto 1px;">
					<table width="100%"  border="0" cellpadding="0" cellspacing="0">
					  <tr>
					    <td>
					    	<a href="javascript:document.forms[0].submit()"><img src="images/order_tuo.gif" border="0" /></a>
					    </td>
					    <td>&nbsp;</td>
					    <td><a href="#"><img src="images/order_tuo.gif" border="0" /></a></td>
					    <td>&nbsp;</td>
					    <td><a href="#"><img src="images/order_tuo.gif" border="0" /></a></td>
					  </tr>
					</table>
				</div>
			</div>
			</s:form>
		</div><!--"square-order"end-->
	</div><!--"content-text"end-->
	<div class="content-bbg"><img src="images/content_bbg.jpg" /></div>
</div>
