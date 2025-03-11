//SPDX-License-Identifier: MI
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {BasicNFT} from "../src/BasicNFT.sol";
import {DeployBasicNFT} from "../script/DeployBasicNFT.s.sol";

contract TestBasicNFT is Test {
    DeployBasicNFT public deployer;
    BasicNFT public basicNft;
    string public constant DOG =
        "https://bafybeigbiptfh3qxjmramjyxlyvlsbx757gbkpaiz6jmijshiflfayjvve.ipfs.dweb.link?filename=Dogie.json";
    address public alice = makeAddr("alice");
    address public bob = makeAddr("bob");

    function setUp() public {
        deployer = new DeployBasicNFT();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNft.name();
        // assert(expectedName == actualName);
        assert(
            keccak256(abi.encodePacked(expectedName)) ==
                keccak256(abi.encodePacked(actualName))
        );
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(alice);
        basicNft.mintNFT(DOG);

        assert(basicNft.balanceOf(alice) == 1);
        assert(
            keccak256(abi.encodePacked(DOG)) ==
                keccak256(abi.encodePacked(basicNft.tokenURI(0)))
        );
    }
}
