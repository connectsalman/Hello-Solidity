// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TodoList {
    struct Todo {
        string text;
        bool done;
    }

    Todo[] public todos;

    event TodoAdded(uint256 id, string text);

    function addTodo(string memory text) public {
        require(bytes(text).length > 0, "Text cannot be empty");
        todos.push(Todo(text, false));
        emit TodoAdded(todos.length - 1, text);
    }

    function completeTodo(uint256 id) public {
        require(id < todos.length, "Todo does not exist");
        todos[id].done = true;
    }

    function getTodoCount() public view returns (uint256) {
        return todos.length;
    }
}