//write definition of global funcion "addCourse" that gets a
//string for course name and an int for course number,
//and adds that to the course array that is gets
//the results are needed back in the calling function

//Two ways of adding a course object to Courses
// 1) Member Function
// 2) Global Function

class Course
{
  int c_num;
  String c_name;
  Course(int num, String name)
  {
    c_num = num;
    c_name = name;
  }
  
 // 2) Global
 void myPrintArray()
 {
   
   
   
 }
  
  
  
}

class Student
{
  String name;
  Course [] c_array;
  Student (String n)
  {
    name = n;
  }
  
  // 1) Member Function
  void addCourse(int course_number, String course_name) //void because it already has access to c_array
  {
    if(c_array == null)
    {
      c_array = new Course [1];
      c_array[0] = new Course(course_number, course_name);
    }
    Course [] new_array = new Course [c_array.length +1]; //creating new memory of one  size larger
    for(int i= 0; i<c_array.length -1;i++) //copying
    new_array[i] = c_array[i];
    //construct last element
    new_array [new_array.length -1] = new Course(course_number, course_name);
    // copy back
    c_array = new_array;
  }
  
}

void setup()
{
  Student s1 = new Student("Joe");
  s1.addCourse(233,"Engg");
  s1.addCourse(233,"CHEM");
  println(s1.c_array[0]);
  
  
  
}