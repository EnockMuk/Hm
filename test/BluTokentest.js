const Blu= artifacts.require('Blu.sol');

require('chai')
.use(require('chai-as-promised'))
.should()

contract ('Blu',([deployer])=>{

            describe('it should ',async()=>{
                
                // it('should tcheck the intial supply',async()=>{
                //     let tokenBlu= await Blu.new('1000000000000000000');
                //     const supply= await tokenBlu.bluSupply();
                //     supply.toString().should.equal('1000000000000000000');    
                   
                // })

                it ('should tcheck the mintable token',async()=>{
                    let token= await Blu.new();
                    await token.mintBlu(deployer,'1000000000000000000')
                    const blance= await token.balanceOf(deployer);
                    blance.toString().should.equal('1000000000000000000');

                })

               

            })


})