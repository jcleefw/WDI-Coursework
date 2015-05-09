var task = { a: 1, b:2 }

localStorage.setItem('task', 'have lunch')

localStorage.setItem('mytasks', tasks)

var serializedTasks = JSON.stringify(tasks); // "{"a":1,"b":2}"

var obj = JSON.parse(serializedTasks);  //Object {a: 1, b: 2}