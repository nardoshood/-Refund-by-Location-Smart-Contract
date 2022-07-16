import "./App.css";
// import {ethers} from 'ethers'

// import Lock from './artifacts/contracts/Lock.sol/Lock.json'
import logo from "./logo.png";

import Table from "@material-ui/core/Table";
import TableBody from "@material-ui/core/TableBody";
import TableCell from "@material-ui/core/TableCell";
import TableHead from "@material-ui/core/TableHead";
import TableRow from "@material-ui/core/TableRow";
// import CreateIcon from '@material-ui/icons/Create';
// import DeleteIcon from '@material-ui/icons/Delete';

const emplyee = {
  publicKey: "0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC",
  latitude: "41.40338",
  longitude: "2.17403",
  state: "inLocation",
  timeStamp: "2015-03-23-09.41.24.684842",
};

// const lockAddress = "0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512";
function App() {


  return (
    <div className="App">
      <div className="header-image">
        <img alt="logo" src={logo} />
      </div>
      <div className="list-section">
        <div >
          <h1> Employee list</h1>
          <button className="tee">add</button>
        </div>
        <div className="emp-list">
          <Table >
            <TableHead>
              <TableRow>
                <TableCell>Public Key</TableCell>
                <TableCell align="center">Latitude</TableCell>
                <TableCell align="center">Longitude</TableCell>
                <TableCell align="center">State</TableCell>
                <TableCell align="center">TimeStamp</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              <TableRow>
                <TableCell align="left">{emplyee.publicKey}</TableCell>
                <TableCell align="center">{emplyee.latitude}</TableCell>
                <TableCell align="left">{emplyee.longitude}</TableCell>
                <TableCell align="left">{emplyee.state}</TableCell>
                <TableCell align="left">{emplyee.timeStamp}</TableCell>
              </TableRow>
            </TableBody>
          </Table>
        </div>
      </div>
    </div>
  );
}

export default App;
