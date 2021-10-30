<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="PaginaEmpresarial.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <link href="styles/cadastro.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form action="cadastro.php" method="POST">

          <img class="mb-4" src="src/logoFenixFinal.png" alt="" width="180" height="180">
          <h2 class="title">Cadastre-se</h2>

          <label for="name"></label>
          <input type="text" id="name" name="name" placeholder="Nome Completo"><br><br>

          <label for="email"></label>
          <input type="email" id="email" name="email" placeholder="Email"><br><br>

          <label for="password"></label>
          <input type="password" id="password" name="password" placeholder="Senha"><br><br>
                 
          <label for="cpf"></label>
          <input type="tel" id="cpf" name="cpf" placeholder="CPF" onkeypress="$(this).mask('000.000.000-00');">            
                      
          <input type="tel" id="phone" name="phone" placeholder="Celular" onkeypress="$(this).mask('(00) 00000-0000')"><br><br>
            
          <label for="end"></label>
          <input type="text" id="end" name="endereco" placeholder="Endereço"><br><br>

          <label for="state"></label>
          <select id="state" name="country">
            <option value="">Estado</option>
            <option>Acre</option>
            <option>Alagoas</option>
            <option>Amapá</option>
            <option>Amazonas</option>
            <option>Bahia</option>
            <option>Ceará</option>
            <option>Distrito Federal</option>
            <option>Espirito Santo</option>
            <option>Goiás</option>
            <option>Maranhão</option>
            <option>Mato Grosso</option>
            <option>Mato Grosso do Sul</option>
            <option>Minas Gerais</option>
            <option>Pará</option>
            <option>Paraíba</option>
            <option>Paraná</option>
            <option>Pernambuco</option>
            <option>Piauí</option>
            <option>Rio de Janeiro</option>
            <option>Rio Grande do Norte</option>
            <option>Rio Grande do Sul</option>
            <option>Rondônia'</option>
            <option>Roraima</option>
            <option>Santa Catarina</option>
            <option>São Paulo</option>
            <option>Sergipe</option>
            <option>Tocantins</option>            
          </select><br><br>
        
          <input type="submit" name="submit" id="submit" value="Cadastrar"><br><br>
          <p class="mb-3 text-muted">&copy; 2021 Fênix Consultoria</p>
        </form>
      </div>
</body>
</html>
