// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract FunctionCall {
    /*
    function <function name>([parameter types[, ...]]) {internal|external|public|private} [pure|view|payable] [virtual|override] [<modifiers>]
    [returns (<return types>)]{ <function body> }

    internal|external|public|private  首先这个是函数的可见性， 默认public
    internal 和  private   private 只能被当前合约使用，无法继承

    [pure|view|payable]  pure 不可读写， view 只读 payable 地址类型专用，可以接受以太币，不写就是可以读写

    */
    uint private  num = 1;

    function test1(uint a)external pure returns(uint){
       // return a+num; //无法访问内部变量
       return a;
    }

    function test2()internal view returns(uint){
       // num= 2;  无法更改变量值，只能读
        return num;
    }

    function test3()public returns(uint){
        num = num **2;  //如果不加就可以读写
        return num;
    }

    function test4()public  payable returns(uint){
        return address(this).balance;  //合约地址余额
    }

    function test4()public returns(string memory){
        return "hello"
    }
}

