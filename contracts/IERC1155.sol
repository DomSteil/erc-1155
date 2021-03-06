pragma solidity ^0.4.24;

interface IERC1155 {
    // Events
    event Approval(address indexed _owner, address indexed _spender, uint256 indexed _itemId, uint256 _value);
    event Transfer(address indexed _from, address indexed _to, uint256 indexed _itemId, uint256 _value);

    // Required Functions
    function transfer(address _to, uint256 _itemId, uint256 _value) external;
    function transferFrom(address _from, address _to, uint256 _itemId, uint256 _value) external;
    function batchTransfer(address _to, uint256[] _itemIds, uint256[] _values) external;
    function batchTransferFrom(address _from, address _to, uint256[] _itemIds, uint256[] _values) external;
    function approve(address _spender, uint256 _itemId, uint256 _value) external;
    function batchApprove(address _spender, uint256[] _itemIds,  uint256[] _values) external;
    function increaseApproval(address _spender, uint256 _itemId,  uint256 _addedValue) external;
    function batchIncreaseApproval(address _spender, uint256[] _itemIds,  uint256[] _addedValues) external;
    function decreaseApproval(address _spender, uint256 _itemId,  uint256 _subtractedValue) external;
    function batchDecreaseApproval(address _spender, uint256[] _itemIds,  uint256[] _subtractedValues) external;

    // Required View Functions
    function totalSupply(uint256 _itemId) external view returns (uint256);
    function balanceOf(uint256 _itemId, address _owner) external view returns (uint256);
    function allowance(uint256 _itemId, address _owner, address _spender) external view returns (uint256);

    /** Optional View Functions
    function name(uint256 _itemId) external view returns (string);
    function symbol(uint256 _itemId) external view returns (string);
    function decimals(uint256 _itemId) external view returns (uint8);
    */
}