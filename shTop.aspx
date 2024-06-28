<%@ Register Assembly="aspSample" Namespace="Samples" TagPrefix="aspSample" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Top" Src="Control_Top.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_D" Src="Control_D.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="WebUserControlDDL" Src="WebUserControlDDL.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Meta" Src="Control_Meta.ascx" %>
<!DOCTYPE html>
<html lang="cn">
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Askbootstrap">
      <meta name="author" content="Askbootstrap">
      <title>1</title>
      <meta name="keywords" content=""/>
      <meta name="description" content=""/>
      <link href="css/rkmaster.css" rel="stylesheet">
      
      <script type="text/javascript" src="js/jquery.js"></script>
      <script type="text/javascript" src="js/jquery.blockUI.js"></script>
      <script type="text/javascript" src="js/shtop.js"></script>
     
   </head>
   <body>
    
    <div class="main">
        <form name="Form1" method="post" action="top.aspx" id="Form1">
        <div class="Top3">
            <div class="Top_bg">
                <div class="TopTxt" style="display: none;">
                    <form id="Form2" runat="server" method="post" >
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
                </div>
                
                <table class="mptable" border="0" cellpadding="0" cellspacing="0" id="pay1">

                    <tr>
                        <th>
                            排名
                        </th>
                        <th>
                            人物
                        </th>
                        <th>
                            职业
                        </th>
                        <th>
                            神魂点
                        </th>
                        <th>
                            派别
                        </th>
                        
                    </tr>
                    <tbody id="Tbody1">
                        
                    </tbody>
                </table>
                
            </div>
        </div>
    </form>
    <script>
      
    </script>
    </div>
   </body>
</html>