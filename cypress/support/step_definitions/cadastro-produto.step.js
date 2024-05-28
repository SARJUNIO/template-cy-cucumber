import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

//Given(`que esteja na tela de cadastro de produtos`, () => {
  //  cy.login('testesar@teste.com', '1234')
    //cy.visit('admin/cadastrarprodutos')
//});

//When(`eu inserir {string}, {float}, {string}, {int}', (arg0: any, arg1: any, arg2: any) => {
    // [When] Describes the action or event that triggers the scenario.
    //});

//Then(`deve validar o {any} do produto na lista`, (arg0: any) => {
    // [Then] Describes the expected outcome or result of the scenario.
//});



Given(`que eu esteja na tela de cadastro de produtos`, () => {
    cy.fixture('usuario-admin').then((usuario) =>{
        cy.login(usuario.email, usuario.senha)
   })
  
});

When(`eu inseir {string}, {int}, {string}, {int}`, (nome, preco, descricao, quantidade) => {
    let nomeProduto = `${nome}-${Date.now()}`
    cy.cadastrarProduto(nomeProduto, preco, descricao ,quantidade)
});

Then(`deve validar o {string} do produto na lista`, (nome) => {
    cy.get('.jumbotron').should('contain', nome)
});