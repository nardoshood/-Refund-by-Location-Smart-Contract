const { isCreateTrace } = require("hardhat/internal/hardhat-network/stack-traces/message-trace")
const {ethers} = require("hardhat")
const {assert} = require('chai')

describe("RefundbyLoction", function(){
  let Location
  let location
  
  beforeEach(async function(){
    const Location = await ethers.getContractFactory("Location")
    const location = await Location.deploy()
  })

  it("Should deploy the smart contract", async () => {
    const Location = await ethers.getContractFactory("Location");
    const location = await Location.deploy();
    assert.isDefined(location.address);
  }).timeout(1000);
  
}) 