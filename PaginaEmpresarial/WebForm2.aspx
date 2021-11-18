<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PaginaEmpresarial.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1" width="380">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label2" runat="server" ForeColor="#000066"
style="font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif; text-decoration: underline; font-style: italic;"
Text="ASP.NET - Persistindo valores entre Web Forms"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" ForeColor="#000066"
style="font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif"
                    Text="Página 01 - Enviar Dados"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
<asp:Label ID="lblNome" runat="server" CssClass="style3" Text="Nome:"></asp:Label>
            </td>
            <td>
<asp:TextBox ID="txtNome" runat="server" CssClass="style4" Height="20px" Width="300px" ClientIDMode="Inherit"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
<asp:Label ID="lbEndereco" runat="server" CssClass="style3" Text="Endereço:"></asp:Label>
            </td>
            <td>
<asp:TextBox ID="txtEndereco" runat="server" CssClass="style4" Height="20px"
                    Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
<asp:Label ID="lblCidade" runat="server" CssClass="style3" Text="Cidade:"></asp:Label>
            </td>
            <td>
<asp:TextBox ID="txtCidade" runat="server" CssClass="style4" Height="20px"
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
<asp:Label ID="lblEstado" runat="server" CssClass="style3" Text="Estado:"></asp:Label>
            </td>
            <td>
<asp:TextBox ID="txtEstado" runat="server" CssClass="style4" Height="20px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
<asp:Label ID="lblTipo" runat="server" CssClass="style3" Text="Tipo:"></asp:Label>
            </td>
            <td>
<asp:DropDownList ID="dropTipo" runat="server" CssClass="style4" Height="20px"
                    Width="150px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="F">Física</asp:ListItem>
                    <asp:ListItem Value="J">Jurídica</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnEnviarSession" runat="server"
                    style="font-family: Arial, Helvetica, sans-serif"
                    Text="Session" Width="260px" onclick="btnEnviar_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnEnviarquerystring" runat="server"
                    style="font-family: Arial, Helvetica, sans-serif"
Text="QueryString" Width="260px" onclick="btnEnviarquerystring_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnEnviarServerTransfer" runat="server"
                    style="font-family: Arial, Helvetica, sans-serif"
                    Text="Server Transfer" Width="260px"
                    onclick="btnEnviarServerTransfer_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnEnviarHttpContext" runat="server"
                     style="font-family: Arial, Helvetica, sans-serif"
Text="HttpContext" Width="260px" onclick="btnEnviarHttpContext_Click" />
            </td>
        </tr>
        </table>
    <div>
  </div>
</form>
</body>
</html>
