void main() async {
  print('Introduce myself, please wait 3 seconds ...');
  var name = await sayName(name: 'Quoc Anh');
  print(name);
  var age = await sayAge(age: 20);
  print(age);
  var hometown = await sayHometown(hometown: 'Da Nang');
  print(hometown);
}

sayName({required String name}) {
  return Future.delayed(Duration(seconds: 3), () {
    return name;
  });
}

sayAge({required int age}) {
  return Future.delayed(Duration(seconds: 5), () {
    return age;
  });
}

sayHometown({required String hometown}) {
  return Future.delayed(Duration(seconds: 2), () {
    return hometown;
  });
}