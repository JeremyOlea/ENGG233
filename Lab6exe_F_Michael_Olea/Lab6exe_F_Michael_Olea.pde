
float [][] add (float[][] matrix1, float[][] matrix2) {
  float [][] result = new float[matrix1.length][matrix1[1].length];

  for (int i =0; i<matrix1.length; i++)
  {
    for (int j=0; j<matrix1[i].length; j++)
    {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }
  return result;
}

float [][] transpose (float[][] matrix)
{
  float [][] result2 = new float[matrix.length][matrix[1].length];
  for (int i=0; i<matrix.length; i++)
  {
    for (int j=0; j<matrix[i].length; j++)
    {
      result2[i][j] = matrix[j][i];
    }
  }
  return result2;
}

float [] sum_of_columns(float [][] matrix) {
  float [] result3 = new float[matrix[1].length];
  for (int i =0; i<matrix.length; i++)
  {
    for (int j=0; j<matrix[i].length; j++)
    {
      result3[i] += matrix[j][i];
    }
  }
  return result3;
}


void setup() {
  float [][] matrix_one = {{6.0, 9.0, 5.0}, {4.0, 0, 1.0}, {3.0, 2.0, 4.0}};
  float [][] matrix_two = {{1.0, 2.0, 3.0}, {0.0, 1.0, 2.0}, {4.0, 2.0, 1.0}};
  float[][] matrix_three = add(matrix_one, matrix_two);
  float[][] matrix_four = transpose(matrix_three);

  float [] cols_sums = sum_of_columns(matrix_four);
  float [][] matrix_five = {{0.0, 9.0, 0.0}, {1.0, 0, -1.0}, {-2.0, 0.0, 1.0}};
  float [][] matrix_six = transpose(matrix_five);

  println("Testing the \"add\" function: the sum of the value is matrix_one and matrix_two is matrix_three as follows: ");
  for (int i=0; i < matrix_three.length; i++) {
    for (int j = 0; j < matrix_three[i].length; j++) {
      print(matrix_three[i][j] + "  ");
    }
    println();
  }

  println("Testing the \"transpose\" function: the transpose of matrix_three is matrix_four as follows: ");
  for (int i=0; i < matrix_four.length; i++) {
    for (int j = 0; j < matrix_four[i].length; j++) {
      print(matrix_four[i][j] + "  ");
    }
    println();
  }

  println("Testing the \"sum_of_columns\" function: the sum of columns in matrix_four are: ");
  for (int i=0; i < cols_sums.length; i++) {
    print(cols_sums[i] + "  ");
  }
  println();
  println("-------------------------");
  println("matrix_one + matrix_five =");
  float [][] matrix_add_test = add(matrix_one, matrix_five);
  for (int i=0; i < matrix_five.length; i++) {
    for (int j = 0; j < matrix_five[i].length; j++) {
      print(matrix_add_test[i][j] + "  ");
    }
    println();
  }
  println();
  println("-------------------------");
  println("transpose of matrix_five =");
  for (int i=0; i < matrix_six.length; i++) {
    for (int j = 0; j < matrix_six[i].length; j++) {
      print(matrix_six[i][j] + "  ");
    }
    println();
  }

  println();
  println("-------------------------");
  float[] sum_six = sum_of_columns(matrix_six);
  println("sum of matrix_six =");
  for (int i=0; i < sum_six.length; i++) {
      print(sum_six[i] + "  ");
    }
    println();
  }