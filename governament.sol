pragma solidity 0.7.5;


contract Governament {

    struct transaction {

        address from;
        address to;
        uint amount;
        uint txid;
    }
    transaction[] transactionlog;

    function addTransaction(address _from, address _to, uint _amount) external {
        Transaction memory _transaction = transaction(_from, _to, _amount, transactionlog.length);
        transactionlog.push(_transaction);
    }
    function getTransaction(uint _index)public view returns(address ,address, uint){
        return(transactionlog[_index].from transactionlog[_index].to,transactionlog[_index].amount );
    }
}
