function addTodo() {
    var input = document.getElementById("todo-input");
    var todoText = input.value.trim();
    input.value = "";

    if (todoText === "") return;

    var list = document.getElementById("todo-list");
    var li = document.createElement("li");
    li.textContent = todoText;

    list.appendChild(li);
}
