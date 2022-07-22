# Refund by Location Smart Contract (Location Base Dapp)

This project aims to produc an Ethereum based dApp that has both the smart contract tested and deployed in a testnet and a front end that will allow monitoring of the status.

![img](./img/web%203.jpg)

The refund by location smart contract is aimed to be used when one party, for example, an employer, agrees to pay another party, for example, an employee, for being present in a certain geographic area for a certain duration. The employee's phone sends its GPS location to a smart contract at a certain interval. Based on the pre-agreed contract codified in an Ethereum smart contract, a cryptocurrency payment is executed when all the agreed conditions are met.

If at any point, the GPS sensor indicates that an employee is outside the range of the agreed GPS area, the contract state will be updated to indicate that it is out of compliance.

    To use this app ethereum account is needed.

This project is using:

    - React native to develop the mobile dapp
    - React to develop the webdapp
    - solidity to develop the smart contract

Steps done in the project:

    - Developing smart contract using solidity programming
    - Testing and deploying the contract on ethereum blockchain (Rinkeyby Testnet)
    - Building frontend mobile dApp(React js)
    - Building frontend web dApp(ReactNative)
    - Connecting the frontend and smart contract backend

💿 Install all dependencies:

    git clone https://github.com/nardoshood/Refund-by-Location-Smart-Contract

🚴‍♂️ Run your web App:

    cd webDapp
    yarn install
    yarn start

🚴‍♂️ Run your mobile App:

    cd MobileDapp
    npm install
    npx react-native start
