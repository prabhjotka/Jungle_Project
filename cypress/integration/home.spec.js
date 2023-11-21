
describe('Jungle app', () => {
    beforeEach(() => {
        console.log('Before visiting the page');
        
        cy.visit('/', {
            auth: {
              username: 'Jungle',
              password: 'book',
            }
        });
          });
         
          

    it("There is products on the page", () => {
      cy.visit('/categories/1',{
        auth: {
          username: 'Jungle',
          password: 'book',
        }
    });
    
         cy.get(".products article").should("be.visible");
      });

      it("There is 2 products on the page", () => {
        cy.visit('/categories/1',{
          auth: {
            username: 'Jungle',
            password: 'book',
          }
      });
        cy.get(".products article").should("have.length", 2);
      });
 })