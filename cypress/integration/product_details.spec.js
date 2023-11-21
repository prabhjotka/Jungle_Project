
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
  it("should display details page",()=>{
    cy.visit('/', {
      auth: {
        username: 'Jungle',
        password: 'book',
      }
  });
    cy.get(".products article").first().click()
    
    cy.url().should("include","products/2")

  });
   
})