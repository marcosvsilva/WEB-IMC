<html>
<head>
  <meta charset="UTF-8">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="Materialize/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="Materialize/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>  
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
  <title>Cálculo de IMC</title>    
</head>

<body>
	<%
		String strAltura = request.getParameter("strAltura");
		String strPeso = request.getParameter("strPeso");

		if (strPeso == null) strPeso = "0";
    if (strAltura == null) strAltura = "0";
		
    double peso = Double.parseDouble(strPeso);
    double altura = Double.parseDouble(strAltura);
		double imc = 0;
	%>

  <nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" class="brand-logo">Cálculo IMC</a></div>
  </nav>
   
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>      
      <div class="row center">
        <h1 class="header col s12 light">Insira os dados para o cálculo do IMC</h1>
      </div>                          
      <div class="row center">
        <div class="row">
          <div class="row">
            <h2 class="center light-blue-text"><i class="medium material-icons">group</i></h2>
          	<%if (peso != 0 || altura != 0) {%>            
							<%imc = peso / (altura*altura);%>							    											             
    					<% if (imc < 18.5) { %>
    						<h5 class="header col s12 light">Abaixo do peso</h5>    														    						
    					<% } %>
    					<% if (imc >= 18.5 && imc < 25) { %>
    						<h5 class="header col s12 light">Peso normal</h5>
    					<% } %>
    					<% if (imc >= 25 && imc < 30) { %>
    						<h5 class="header col s12 light">Sobrepeso</h5>
    					<% } %>
    					<% if (imc >= 30 && imc < 40) { %>
    						<h5 class="header col s12 light">Obesidade</h5>
    					<% } %>
    					<% if (imc >= 40) { %>
    						<h5 class="header col s12 light">Obesidade Mórbida</h5>
    					<% } %>
          <% } %>    					
          </div>
				</div>
			</div>
		</div>
	</div>	
				
	<form>
	<div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <div class="row center">
        <div class="row">      
          <div class="row">
            <input name="grpSexo" type="radio" id="homem" />
            <label for="homem">Masculino</label>
            <input name="grpSexo" type="radio" id="mulher" />
            <label for="mulher">Feminino</label>
          </div>
        </div>      
        <div class="row">
            <div class="row">
              <div class="input-field col s6">
                <i class="material-icons prefix">perm_identity</i>
		            <input id="strAltura" type="text" name="strAltura" placeholder="<%= strAltura %>" class="validate">
            		<label for="altura">Altura</label>
              </div>
              <div class="input-field col s6">
                <i class="material-icons prefix">reorder</i>
            		<input id="strPeso" name="strPeso" type="text" placeholder="<%= strPeso %>" class="validate">
            		<label for="peso">Peso</label>
              </div>
            </div>
        </div>
        <button class="btn-large waves-effect waves-light orange">Calcular IMC</button>        
      <br><br>
    	</div>
  	</div>
	</div>  
        
  <footer class="page-footer">      
    <div class="footer-copyright">
      <div class="container">
        ALL RIGHTS RESERVED. COPYRIGHT © 2016. Designed by <a class="grey-text text-lighten-4" href="http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K4310621E7">Marcos Vinicius</a>
      </div>
    </div>    
  </footer>
	</form> 

  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
	<script type="text/javascript"> $(document).ready(function () {$('select').material_select();});</script>
</body>
</html>