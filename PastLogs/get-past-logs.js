const Web3 = require("web3");

//DAI stablecoin ABI
const abi = require("./abi.json");

const INFURA_URL =
  "https://mainnet.infura.io/v3/3677788ecbb042f3b941ddd26dc8fc08";
//   "wss://mainnet.infura.io/ws/v3/3677788ecbb042f3b941ddd26dc8fc08";

// const web3 = new Web3(INFURA_URL);
const web3 = new Web3(new Web3.providers.HttpProvider(INFURA_URL));

const address = "0x6B175474E89094C44Da98b954EedeAC495271d0F";

async function main() {
  const latest = await web3.eth.getBlockNumber();
  console.log("latest block", latest);

  const contract = new web3.eth.Contract(abi, address);
  //   console.log("contract", contract);

  const logs = await contract.getPastEvents("Transfer", {
    fromBlock: latest - 10000,
    toBlock: latest,
    //filter by sender
    filter: { src: "0x464d0f72D7d72f80E52873b750Ad4696F0870D25" },

    //filter by reciever
    // filter: { dst: "" },
  });

  //   console.log("logs", logs);
  console.log(
    logs.map((log) => log.returnValues.src),
    `Logs:${logs.length}`
  );

  //subscribed to Transfer event
  contract.events.Transfer({}, (err, log) => {
    if (err) {
      console.log("error", err);
    }
    console.log("log", log);
  });
}

main();
