// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8;

library LibDeployConstants {
    uint256 internal constant PARTY_DAO_DISTRIBUTION_SPLIT_BPS = 250;

    struct DeployConstants {
        address seaportExchangeAddress;
        uint256 osZoraAuctionDuration;
        uint256 osZoraAuctionTimeout;
        uint256 osMinOrderDuration;
        uint256 osMaxOrderDuration;
        uint256 zoraMinAuctionDuration;
        uint256 zoraMaxAuctionDuration;
        uint256 zoraMaxAuctionTimeout;
        uint256 minCancelDelay;
        uint256 maxCancelDelay;
        uint40 distributorEmergencyActionAllowedDuration;
        address partyDaoMultisig;
        address osZone;
        bytes32 osConduitKey;
        address osConduitController;
        address fractionalVaultFactory;
        address foundationMarket;
        address nounsAuctionHouse;
        address zoraAuctionHouse;
        string networkName;
        address deployedNounsMarketWrapper;
        address deployedFoundationMarketWrapper;
        address deployedZoraMarketWrapper;
    }

    function rinkeby(address multisig) internal pure returns (DeployConstants memory) {
        DeployConstants memory deployConstants = DeployConstants({
            seaportExchangeAddress: 0x00000000000001ad428e4906aE43D8F9852d0dD6,
            osZoraAuctionDuration: 2 minutes,
            osZoraAuctionTimeout: 2 minutes,
            osMinOrderDuration: 2 minutes,
            osMaxOrderDuration: 14 days,
            zoraMinAuctionDuration: 2 minutes,
            zoraMaxAuctionDuration: 10 days,
            zoraMaxAuctionTimeout: 7 days,
            minCancelDelay: 5 minutes,
            maxCancelDelay: 1 days,
            distributorEmergencyActionAllowedDuration: 365 days,
            partyDaoMultisig: multisig,
            osZone: 0x0000000000000000000000000000000000000000,
            osConduitKey: 0x0000007b02230091a7ed01230072f7006a004d60a8d4e71d599b8104250f0000,
            osConduitController: 0x00000000F9490004C11Cef243f5400493c00Ad63,
            fractionalVaultFactory: 0x09EB641BA93CfA6340E944a22bDd2F1C8c745A9f,
            foundationMarket: 0x21b700d637551f15078E11871a3c0dcCf283D1e7,
            nounsAuctionHouse: 0x7cb0384b923280269b3BD85f0a7fEaB776588382,
            zoraAuctionHouse: 0xE7dd1252f50B3d845590Da0c5eADd985049a03ce,
            networkName: "rinkeby",
            deployedNounsMarketWrapper: 0x0000000000000000000000000000000000000000,
            deployedFoundationMarketWrapper: 0x0000000000000000000000000000000000000000,
            deployedZoraMarketWrapper: 0x0000000000000000000000000000000000000000
        });

        return deployConstants;
    }

    function goerli(address multisig) internal pure returns (DeployConstants memory) {
        DeployConstants memory deployConstants = DeployConstants({
            seaportExchangeAddress: 0x00000000000001ad428e4906aE43D8F9852d0dD6,
            osZoraAuctionDuration: 2 minutes,
            osZoraAuctionTimeout: 2 minutes,
            osMinOrderDuration: 2 minutes,
            osMaxOrderDuration: 14 days,
            zoraMinAuctionDuration: 2 minutes,
            zoraMaxAuctionDuration: 10 days,
            zoraMaxAuctionTimeout: 7 days,
            minCancelDelay: 5 minutes,
            maxCancelDelay: 1 days,
            distributorEmergencyActionAllowedDuration: 365 days,
            partyDaoMultisig: multisig,
            osZone: 0x0000000000000000000000000000000000000000,
            osConduitKey: 0x0000007b02230091a7ed01230072f7006a004d60a8d4e71d599b8104250f0000,
            osConduitController: 0x00000000F9490004C11Cef243f5400493c00Ad63,
            fractionalVaultFactory: 0x014850E83d9D0D1BB0c8624035F09626b967B81c,
            foundationMarket: 0xeB1bD095061bbDb1aD065524628812cae63e4222,
            nounsAuctionHouse: 0x7295e70f2B26986Ba108bD1Bf9E349a181F4a6Ea,
            zoraAuctionHouse: 0x6a6Cdb103f1072E0aFeADAC9BeBD6E14B287Ca57,
            networkName: "goerli",
            deployedNounsMarketWrapper: 0x0000000000000000000000000000000000000000,
            deployedFoundationMarketWrapper: 0x0000000000000000000000000000000000000000,
            deployedZoraMarketWrapper: 0x0000000000000000000000000000000000000000
        });

        return deployConstants;
    }

    function mainnet() internal pure returns (DeployConstants memory) {
        DeployConstants memory deployConstants = DeployConstants({
            seaportExchangeAddress: 0x00000000000001ad428e4906aE43D8F9852d0dD6,
            osZoraAuctionDuration: 1 days,
            osZoraAuctionTimeout: 1 days,
            osMinOrderDuration: 1 hours,
            osMaxOrderDuration: 4 weeks,
            zoraMinAuctionDuration: 1 days,
            zoraMaxAuctionDuration: 4 weeks,
            zoraMaxAuctionTimeout: 2 weeks,
            minCancelDelay: 6 weeks,
            maxCancelDelay: 12 weeks,
            distributorEmergencyActionAllowedDuration: 365 days,
            partyDaoMultisig: 0xF7f52Dd34bc21eDA08c0b804C7c1dbc48375820f,
            osZone: 0x0000000000000000000000000000000000000000,
            osConduitKey: 0x0000007b02230091a7ed01230072f7006a004d60a8d4e71d599b8104250f0000,
            osConduitController: 0x00000000F9490004C11Cef243f5400493c00Ad63,
            fractionalVaultFactory: 0x85Aa7f78BdB2DE8F3e0c0010d99AD5853fFcfC63,
            foundationMarket: 0xcDA72070E455bb31C7690a170224Ce43623d0B6f,
            nounsAuctionHouse: 0x830BD73E4184ceF73443C15111a1DF14e495C706,
            zoraAuctionHouse: 0xE468cE99444174Bd3bBBEd09209577d25D1ad673,
            networkName: "mainnet",
            deployedNounsMarketWrapper: 0x9319DAd8736D752C5c72DB229f8e1b280DC80ab1,
            deployedFoundationMarketWrapper: 0x96e5b0519983f2f984324b926e6d28C3A4Eb92A1,
            deployedZoraMarketWrapper: 0x11c07cE1315a3b92C9755F90cDF40B04b88c5731
        });

        return deployConstants;
    }
}
