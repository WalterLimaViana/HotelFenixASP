<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="PaginaEmpresarial.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="styles/telaCadastro.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form2" runat="server">

          <img class="logo" src="src/logoFinal.png" alt="" width="180" height="180"/>
          <h2 class="title">Cadastre-se</h2>

            <asp:TextBox ID="txtNome" placeholder="Nome" runat="server"></asp:TextBox>
            <br/><br/>

            <asp:TextBox ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox>
            <br/><br/>

            <asp:TextBox ID="txtSenha" placeholder="Senha" runat="server"></asp:TextBox>
            <br/>
            <br/>
            <asp:TextBox ID="txtCpf" placeholder="CPF"  runat="server"></asp:TextBox>
            <br/>
            <br/>
            <asp:TextBox ID="txtTelefone" placeholder="Celular" runat="server"></asp:TextBox>
            <br/><br/>
            
            <asp:TextBox ID="txtEnd" placeholder="Endereço" runat="server"></asp:TextBox>
            <br/>
            <br/>
            <asp:TextBox ID="txtEstado" placeholder="Palavra-Chave" runat="server"></asp:TextBox>
            <br/>
        
            <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />
            <br/><br/>
          <p class="mb-3 text-muted">&copy; 2021 Fênix Consultoria</p>
        </form>
      </div>
</body>
</html>
