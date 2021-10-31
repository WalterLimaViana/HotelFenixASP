<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLogado.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PaginaEmpresarial.Main" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headLogado" runat="server">
    <style type="text/css">
        #form3 {
            width: 547px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyPageLogado" runat="server">
    <main>
        
            <div class="cadastro">
                <form id="form3" runat="server">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="CHECK IN"></asp:Label><br/>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:TextBox ID="checkin" runat="server" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="checkin" FirstDayOfWeek="Sunday" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="CHECK OUT"></asp:Label><br/>
                    <asp:TextBox ID="checkout" runat="server" Font-Size="Large"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="checkout" TodaysDateFormat="d MMMM , yyyy" ClearTime="True" ClientIDMode="Predictable" />
                    <br />
                </div>
                
                <br />
                
                <div>
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Quartos"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Adultos"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Crianças"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<br />
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" Width="300px" />
                <br/>
                
                
            </form>
            </div>
            
             

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
