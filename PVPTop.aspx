<%@ Register Assembly="aspSample" Namespace="Samples" TagPrefix="aspSample" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Top" Src="Control_Top.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_D" Src="Control_D.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="WebUserControlDDL" Src="WebUserControlDDL.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Meta" Src="Control_Meta.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Askbootstrap">
      <meta name="author" content="Askbootstrap">
      <title>牛牛江湖V2.0中变-品牌大区</title>
      <link href="css/new.css" rel="stylesheet">
      <script type="text/javascript" src="js/jquery.js"></script>
      <script type="text/javascript" src="js/jquery.blockUI.js"></script>
      <script type="text/javascript" src="js/srtop.js"></script>
   </head>
   <body>
    <form id="Form1" method="post" runat="server">
      <div class="head">
         <h1>牛牛江湖-战神排行/RANK -(牛牛首区-战神-神魂-总榜)</h1>
      </div>
      <div class="page">
         <div class="pagebox rank">
            <div class="hoverr" id="con_1days_1">
               <p class="TopTxt" style="display: none;">
                   <xwwl:webusercontrolddl id="Control_SerList" runat="server"></xwwl:webusercontrolddl>
                   <select name="DropDownList2" id="DropDownList2">
                       <option value="0">全部</option>
                       <option value="1">刀客</option>
                       <option value="2">剑士</option>
                       <option value="3">枪客</option>
                       <option value="4">弓箭</option>
                       <option value="5">医生</option>
                       <option value="6">刺客</option>
                       <option value="7">乐师</option>
                       <option value="8">韩飞官</option>
                       <option value="9">谭花灵</option>
                   </select>
                   <select name="DropDownList3" id="DropDownList3">
                       <option value="0">全部</option>
                       <option value="1">正派</option>
                       <option value="2">邪派</option>
                   </select>
                   <a href="javascript:GetRwphh(document.getElementById('Control_SerList_DropDownList1').value);">
                       查询</a>
               </p>
               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                   <tr>
                       <th>
                           名次
                       </th>
                       <th>
                           人物
                       </th>
                       <th>
                           职业
                       </th>
                       <th>
                           杀人次数
                       </th>
                       <th>
                           神魂点
                       </th>
                       <th>
                           派别
                       </th>
                   </tr>
                   <tbody id="Tbody1">
               </table>
           </div>
         </div>
      </div>
      </form>
   </body>
</html>
