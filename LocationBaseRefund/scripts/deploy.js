// import
const { ethers } = require("hardhat")

//asunc function
async function main() {
    const Location = await ethers.getContractFactory("Location")
    console.log("Deploying contract...")
    const location = await Location.deploy()
    await location.deployed()
//Check delpoyment
    console.log(`Deployed to: ${location.address}`)
}

//main function
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.log(error)
        process.exit(1)
    })
