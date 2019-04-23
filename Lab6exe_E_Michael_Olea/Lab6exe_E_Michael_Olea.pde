
float second_largest_calculator(float[] array)
{
  float largest = array[0];
  float second_largest = array[0];
  for (int i=0; i<array.length; i++)
  {
    if (array[i] > largest)
      largest = array[i];
  }
  for (int j=0; j<array.length; j++)
  {
    if (array[j] > second_largest && array[j] < largest)
      second_largest = array[j];
  }
  return second_largest;
}

void setup() {
  float array_one [] = {6.0, 9.0, 5.0, 2.0, 0, 1.0, 3.0};
  float array_two [] = {-6.7, -9.9, -5.5, -4.4, -1.0, -11.9, -3.3};
  float array_three [] = {-6.7, -9.9, 0, -4.4, 2, -11.9, -3.3};
  float array_four [] = {-6.7, -9.9, -5.5, -4.4, -1.0, -11.9, -3.3, 99, 220, -1000, 0, 3, 55};
  println("The second largest value in array_one is : " + second_largest_calculator(array_one));
  println("The second largest value in array_two is : " + second_largest_calculator(array_two));
  println("The second largest value in array_three is : " + second_largest_calculator(array_three));
  println("The second largest value in array_four is : " + second_largest_calculator(array_four));
}