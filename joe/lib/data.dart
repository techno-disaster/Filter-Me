import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  final url = "https://resume-scraper.herokuapp.com/jobs";
  Future<void> request() async {
    var response = await http.get(
      Uri.encodeFull(url),
    );
    print(response.body);
    List data;
    var extractdata = json.decode(response.body);
    data = extractdata["data"];
    print(data[0]["company_name"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: request,
        ),
      ),
    );
  }
}
