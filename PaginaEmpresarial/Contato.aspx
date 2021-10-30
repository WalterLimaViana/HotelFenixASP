<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="PaginaEmpresarial.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPage" runat="server">
    <main>
        <div class="picture">
            <div class="pictureHotel">
                <a target="_blank" href="src/PonteHercilioLuz.jpg">
                <img class="deluxe" src="src/PonteHercilioLuz.jpg" alt="PonteHercilio" width="900" height="600"></a></div>
            <div id="container-D">
                <div class=informacoes>
                    <p class="title">Entre em contato conosco!</p>
                    <p class="subtitle">Telefone: (48) 0000-0000 / (48) 00000-0000</p>
                    <p class="subtitle">Email: reservas.santacatarina@fenixhotel.com.br</p>
                </div><br><br>
                <form class="formContato" method="POST" action="contato.php">
                    <label for="name"></label>
                    <input type="text" id="name1" name="name" placeholder="Nome Completo"><br>

                    <label for="email"></label>
                    <input type="email" id="email1" name="email" placeholder="Email"><br>
                    
                    <input type="tel" id="phone1" name="phone" placeholder="Celular" onkeypress="$(this).mask('(00) 00000-0000')"><br>
                    
                    <label for="textBox"></label>
                    <textarea class="textBox1" name="message" placeholder="Digite sua mensagem aqui" style="width:540px; height:160px;"></textarea><br>
                    <input type="submit" class="botao" value="Enviar">
                </form>
            </div>                
        </div><br><br>
    </main>
</asp:Content>
