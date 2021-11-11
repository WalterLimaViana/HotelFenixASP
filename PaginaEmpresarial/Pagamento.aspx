<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagamento.aspx.cs" Inherits="PaginaEmpresarial.Pagamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/Pagamento.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="javascript/bootstrap.bundle.min.js"></script>    
    <script src="javascript/form-validation.js"></script>
    <script>calendario.min = new Date().toISOString().split("T")[0];</script>
    <script>calendario2.min = new Date().toISOString().split("T")[0];</script>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/"> 
</head>
<body>
    <div class="container">
  <main>
     <form>
         <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="src/logoFinal.png" alt="" width="180" height="180"></img>
      <h2>Confirmação de Reserva</h2>
      <p class="lead">Faça aqui a confirmação da sua reserva.</p>
    </div>
          <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Número de Diárias</h6>
              <small class="text-muted"></small>
            </div>
            <div id="days">
              <?php echo $days?>
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Check In</h6>              
            </div>
              <?php echo $_POST['checkIn']?>
          </li>

          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Check Out</h6>              
            </div>
              <?php echo $_POST['checkOut']?>
          </li>
          
          
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Tipo de Quarto</h6><br>
              <small class="text-muted">
                <div class="form-check" aria-orientation="horizontal">
            
                  <input type="checkbox" class="form-check-input" name="quarto" value="290">Quarto Standard  - 2 camas de solteiro(R$ 290,00 a diária)<br><br>
                  <input type="checkbox" class="form-check-input" name="quarto" value="290">Quarto Standard  - cama de casal(R$ 290,00 a diária)<br><br>
                  <input type="checkbox" class="form-check-input" name="quarto" value="320">Quarto Master - cama de casal + cama de solteiro(R$ 320,00 a diária)<br><br>
                  <input type="checkbox" class="form-check-input" name="quarto" value="350">Quarto Master - cama de casal + 2 camas de solteiro (R$ 350,00 a diária)<br><br>
                  <input type="checkbox" class="form-check-input" name="quarto" value="450">Quarto Deluxe - cama de casal (king size) (R$ 450,00 a diária)<br><br>
                  <input type="checkbox" class="form-check-input" name="quarto" value="880">Suite Presidencial (R$ 880,00 a diária)<br><br>
                </div>
              </small>
              
              
            </div>
          </li>

          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Quantidade de Quartos</h6>              
            </div>
              <small id="numQuartos" name="numeroQuartos">
                <?php echo $_POST['quartos']?>
              </small>
              
          </li>

          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Adultos</h6>              
            </div>
            <?php echo $_POST['adultos']?>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Crianças</h6>
              <small class="text-muted">Acima de 12 anos</small>
            </div>
            <?php echo $_POST['crianca']?>
          </li>

          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Código Promocional</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success"></span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Total (R$)</span>
            <strong>
            <div id='resultado_soma'><?echo $total ?></div>              
            </strong>
          </li>
        </ul>
         <center>
         </center>
         

     </form>

        
        
    
    
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2021 Fênix Consultoria</p>    
  </footer>
</div>
    <script>
        (function () {
            var elements = document.getElementsByTagName('input');
            var resultado = document.getElementById('resultado_soma');
            var total = 0;

            for (var i = 0; i < elements.length; i++) {
                elements[i].onclick = function () {
                    if (this.checked === false) {
                        total = total - this.value;
                    } else {
                        total = total + parseFloat(this.value);
                    }

                    resultado.innerHTML = total;
                }
            }
        })();
    </script>
</body>
</html>
