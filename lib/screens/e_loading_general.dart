import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geolocator/geolocator.dart';

class LoadingR_Gen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RetClass(),
    );
  }
}

class RetClass extends StatefulWidget {
  @override
  _RetClassState createState() => _RetClassState();
}

class _RetClassState extends State<RetClass> {
  @override
  void initState() {
    super.initState();

    sendrt();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
        ),
      ),
    );
  }
  void sendsignal() async{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }
  void sendrt() async {
//    sendsignal();
    Position $position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    String $hh = $position.toString();

    final url = 'http://www.ismnkwara.org/nhack/sms.php';
    Map data = {'apikey': '12345678901234567890', 'msg': 'Theres emmegency at '+$hh+' Name: Muhammed Yayah', 'num1': '08162875010', 'num2': '08146367757', 'num3': '08164093351'};
    final body = json.encode(data);
    var response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);
    if (response.statusCode == 200) {
      print('hello');
      Navigator.pop(context);
    }else{
      print("error");
      Navigator.pop(context);
    }
  }

}


