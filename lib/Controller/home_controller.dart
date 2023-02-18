import 'dart:convert';

import 'package:apiflut/Model/usermodel.dart';
import 'package:http/http.dart' as http;

// getusers() async {
//   var userdata = [];
//   var baseUrl = 'https://jsonplaceholder.typicode.com/users';
//   var url = Uri.parse(baseUrl);
//   var res = await http.get(url);
//   // print(res.statusCode);
//   var jsonRes = jsonDecode(res.body);
//   // print(res.body);
//   for (var i in jsonRes) {
//     userdata.add(UserModels.fromJson(i));
//   }

//   return userdata;
// }

// getdetail(id) async {
//   var baseUrl = 'https://jsonplaceholder.typicode.com/users/$id';
//   var url = Uri.parse(baseUrl);
//   var res = await http.get(url);
//   var jsonRes = jsonDecode(res.body);
//   return UserModels.fromJson(jsonRes);
// }





// get weather 

getweather()async{

  
  var baseUrl = 'http://api.weatherapi.com/v1/forecast.json?key=2f7c0eaa6e7c442887685249231502&q=London'; 
  var ur1 =Uri.parse(baseUrl);
  var res = await http.get(ur1);
  var jsonRes = jsonDecode(res.body);
  print(jsonRes);
  return UserModels.fromJson(jsonRes);
}

// getWeather by id 

getweatherid(city)async{

  
  var baseUrl = 'http://api.weatherapi.com/v1/forecast.json?key=2f7c0eaa6e7c442887685249231502&q=$city'; 
  var ur1 =Uri.parse(baseUrl);
  var res = await http.get(ur1);
  var jsonRes = jsonDecode(res.body);
  print(jsonRes);
  return UserModels.fromJson(jsonRes);
}

