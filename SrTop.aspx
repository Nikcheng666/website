<%@ Register Assembly="aspSample" Namespace="Samples" TagPrefix="aspSample" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Top" Src="Control_Top.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_D" Src="Control_D.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="WebUserControlDDL" Src="WebUserControlDDL.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Meta" Src="Control_Meta.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>人物排行</title>
    <xwwl:Control_Meta ID="Control_Meta" runat="server"></xwwl:Control_Meta>
    <link href="Img/Layout.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.blockUI.js"></script>
    <script type="text/javascript" src="js/srtop.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/swfobject.js"></script>
    <script src="js/DD_belatedPNG_0.0.8a.js"></script>
    <script>
        DD_belatedPNG.fix('.logo-box a img,.reg-btn a,.rb-point span,.police-ico a img');
    </script>
    <!--
'**************************************************************
' Writer  name: 江湖C#
'**************************************************************
' Web: QQ709619644
'**************************************************************
' Copyright (C) 2010－2012 江湖C#科技 版权所有 盗版必究
'**************************************************************
-->
    <!-- 百度分享按钮开始 -->
    <script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=7&amp;uid=609525"></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
    </script>
    <!-- 百度分享按钮结束 -->
    <!-- 防COPY开始 -->
    <script type="text/javascript" src="copy.js"></script>
    <!-- 防COPY结束 -->
    <!--toolbarBox E -->
    <xwwl:Control_Top ID="Control_Top" runat="server"></xwwl:Control_Top>
    <!--aside E -->
</head>
<div class="main">
    <div class="Top2">
        <div class="Top_bg">
            <p class="TopTxt">
            </p>
            <form id="Form2" runat="server" method="post">
            <xwwl:WebUserControlDDL ID="Control_SerList" runat="server" />
            <select id="DropDownList2" name="DropDownList2">
                <option value="0">全部</option>
                <option value="1">刀客</option>
                <option value="2">剑士</option>
                <option value="3">枪客</option>
                <option value="4">弓箭</option>
                <option value="5">医生</option>
                <option value="6">刺客</option>
                <option value="7">乐师</option>
                <option value="8">韩飞官</option>
            </select>
            <select id="DropDownList3" name="DropDownList3">
                <option value="0">全部</option>
                <option value="1">正派</option>
                <option value="2">邪派</option>
            </select>
            <a href="javascript:GetRwphh(document.getElementById('Control_SerList_DropDownList1').value);">
                查询</a> </p>
            </form>
            <table border="0" cellpadding="0" cellspacing="0" width="490px">
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
                        派别
                    </th>
                </tr>
                <tbody id="Tbody1">
            </table>
            <span class="TopBot"></span>
        </div>
    </div>
    <xwwl:Control_D ID="buttomd" runat="server"></xwwl:Control_D>
</div>
</div> </div> </form> </div> </body>
</html>
