float average_calculator(float[] array)
{
  float sum = 0;
  for(int i =0; i<array.length; i++)
  {
    sum += array[i];
  }
  return sum/(array.length);
  // Students must complete the function's implementation and change the return value
 
}

float largest_calculator(float[] array)
{
  boolean start = true;
  float temp =0;
  float largest =0;
  for(int i =0; i<array.length; i++)
  {
    temp = array[i];
    if(start == true)
    {
    largest = temp;
    start = false;
    }
    
    if( temp > largest)
    largest = temp;
  }
  return largest;
}
  


void setup() {
  float array_one [] = {6.0, 9.0, 5.0, 2.0, 0, 1.0, 3.0};
  float array_two [] = {-6.7, -9.9, -5.5, -4.4, -1.0, -11.9, -3.3};
  float array_three [] = {-6.7, -9.9, 0, -4.4, 2, -11.9, -3.3};
  float array_four [] = {-6.7, -9.9, -5.5, -4.4, -1.0, -11.9, -3.3, 99, 220,-1000, 0, 3, 55};
  println("Average of the values in array_one is : " + average_calculator(array_one) + " and the largest value is: " + 
             largest_calculator(array_one));
  println("Average of the values in array_two is : " + average_calculator(array_two) + " and the largest value is: " + 
             largest_calculator(array_two));
             
  println("Average of the values in array_three is : " + average_calculator(array_three) + " and the largest value is: " + 
             largest_calculator(array_three));
  println("Average of the values in array_four is : " + average_calculator(array_four) + " and the largest value is: " + 
             largest_calculator(array_four));
}