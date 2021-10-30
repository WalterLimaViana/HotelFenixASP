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
    <form action="pagamento.php" method="POST">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="src/logoFenixFinal.png" alt="" width="150" height="150">
      <h2>Pagamento</h2>
      <p class="lead">Faça aqui a confirmação da sua reserva e o pagamento.</p>
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Sua Reserva</span>
          <span class="badge bg-primary rounded-pill"></span>
        </h4>
       
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
                <div class="form-check">
            
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
    </form>
        

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Informações do Cliente</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">Nome</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Nome é obrigatório.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Sobrenome</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Sobrenome é obrigatório.
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">
              <?php 
                  echo "<h5>Email <br><br> $logado</h5>";
                ?>
              </label>
             
                
              <div class="invalid-feedback">
                Por favor entre com um endereço de email válido.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Endereço</label>
              <input type="text" class="form-control" id="address" placeholder="Rua, número, bairro..." required>
              <div class="invalid-feedback">
                Endereço é obrigatório.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">Complemento <span class="text-muted">(Opcional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="casa, quadra">
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">País</label>
              <select class="form-select" id="country" required>
                <option value="">Escolha...</option>
                <option>United States</option>
                <option>Brasil</option>
                <option>Chile</option>
                <option>Inglaterra</option>
              </select>
              <div class="invalid-feedback">
                Por favor selecione um país.
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">Estado</label>
              <select class="form-select" id="state" required>
                <option value="">Selecione...</option>
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
              </select>
              <div class="invalid-feedback">
                Por favor selecione um estado.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">CEP</label>
              <input type="tel" class="form-control" id="zip" placeholder="" onkeypress="$(this).mask('00000-000')"  required>
              <div class="invalid-feedback">
                CEP é obrigatório.
              </div>
            </div>
          </div>

          <hr class="my-4">
          
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Salvar informações para próxima reseva.</label>
          </div>         

          <hr class="my-4">

          <h4 class="mb-3">Pagamento</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Cartão de Crédito</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Cartão de débito</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">Pix</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Nome no cartão</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Nome como mostrado no cartão</small>
              <div class="invalid-feedback">
                Nome é obrigatório.
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Número do cartão</label>
              <input type="tel" class="form-control" id="cc-number" placeholder="" onkeypress="$(this).mask('0000 0000 0000 0000')" required>
              <div class="invalid-feedback">
                Número do cartão é obrigatório.
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Data de validade</label>
              <input type="tel" class="form-control" id="cc-expiration" placeholder="" onkeypress="$(this).mask('00/00')" required>
              <div class="invalid-feedback">
                Data de validade é obrigatório.
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" onkeypress="$(this).mask('000')" required>
              <div class="invalid-feedback">
                Código de segurança é obrigatório.
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Confirmar</button>
        </form>
      </div>
    </div>
    
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
