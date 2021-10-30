<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLogado.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PaginaEmpresarial.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headLogado" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPageLogado" runat="server">
    <main>
        <div>
            <div class="cadastro">
            <form action="pagamento.php" method="POST">
                <div>
                <div class="dateIn">
                        <label for="data">CHECK IN</label>
                        <br>
                        <input class="checkIn"  type="date" id="calendario" name="checkIn">
                </div>
                </div>
                <br>
                    <div class="dateOut">
                        <label for="data">CHECK OUT</label>
                        <br>
                        <input class="checkOut" type="date" id="calendario2" name="checkOut">
                    </div>
                <br>
                <div>
                    <label class="room" for="quartos">Quartos</label>
                        <select id="quartos" name="quartos">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>   
                    <label class="adult" for="adultos">Adultos</label>
                        <select id="adultos" name="adultos">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    <label class="child" for="crianca">Crianças</label>
                        <select id="crianca" name="crianca">
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                </div><br>
                
                <div class="enviar"> <!--Colocar a função no botão para login em JS -->
                    <input class="btnBuscar" type="submit" name="submit" value="Reserve Já!">
                </div>
                </div>
            </form>
            <div class="quartosPhotos">
                <div class="gallery">
                    <a target="_blank" href="src/quartoStandard.jpg">
                    <img src="src/quartoStandard.jpg" alt="Qaurto Standard" width="600" height="400">
                    </a>
                    <div class="desc">Quarto Standard</div>
                </div>
                
                <div class="gallery">
                    <a target="_blank" href="src/quartoMaster.png">
                    <img src="src/quartoMaster.png" alt="Quarto Master" width="600" height="400">
                    </a>
                    <div class="desc">Quarto Master</div>
                </div>
                
                <div class="gallery">
                    <a target="_blank" href="src/quartoDeluxe.jpg">
                    <img src="src/quartoDeluxe.jpg" alt="Quarto Deluxe" width="600" height="400">
                    </a>
                    <div class="desc">Quarto Deluxe</div>
                </div>
                
                <div class="gallery">
                    <a target="_blank" href="src/suitePresidencial.jpg">
                    <img src="src/suitePresidencial.jpg" alt="Suite Presidencial" width="600" height="400">
                    </a>
                    <div class="desc">Suíte Presidencial</div>
                </div>
            </div>
        </div>
        
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> 
        <div class="titleP">
            <p class="titleMap">
                <h2>Venha conhecer um dos melhores hotéis de Florianópolis</h2>
                <br>
                <p class="mapsSubtitle">R. Felipe Schmidt - Centro - Florianópolis - SC</p>
            </p>
        </div>
        <div class="mapsBox">
            <div class="maps">                
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3535.980996203008!2d-48.55814848584348!3d-27.594118782838972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95273821b563cedb%3A0x83801b8d14253f0!2sR.%20Felipe%20Schmidt%20-%20Centro%2C%20Florian%C3%B3polis%20-%20SC%2C%2088010-400!5e0!3m2!1sen!2sbr!4v1632099058113!5m2!1sen!2sbr" 
                width="100%" height="350" style="border:0;" 
                allowfullscreen="" loading="lazy">
                </iframe>
              </div>
        </div>
    </main>
</asp:Content>
