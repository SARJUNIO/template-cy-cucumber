import { Given, When, Then, DataTable } from '@badeball/cypress-cucumber-preprocessor';

//Given(`que eu esteja na tela de login do serverest`, () => {
//   cy.visit('https://front.serverest.dev/login')
//});

//When(`eu inserir email e senha corretamente`, () => {
 //   cy.get('[data-testid="email"]').type('teste@capgemini.com')
 //   cy.get('[data-testid="senha"]').type('1234')
 //   cy.get('[data-testid="entrar"]').click()
//});

//Then(`deve direcionar para o dashboard`, () => {
 //   cy.get('h1').should('contain', "Serverest Store")
    //cy.get('h1').should('contain', "Bem Vindo")
//});

//When(`eu inserir email: {string} e senha : {string}`, (arg0, arg1) => {
//    cy.get('[data-testid="email"]').type(email)
 //   cy.get('[data-testid="senha"]').type(senha)
 //   cy.get('[data-testid="entrar"]').click()
//});

//Then(`deve direcionar para o dashboard`, () => {
//    cy.get('h1').should('contain', "Serverest Store")
//});

Given(`que eu esteja na tela de login do serverest`, () => {
    cy.visit('login')
 });
 
 When(`eu inserir email e senha corretamente`, () => {
     cy.login('fabio@araujo.com', 'teste@123')
 });
 
 Then(`deve direcionar para o dashboard`, () => {
     cy.get('h1').should('contain', 'Bem Vindo')
 });
 
 When(`eu inserir email: {string} e senha : {string}`, (email, senha) => {
     cy.login(email, senha)
 });
 
 Then(`deve exibir uma mensagem de erro`, () => {
     cy.get('.alert').should('contain', 'Email e/ou senha inválidos')
 });
 
 When(`eu inserir {string} e {string}`, (email, senha) => {
     cy.login(email, senha)
 });

