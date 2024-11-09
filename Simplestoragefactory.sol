SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;
import "./you.sol";
contract StorageFactory is SimpleStorage {
    SimpleStorage[] public SimpleStorageArray;
    function addSimpleStorageContract() public {
        SimpleStorage simplestorage = new SimpleStorage();
        SimpleStorageArray.push(simplestorage);
    }

    function SFstore(uint256 _simplestorageindex, uint256 _simplestoragenumber) {
        SimpleStorage(address(SimpleStorageArray[_simplestorageindex])).store(_simplestoragenumber);
    }

    function SFretrieve(uint256 _simplestorageindex) public view returns (uint256){
        return  SimpleStorage(address(SimpleStorageArray[_simplestorageindex])).retrieve();

    }
}
