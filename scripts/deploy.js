
const hre = require("hardhat");

async function main() {

  const contract = await hre.ethers.deployContract("ERC20T");

  await contract.waitForDeployment();

  console.log(`ERC20Token deployed to ${contract.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});