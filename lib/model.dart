

class Student {
  Student(){
    
  }
}

abstract class Base {
  int methodA(int foo);
  String methodB(String foo);
}

class Sub extends Base {
  @override
  int methodA(int bar) => bar;

  @override
  String methodB(String bar) => bar;
}