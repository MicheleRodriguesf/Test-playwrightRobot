*** Settings ***
Documentation    Suite de testes de cadastro de dog walker
Resource       ../resources/base.resource



*** Test Cases ***
Deve poder cadastrar um novo dog walker

    ${dog_walker}            Create Dictionary 
    ...    name=Michele Rodrigues
    ...    cpf=84739926016
    ...    email=feheta4967@morxin.com
    ...    cep=40254-260
    ...    Street=Vila São Damião
    ...    District=Cosme de Farias
    ...    City_uf=Salvador/BA
    ...    Number=1
    ...    Details=Apto 10
    ...    cnh=toretto.jpg
    
    
    Start session
    Go to signup page
    Fill signup form      ${dog_walker}
    submit signup form
    popup should be        Recebemos o seu cadastro e em breve retornaremos o contato.
    Finish session
    











