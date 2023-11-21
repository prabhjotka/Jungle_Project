
describe('Jungle app', () => {
    beforeEach(() => {
        
        cy.visit('http://localhost:3000/', {
            auth: {
              username: 'Jungle',
              password: 'book',
            }
        });
          });
         
        });