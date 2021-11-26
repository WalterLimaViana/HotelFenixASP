<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="PaginaEmpresarial.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
      <img class="logo" src="src/logoFinal.png" alt="" width="180" height="180"/>
      <h1>Bem Vindo!!!</h1>
            <h3><asp:Label ID="LabEmail" runat="server" ></asp:Label></h3>
      
        
        <br/><br/>
        
        <div class="text2">
          <a href= "Main.aspx" target="_self">Página Inicial</a><br /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sair</asp:LinkButton>
        </div><br/>
        <p class="mb-3 text-muted">&copy; 2021 Fênix Consultoria</p>
      
    </div>
    </form>
</body>
</html>
