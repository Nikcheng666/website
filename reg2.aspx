<%@ page language="C#" autoeventwireup="true" inherits="Reg, App_Web_5233fso1" %>
<%@ Register Assembly="aspSample" Namespace="Samples" TagPrefix="aspSample" %>
<%@ Register TagPrefix="xwwl" TagName="Control_D" Src="Control_D.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Top" Src="Control_Top.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="WebUserControlDDL" Src="WebUserControlDDL.ascx" %>
<%@ Register TagPrefix="xwwl" TagName="Control_Meta" Src="Control_Meta.ascx" %>
<!DOCTYPE html>
<html lang="cn">
   <head id="Head1" runat="server">
      <meta http-equiv="content-Type" content="text/html; charset=gb2312" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Askbootstrap">
      <meta name="author" content="Askbootstrap">
      <title>牛牛江湖V2.0中变-品牌大区</title>
      <link href="css/page.css" rel="stylesheet">
      <script language="JavaScript" type="text/javascript" src="js/pass.js" charset="gbk"></script>
    <script language="javascript" type="text/javascript">
        function GetReg() {
            if (document.getElementById("Control_SerList_DropDownList1").value == "0") {
                alert("请选择游戏大区！")
                document.getElementById("Control_SerList_DropDownList1").focus();
                return;
            }
            else if (document.getElementById("userid").value.length < 6) {
                alert("最少6位！");
                document.getElementById("userid").focus();
                return;
            }
            else if (document.getElementById("userid").value == "") {
                alert("请输入帐号！");
                document.getElementById("userid").focus();
                return;
            }
            else if (document.getElementById("userpws").value == "") {
                alert("请输入密码！");
                document.getElementById("userpws").focus();
                return;
            } else if (document.getElementById("userpws2").value == "") {
                alert("请输入确认密码！");
                document.getElementById("userpws2").focus();
                return;
            } else if (document.getElementById("userpws2").value != document.getElementById("userpws").value) {
                alert("两次输入的密码不一致！");
                document.getElementById("userpws").value = "";
                document.getElementById("userpws2").value = "";
                document.getElementById("userpws").focus();
                return;
            }
            else if (document.getElementById("sfz").value == "") {
                alert("请输入身份证号码！");
                document.getElementById("sfz").focus();
                return;
            }
            else if (document.getElementById("username").value == "") {
                alert("请输入真实姓名！");
                document.getElementById("username").focus();
                return;
            }
            else if (document.getElementById("userwt").value == "") {
                alert("请输入密码提示问题！");
                document.getElementById("userwt").focus();
                return;
            }
            else if (document.getElementById("userda").value == "") {
                alert("请输入密码提示答案！");
                document.getElementById("userda").focus();
                return;
            }
            else if (document.getElementById("mail").value == "") {
                alert("请输入安全邮箱！");
                document.getElementById("mail").focus();
                return;
            }
            else if (document.getElementById("rzm").value == "") {
                alert("请输入验证码！");
                document.getElementById("rzm").focus();
                return;
            }
            Common.AjaxClass.Regid(document.getElementById("Control_SerList_DropDownList1").value, document.getElementById("userid").value, document.getElementById("userpws").value, document.getElementById("userpws2").value, document.getElementById("sfz").value, document.getElementById("username").value, document.getElementById("userwt").value, document.getElementById("userda").value, document.getElementById("mail").value, document.getElementById("sex").checked, document.getElementById("rzm").value);
        }
        function YZid() {
            if (document.getElementById("Control_SerList_DropDownList1").value == "0") {
                alert("请选择游戏大区！")
                document.getElementById("Control_SerList_DropDownList1").focus();
                return;
            }
            var strScore = Common.AjaxClass.YZid(document.getElementById("Control_SerList_DropDownList1").value, document.getElementById("userid").value);
            document.getElementById("divUserName").innerHTML = strScore.value;
        }
    </script>
   </head>
   <body>
      <form id="Form1" method="post" runat="server">
      <div class="head">
         <h1>牛牛江湖-注册游戏账号/DOWNLOAD</h1>
      </div>
      <div class="page">
         <!-- <div class="regbox-right">1</div> -->
         <div class="pagebox">
            <div class="regbox">
               <h1 class="hello_rge">
                  欢迎您注册游戏账号
               </h1>
               <div class="regbox-from">
                  
                  <b>选择分区:</b>
                  <xwwl:WebUserControlDDL ID="Control_SerList" runat="server"></xwwl:WebUserControlDDL>
               </div>
               <div class="regbox-from">
                  
                  <b>游戏账号:</b>
                  <input type="text" name="userid" id="userid" size="30" maxlength="12" tabindex="2"
                  onblur="YZid();" class="regbox-input" placeholder="用户名须在6-12位,仅由小写英文字母、数字组合" />
                  
                  <div id="divUserName">
                     <!-- <span class="reg_errorh">帐号已经被使用，请重新输入！</span>
                     <span class="reg_righth">帐号可以使用</span> -->
                  </div>
               </div>
               <div class="regbox-from">
                  <b>游戏密码:</b>
              <input type="password" name="userpws" id="userpws" size="30" maxlength="12" tabindex="3" onkeyup="ps.update(this.value);" class="regbox-input" placeholder="密码长度为6-12个字符，由英文字母、数字构成，且不区分大小写。" />
               </div>
               <div class="regbox-from">
                  <b>再次输入密码:</b>
                  <input type="password" name="userpws2" id="userpws2" size="30" maxlength="12" tabindex="4" class="regbox-input" placeholder="再次输入密码" />
               </div>
               <div class="regbox-from">
                  <b>身份证号码:</b>
                  <input type="text" name="sfz" id="sfz" size="30" maxlength="18" tabindex="5" class="regbox-input" placeholder="输入15或18位身份号码，作为帐号安全找回凭证" />
               </div>
               <div class="regbox-from">
                  <b>游戏角色性别:</b>
                  <input class="radio" type="radio" name="sex" id="sex" value="1" checked />　男性角色　　
                  <input class="radio" type="radio" name="sex" id="Radio1" value="2" />　女性角色
               </div>
               <div class="regbox-from">
                  <b>真实姓名:</b>
                  <input type="text" name="username" id="username" size="30" maxlength="25" tabindex="6" class="regbox-input" placeholder="输入您的真实姓名，作为帐号安全找回凭证" />
               </div>
               <div class="regbox-from">
                  <b>密码提示问题:</b>
                  <input type="text" name="userwt" id="userwt" size="30" maxlength="25" tabindex="7" class="regbox-input" placeholder="输入您的密码提示问题" />
               </div>
               <div class="regbox-from">
                  <b>密码提示答案:</b>
                  <input type="text" name="userda" id="userda" size="30" maxlength="25" tabindex="8" class="regbox-input" placeholder="输入您的密码提示答案" />
               </div>
               <div class="regbox-from">
                  <b>安全邮箱:</b>
                  <input type="text" name="mail" id="mail" size="30" maxlength="25" tabindex="9" class="regbox-input" placeholder="输入您的安全邮箱" />
               </div>
               <div class="regbox-from">
                  <b>验证码:</b>
                  <input  type="text" name="rzm" id="rzm" size="30" maxlength="4" tabindex="10" class="regbox-inputyzm" placeholder="输入验证码图片中包含4个数字。" />
                  <a title="看不清楚，换个图片" href="javascript:refreshimg()">
                     <img id="checkcode" src="gif.aspx" align="absMiddle"></a>
                     <script language="javascript">
                         function refreshimg() {
                             document.getElementById("checkcode").src = "gif.aspx?" + Math.ceil(Math.random() * 100000);
                         }
                     </script>
               </div>
               <a href="javascript:GetReg();" id="A1" class="zc">注册账号 进入江湖</a>
            </div>
           
         </div>
      </div>
   </form>
   </body>
</html>
