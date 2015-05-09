/* It's hot out! Let's make a converter based on the steps here.

Create a function called celsiusToFahrenheit:

Store a celsius temperature into a variable.
Convert it to fahrenheit and output "NNÂ°C is NNÂ°F".
Create a function called fahrenheitToCelsius:
Now store a fahrenheit temperature into a variable.

Convert it to celsius and output "NNÂ°F is NNÂ°C."*/

function celsiusToFahrenheit (celcius) {
  //°C to °F  Multiply by 9, then divide by 5, then add 32

  return celcius*9/5+32;
}

function fahrenheitToCelsius(farenheit) {
  //°F to °C  Deduct 32, then multiply by 5, then divide by 9
  return (farenheit-32)*5/9;
}