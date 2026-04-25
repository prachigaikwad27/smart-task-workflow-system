<?php
include 'db.php';

if(isset($_POST['task'])){
    $task = $_POST['task'];
    $priority = $_POST['priority'];
    $status = "Pending";

    mysqli_query($conn, "INSERT INTO tasks (task, priority, status) VALUES ('$task', '$priority', '$status')");
    
    echo "Task Added!";
}
?>

<form method="POST">
    <input type="text" name="task" placeholder="Enter task">
    
    <select name="priority">
        <option>High</option>
        <option>Medium</option>
        <option>Low</option>
    </select>

    <button type="submit">Add Task</button>
</form>
