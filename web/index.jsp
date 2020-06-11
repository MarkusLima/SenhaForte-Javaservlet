<%-- 
    Document   : index
    Created on : 24/05/2020, 17:09:32
    Author     : MkBits
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="pacote.Cliente" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
        <style>
            :root {
                --input-padding-y: .75rem;
            }

            body {
                background: #007bff;
                background: linear-gradient(to right, #0062E6, #33AEFF);
            }

            .card-signin {
                border: 0;
                border-radius: 1rem;
                box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
            }

            .card-signin .card-title {
                margin-bottom: 2rem;
                font-weight: 300;
                font-size: 1.5rem;
            }

            .card-signin .card-body {
                padding: 2rem;
            }

            .form-signin {
                width: 100%;
            }

            .form-signin .btn {
                font-size: 80%;
                border-radius: 5rem;
                letter-spacing: .1rem;
                font-weight: bold;
                padding: 1rem;
                transition: all 0.2s;
            }

            .form-label-group {
                position: relative;
                margin-bottom: 1rem;
            }

            .form-label-group input {
                height: auto;
                border-radius: 2rem;
            }

            .form-label-group>input,
            .form-label-group>label {
                padding: var(--input-padding-y) 1.5rem;
            }

            .form-label-group>label {
                position: absolute;
                top: 0;
                left: 0;
                display: block;
                width: 100%;
                margin-bottom: 0;
                /* Override default `<label>` margin */
                line-height: 1.5;
                color: #495057;
                border: 1px solid transparent;
                border-radius: .25rem;
                transition: all .1s ease-in-out;
            }

            .form-label-group input::-webkit-input-placeholder {
                color: transparent;
            }

            .form-label-group input:-ms-input-placeholder {
                color: transparent;
            }

            .form-label-group input::-ms-input-placeholder {
                color: transparent;
            }

            .form-label-group input::-moz-placeholder {
                color: transparent;
            }

            .form-label-group input::placeholder {
                color: transparent;
            }

            .form-label-group input:not(:placeholder-shown) {
                padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
                padding-bottom: calc(var(--input-padding-y) / 3);
            }

            .form-label-group input:not(:placeholder-shown)~label {
                padding-top: calc(var(--input-padding-y) / 3);
                padding-bottom: calc(var(--input-padding-y) / 3);
                font-size: 12px;
                color: #777;
            }

            .btn-google {
                color: white;
                background-color: #ea4335;
            }

            .btn-facebook {
                color: white;
                background-color: #3b5998;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <hr/>
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <%
                                //Cliente c1 = new Cliente();
                                //String n = c1.getNome();
                                //String e = c1.getEmail();
                                //String s = c1.getSenha();
                                String n = request.getParameter("respNome");
                                String e = request.getParameter("respEmail");
                                String s = request.getParameter("respSenha");
                      
                            %>

                            <div style="display: none" id="nomeResultado"><%=n%></div>
                            <div style="display: none" id="emailResultado"><%=e%></div>
                            <div style="display: none" id="senhaResultado"><%=s%></div>

                            <h5 class="card-title text-center">Acesso ao Sistema</h5>
                            <form class="form-signin" >
                                <div class="form-label-group">
                                    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                                    <label for="inputEmail">Email</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                                    <label for="inputPassword">Senha</label>
                                </div>


                                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="button" onclick="login()">Entrar</button>
                                <hr class="my-2">
                                <h6 class="text-center text-secondary">Não tem login?</h6>
                                <button class="btn btn-lg btn-success btn-block text-uppercase" type="submit" onclick="create()"></i> Criar Usuário</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        function create() {
            document.getElementById('inputEmail').value = '';
            document.getElementById('inputPassword').value = '';
            window.location.href = "create.html";
        }

    </script>
    <script>
        // var nomeResultado = document.getElementById('nomeResultado').innerHTML;
        //  var emailResultado = document.getElementById('emailResultado').innerHTML;
        //  var senhaResultado = document.getElementById('senhaResultado').innerHTML;
        // var inputNome = document.getElementById('inputNome').innerHTML;
        // var inputEmail = document.getElementById('inputEmail').innerHTML;
        //var inputSenha = document.getElementById('inputSenha').innerHTML;
        function login() {

            alert("E-mail: " + document.getElementById("inputEmail").value);
            alert("Senha: " + document.getElementById("inputPassword").value);
        }


    </script>
</html>
