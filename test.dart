String foo = "Hello ${name}";

class Base {
  void foo() {
    print("Base foo");
  }
}

class Derived extends Base {  // ✅ Class inheritance captured
  @override
  void foo() {
    print("Derived foo");
  }
}

void foo(int x) {
  print("Function foo called with $x");
}

void main() {
  foo(42);  // ✅ Function call

  var obj = Derived();
  obj.foo();  // ✅ Method call

  var y = foo(10);  // ✅ Function call in assignment
  var z = y + 5;  // ✅ Binary expression

  var message = "Value: $z";  // ✅ String interpolation

  void bar(int x, {int value = 42}) {  // ✅ Named parameters
    print("Bar called with $x and value $value");
  }

  bar(3, value: y);  // ✅ Keyword argument

  var shorthand = {"y": y};  // ✅ Shorthand property
}

