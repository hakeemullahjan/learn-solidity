pragma solidity ^0.8.1;

contract TODO{
    struct Todo {
        string text;
        bool completed;
    }
    
    Todo[] public todos;
    
    function create(string memory _text) public {
        todos.push(Todo(_text,false));
    }
    
    function get(uint _index) public view returns (string memory,bool){ //string memory text, bool completed
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
    
    //update only text aka task
    function update(uint _index,string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
    
    
}