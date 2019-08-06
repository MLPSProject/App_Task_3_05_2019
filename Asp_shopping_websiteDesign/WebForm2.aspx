<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Asp_shopping_websiteDesign.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;ProductName:<asp:TextBox ID="txtPN" runat="server"></asp:TextBox> <br />
            Category:<asp:TextBox ID="txtCY" runat="server"></asp:TextBox><br />
            Description:<asp:TextBox ID="txtDN" runat="server"></asp:TextBox><br />
            Money:<asp:TextBox ID="txtMY" runat="server"></asp:TextBox><br />
            Quantity:<asp:TextBox ID="txtQY" runat="server"></asp:TextBox><br />
            Image:<asp:FileUpload ID="FUP1" runat="server" /><br />
            Submit:<asp:Button ID="BTN" runat="server" Text="Button" OnClick="BTN_Click" /><br />
            Label:<asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
            
        </div>
    </form>
</body>
</html>
