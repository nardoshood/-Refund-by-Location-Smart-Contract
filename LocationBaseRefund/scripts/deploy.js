// import
const { verifyMessage, getContractAddress } = require("ethers/lib/utils")
const { ethers, run, network } = require("hardhat")

//asunc function
async function main() {
    const Location = await ethers.getContractFactory("Location")
    console.log("Deploying contract...")
    const location = await Location.deploy()
    await location.deployed()
    //Check delpoyment
    console.log(`Deployed to: ${location.address}`)
    if (network.config.chainId == 4 && process.env.ETHERSCAN_API_KEY) {
        await location.deployTransaction.wait(4)
        await verify(location.address, [])
        console.log("Verified contract")
    }
}
// auto verificaiton
async function verify(getContractAddress, args) {
    console.log("Verifying....")
    try {
        await run("verify:verify", {
            address: constractAddress,
            constructorArguments: args,
        })
    } catch (e) {
        if (e.messege_toLowerCase().includes("already Verified")) {
            console.log("Already Verified")
        } else {
            console.log(e)
        }
    }
}

//main function
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.log(error)
        process.exit(1)
    })
