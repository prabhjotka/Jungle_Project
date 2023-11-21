



describe('Jungle app', () => {
    beforeEach(() => {
        console.log('Before visiting the page');
        
        cy.visit('http://localhost:3000/', {
            auth: {
              username: 'Jungle',
              password: 'book',
            }
        });
          });
         
          

    it("There is products on the page", () => {
        cy.debug();
         cy.get(".products article").should("be.visible");
      });

    //   it("There is 2 products on the page", () => {
    //     cy.get(".products article").should("have.length", 2);
    //   });
})