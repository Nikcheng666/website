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
      <title>ţţ����V2.0�б�-Ʒ�ƴ���</title>
      <link href="css/page.css" rel="stylesheet">
      <script language="JavaScript" type="text/javascript" src="js/pass.js" charset="gbk"></script>
    <script language="javascript" type="text/javascript">
        function GetReg() {
            if (document.getElementById("Control_SerList_DropDownList1").value == "0") {
                alert("��ѡ����Ϸ������")
                document.getElementById("Control_SerList_DropDownList1").focus();
                return;
            }
            else if (document.getElementById("userid").value.length < 6) {
                alert("����6λ��");
                document.getElementById("userid").focus();
                return;
            }
            else if (document.getElementById("userid").value == "") {
                alert("�������ʺţ�");
                document.getElementById("userid").focus();
                return;
            }
            else if (document.getElementById("userpws").value == "") {
                alert("���������룡");
                document.getElementById("userpws").focus();
                return;
            } else if (document.getElementById("userpws2").value == "") {
                alert("������ȷ�����룡");
                document.getElementById("userpws2").focus();
                return;
            } else if (document.getElementById("userpws2").value != document.getElementById("userpws").value) {
                alert("������������벻һ�£�");
                document.getElementById("userpws").value = "";
                document.getElementById("userpws2").value = "";
                document.getElementById("userpws").focus();
                return;
            }
            else if (document.getElementById("sfz").value == "") {
                alert("���������֤���룡");
                document.getElementById("sfz").focus();
                return;
            }
            else if (document.getElementById("username").value == "") {
                alert("��������ʵ������");
                document.getElementById("username").focus();
                return;
            }
            else if (document.getElementById("userwt").value == "") {
                alert("������������ʾ���⣡");
                document.getElementById("userwt").focus();
                return;
            }
            else if (document.getElementById("userda").value == "") {
                alert("������������ʾ�𰸣�");
                document.getElementById("userda").focus();
                return;
            }
            else if (document.getElementById("mail").value == "") {
                alert("�����밲ȫ���䣡");
                document.getElementById("mail").focus();
                return;
            }
            else if (document.getElementById("rzm").value == "") {
                alert("��������֤�룡");
                document.getElementById("rzm").focus();
                return;
            }
            Common.AjaxClass.Regid(document.getElementById("Control_SerList_DropDownList1").value, document.getElementById("userid").value, document.getElementById("userpws").value, document.getElementById("userpws2").value, document.getElementById("sfz").value, document.getElementById("username").value, document.getElementById("userwt").value, document.getElementById("userda").value, document.getElementById("mail").value, document.getElementById("sex").checked, document.getElementById("rzm").value);
        }
        function YZid() {
            if (document.getElementById("Control_SerList_DropDownList1").value == "0") {
                alert("��ѡ����Ϸ������")
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
         <h1>ţţ����-ע����Ϸ�˺�/DOWNLOAD</h1>
      </div>
      <div class="page">
         <!-- <div class="regbox-right">1</div> -->
         <div class="pagebox">
            <div class="regbox">
               <h1 class="hello_rge">
                  ��ӭ��ע����Ϸ�˺�
               </h1>
               <div class="regbox-from">
                  
                  <b>ѡ�����:</b>
                  <xwwl:WebUserControlDDL ID="Control_SerList" runat="server"></xwwl:WebUserControlDDL>
               </div>
               <div class="regbox-from">
                  
                  <b>��Ϸ�˺�:</b>
                  <input type="text" name="userid" id="userid" size="30" maxlength="12" tabindex="2"
                  onblur="YZid();" class="regbox-input" placeholder="�û�������6-12λ,����СдӢ����ĸ���������" />
                  
                  <div id="divUserName">
                     <!-- <span class="reg_errorh">�ʺ��Ѿ���ʹ�ã����������룡</span>
                     <span class="reg_righth">�ʺſ���ʹ��</span> -->
                  </div>
               </div>
               <div class="regbox-from">
                  <b>��Ϸ����:</b>
              <input type="password" name="userpws" id="userpws" size="30" maxlength="12" tabindex="3" onkeyup="ps.update(this.value);" class="regbox-input" placeholder="���볤��Ϊ6-12���ַ�����Ӣ����ĸ�����ֹ��ɣ��Ҳ����ִ�Сд��" />
               </div>
               <div class="regbox-from">
                  <b>�ٴ���������:</b>
                  <input type="password" name="userpws2" id="userpws2" size="30" maxlength="12" tabindex="4" class="regbox-input" placeholder="�ٴ���������" />
               </div>
               <div class="regbox-from">
                  <b>���֤����:</b>
                  <input type="text" name="sfz" id="sfz" size="30" maxlength="18" tabindex="5" class="regbox-input" placeholder="����15��18λ��ݺ��룬��Ϊ�ʺŰ�ȫ�һ�ƾ֤" />
               </div>
               <div class="regbox-from">
                  <b>��Ϸ��ɫ�Ա�:</b>
                  <input class="radio" type="radio" name="sex" id="sex" value="1" checked />�����Խ�ɫ����
                  <input class="radio" type="radio" name="sex" id="Radio1" value="2" />��Ů�Խ�ɫ
               </div>
               <div class="regbox-from">
                  <b>��ʵ����:</b>
                  <input type="text" name="username" id="username" size="30" maxlength="25" tabindex="6" class="regbox-input" placeholder="����������ʵ��������Ϊ�ʺŰ�ȫ�һ�ƾ֤" />
               </div>
               <div class="regbox-from">
                  <b>������ʾ����:</b>
                  <input type="text" name="userwt" id="userwt" size="30" maxlength="25" tabindex="7" class="regbox-input" placeholder="��������������ʾ����" />
               </div>
               <div class="regbox-from">
                  <b>������ʾ��:</b>
                  <input type="text" name="userda" id="userda" size="30" maxlength="25" tabindex="8" class="regbox-input" placeholder="��������������ʾ��" />
               </div>
               <div class="regbox-from">
                  <b>��ȫ����:</b>
                  <input type="text" name="mail" id="mail" size="30" maxlength="25" tabindex="9" class="regbox-input" placeholder="�������İ�ȫ����" />
               </div>
               <div class="regbox-from">
                  <b>��֤��:</b>
                  <input  type="text" name="rzm" id="rzm" size="30" maxlength="4" tabindex="10" class="regbox-inputyzm" placeholder="������֤��ͼƬ�а���4�����֡�" />
                  <a title="�������������ͼƬ" href="javascript:refreshimg()">
                     <img id="checkcode" src="gif.aspx" align="absMiddle"></a>
                     <script language="javascript">
                         function refreshimg() {
                             document.getElementById("checkcode").src = "gif.aspx?" + Math.ceil(Math.random() * 100000);
                         }
                     </script>
               </div>
               <a href="javascript:GetReg();" id="A1" class="zc">ע���˺� ���뽭��</a>
            </div>
           
         </div>
      </div>
   </form>
   </body>
</html>
