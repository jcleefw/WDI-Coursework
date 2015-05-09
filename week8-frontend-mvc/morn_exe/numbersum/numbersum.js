function do_sum(input) {
    sum = 0;
    input.forEach(function(key, index) {
        sum += (index%2===0) ? key : -key;
    });
    return sum;
}

do_sum([5.0, 4.0, 3.0, 2.0, 1.0])
do_sum([100.7, -1.3, 10.0, 0.1])

// arr.reduce(function(prev,curr,index,arr){
//   //if(index % 2 == 0)
// });