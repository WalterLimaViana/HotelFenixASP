<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PaginaEmpresarial.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
    <link href="styles/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
      <img class="logo" src="src/logoFenixFinal.png" alt="" width="180" height="180"/>
      <h1>Login</h1>
      
        &nbsp;<asp:TextBox ID="txtEmail" placeholder="Email" runat="server" ></asp:TextBox>
        <br/><br/>
        &nbsp;
            <asp:TextBox ID="txtSenha" placeholder="Senha" runat="server"></asp:TextBox>
&nbsp;<br/><br/>
        <input type="checkbox" value="remember-me"/> Lembrar usuário
        <br/><br/>
            <asp:Button ID="bt_logar" runat="server" OnClick="bt_logar_Click" Text="Enviar" />
&nbsp;<br />
            <asp:Label ID="lMsg" runat="server"></asp:Label>
        <br/><br/>
        
        <div class="text2">
          <a href= "rrrr">Esqueci senha</a><br/><br/>
          <a href= "Cadastro.aspx" target="_self">Não possuo cadastro</a><br/><br/>
          <a href= "PaginaInicial.aspx" target="_self">Página Inicial</a>
        </div><br/>
        <p class="mb-3 text-muted">&copy; 2021 Fênix Consultoria</p>
      
    </div>
    </form>
</body>
</html>
