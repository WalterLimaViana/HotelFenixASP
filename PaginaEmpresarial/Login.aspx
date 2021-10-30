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
      <img class="logo" src="src/logoFenixFinal.png" alt="" width="180" height="180">
      <h1>Login</h1>
      <form action="testLogin.php" method="POST">
        <input type="email" name="email" placeholder="Email">
        <br><br>
        <input type="password" name="senha" placeholder="senha">
        <br><br>
        <input type="checkbox" value="remember-me"> Lembrar usuário
        <br><br>
        <input class="inputSubmit" type="submit" name="submit" value="Entrar">
        <br><br>
        
        <div class="text2">
          <a href= "">Esqueci senha</a><br><br>
          <a href= "Cadastro.aspx" target="_self">Não possuo cadastro</a><br><br>
          <a href= "PaginaInicial.aspx" target="_self">Página Inicial</a>
        </div><br>
        <p class="mb-3 text-muted">&copy; 2021 Fênix Consultoria</p>
      </form>
    </div>
    </form>
</body>
</html>
