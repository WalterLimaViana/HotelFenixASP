<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarSenha.aspx.cs" Inherits="PaginaEmpresarial.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <body>
    <form id="form1" runat="server">
        <div class="container">
      <img class="logo" src="src/logoFenixFinal.png" alt="" width="180" height="180"/>
      <h1>Recuperação de Senha</h1>
      
        &nbsp;<asp:TextBox ID="txtEmail" placeholder="Email" runat="server" ></asp:TextBox>
        <br/><br/>
        &nbsp;
            <asp:TextBox ID="txtCpf" placeholder="CPF" runat="server"></asp:TextBox>
&nbsp;<br/><br/>
        
        
            <asp:Button ID="bt_recuperarSenha" runat="server" OnClick="bt_logar_Click" Text="Enviar" />
&nbsp;<br />
            <asp:Label ID="lMsg" runat="server"></asp:Label>
        <br/><br/>
        
        <div class="text2">
          <a href= "Login.aspx">Login</a><br/><br/>          
        </div><br/>
        <p class="mb-3 text-muted">&copy; 2021 Fênix Consultoria</p>
        
        
    </form>
</body>
</body>
</html>
