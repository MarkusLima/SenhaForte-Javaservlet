<%-- 
    Document   : resultado
    Created on : 24/05/2020, 17:22:32
    Author     : MkBits
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cliente" class="pacote.Cliente" scope="request" />

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
                            <h5 class="card-title text-center">Cadastro Realizado com sucesso!</h5>
                            <form class="form-signin" action="index.jsp" method="post">
                                <%
                                    String nome = request.getAttribute("n").toString();
                                    String email = request.getAttribute("e").toString();
                                    String forcaSenha = request.getAttribute("v").toString();
                                %> 

                                <p style="display: none">${cliente.nome}</p>
                                <p style="display: none">${cliente.email}</p>
                                <p style="display: none">${cliente.senha}</p>

                                <div class="form-label-group">
                                    <input class="form-control" name="respNome" value="Nome: <%=nome%>" disabled/>
                                </div>

                                <div class="form-label-group">
                                    <input class="form-control" name="respEmail" value="E-mail: <%=email%>" disabled/>
                                </div>

                                <div class="form-label-group">
                                    <input class="form-control" name="respSenha" value="Força da senha: <%=forcaSenha%>" disabled/>
                                </div>
                                <br/>

                                <hr class="my-2">
                        
                                <input class="btn btn-lg btn-success btn-block text-uppercase" type="submit" value="Voltar ao login" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>

