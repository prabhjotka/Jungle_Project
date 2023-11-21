
describe('Jungle app', () => {

  
    beforeEach(() => {
        
        cy.visit('/', {
            auth: {
              username: 'Jungle',
              password: 'book',
            }
        });
          });
  
          it("There is products on the page", () => {
            cy.get(".products article").should("be.visible");
          });
            
          it("There is 2 products on the page", () => {
            cy.get(".products article").should("have.length", 2);
          }); 

          it("it should click on add to cart option and increase cart by 1", () => {
            
            cy.visit('/', {
                auth: {
                  username: 'Jungle',
                  password: 'book',
                }
            });
            cy.contains('My Cart (0)')
           cy.get(".products article").first().get('.btn').click({force:true})
        
           cy.contains('My Cart (1)')
          }); 
     
  })