import 'dart:io';


Future main() async{
  
  var server = await HttpServer.bind(InternetAddress.loopbackIPv4,8888);
  print ("Serving at ${server.address}:${server.port}");

  await for (var request in server){
    request.response
      ..headers.contentType = new ContentType("text", "plain", charset: "utf-8")
      ..write('This is dart')
      ..close();
  }
}
