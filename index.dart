import 'dart:async';

void main() {



  for ( int i = 0; i < 10; i++){
    print('hello ${i + 1}');
  }

  final String str = 'final string' ;
  print (str is String);

  const double arclength = 2*3.14*4;
  if ( arclength is double){
    print (arclength);
  }

  final List<double> list = [1,2,3.14];
  print(list);

  final hoge = 1;

  print(hoge is String);


  String message = '''
  This is
  a long
  message
  ''';
  print(message);

  //Hash map
  var languages = {
    'Python' : 'Guido van rossum',
    'Ruby' : 'Matsumoto Yukihiro',
  };
  print(languages);
  Map<String, String> map = {
    'hoge':'hogehoge',
    'fuga':'fugafuga',
  };
  print(map);
  print(languages['Ruby']);

  //static map
  final preciousMetals = const{
    79:'gold',
    47:'sliver',
    78:'platinum',
  };
  print(preciousMetals);

  print(someFunc(1));
  voidFunc(message);
  calc(3, b:5);
  strict(a:5, b:7);
  func4(1,6);

  //Lambda Method 1
  List<String> fruits =['apple', 'banana', 'orange'];
  fruits.forEach((item){
    print(item);
  });

  //Lambda Method 2
  fruits.forEach((item) => print(item));

  //Lambda Method advanced
  var upper = (str) => print(str.toUpperCase());
  fruits.forEach(upper);


  // closure statement 
  Function curriedFunc(num x){
    return (num y) => x+y;
  }
  var hh = curriedFunc(3);
  var ff = curriedFunc(5);
  print(hh(4)); //7
  print(ff(5)); //10
  print(curriedFunc(4)(5)); // 9


  // for testing
  assert(hh(4)==7);
  assert(hh(4)==8);

  // try catch
  try{
    func4(1);
  } on Exception catch (e){
    print(e);
  } catch (e){
    print(e);
  }finally{
    func4(2);
  }


  // async

}

  int someFunc(int a){
    return a*2;
  }

  void voidFunc(String st){
    print(st);
  }

  // put default value for argument
  // How to call  calc(3, b:5);
  void calc(int a, {int b=2}){
    print(a+b);
  }

  // make strict argument
  // How to call  strict(a:5, b:7);
  void strict({int a, int b}){
    print(a*b);
  }

  // have not a argument that is null
  // How to call func4(1,6) or func4(1)
  void func4(int a, [int b]){
    if(b != null){
      print(a+b);
    }else{
      print(a);
    }

  }


class test{
  int hoge(){
    return 1;
  }

  // return variable of Future type in async method
  Future top() async{
    var b = await hoge();
    print(b);
  }
}