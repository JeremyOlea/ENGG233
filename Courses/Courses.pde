class Course
{
  String c_name;
  int c_num;
  Course() {
  }
  Course(String name, int num)
  {
    c_name  = name;
    c_num = num;
  }
  Course(Course myCourse)
  {
    c_name = myCourse.c_name;
    c_num = myCourse.c_num;
  }
  void printCourse()
  {
    println(c_name, c_num);
  }
}

class Student
{
  String st_name;
  Course [] c_array;
  Student(String name)
  {
    st_name = name;
  }
  Student(String name, Course myCourse)
  {
    st_name = name;
    c_array = new Course [1]; // for arrays of objects we need to CREAT memory and CONSTRUCT an object for each element
    c_array [0] = new Course(myCourse); //OR new Course(myCourse.c_name, myCourse.c_num);
  }

  void addCourse(String course_name, int course_num)
  {
    if (c_array == null)
    {
      c_array = new Course[1];
      c_array [0] = new Course(course_name, course_num);
    } else
    {
      //1) create new memory
      Course [] new_array = new Course [c_array.length +1];
    }
    //2) copy
    for (int i =0; i<c_array.length; i++)
    {
      new_array[i] = c_array[i];
      //3) constructing the last element
      new_array[new_aray.length-1] = new Course(course_name, course_num);
      //4) copt back into the member variable array
      c_array = new_array;
    }
  }
  void printCourses()
  {
    for(int i = 0; i<c_array.length; i++)
    c_array[i].printCourse();
    println("--------------------");
  }
}








void setup()
{
  Course c1 = new Course("ENGG", 233);
  Course c2 = new Course();  //default constructior
  Course c3 = new Course (c1); //copy constructor

  Student s1 = new Student ("Jim");
  Student s2 = new Student ("Sam", c1);

  c3.printCourse(); // In OOP an object INVOKES the member function
  printCourse (c3); // In PP objcts are PASSED to global functions

  //println(c3.c_name, c3.c_num); // CANT DO THIS - ** Objects need to handle their own member function **
}

// global function
void printCourse(Course myCourse)
{
  println(myCourse.c_name, myCourse.c_num);
}