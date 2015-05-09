/*Create 2 functions that calculate properties of a circle.

Create a function called calcCircumfrence:

Pass the radius to the function.
Calculate the circumference based on the radius, and output "The circumference is NN".
Create a function called calcArea:

Pass the radius to the function.
Calculate the area based on the radius, and output "The area is NN".*/

function calcCircumfrence (radius) {
  
  // 2πR
  var properties = 2 * Math.PI * radius;
  console.log('The circumference is '+ properties); 

}

function calArea (radius) {
  //A = πr2

  var area = Math.PI * (radius*radius);
  console.log('The area is ' + area);
}

//console.log('The circumference is '+ calcCircumfrence(5));
//console.log('The area is ' + calArea(5.5));
calcCircumfrence(5);
calArea(5.5)