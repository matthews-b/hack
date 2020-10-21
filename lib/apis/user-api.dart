import 'package:flutter/material.dart';
import 'package:hack2k19sbg/models/navigate.dart';
import 'package:hack2k19sbg/pages/login-page.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost(context) async {
  const baseUrl = 'http://ec2-18-222-59-16.us-east-2.compute.amazonaws.com:3000';
  final response =
      await http.get('$baseUrl/sessionvl/$usernameGlobal');
  if (response.statusCode == 200) {
      loaderPage(context);
      await new Future.delayed(const Duration(seconds: 2));
      final secResponse =
        await http.get('$baseUrl/selectionscreencheck/$usernameGlobal');
      
      if(secResponse.statusCode == 200){
        if(secResponse.body == "homescreen"){
          performLogin(context);
        }else if(secResponse.body == "selectionscreen"){
          Navigate nav = Navigate(context, "Options");
          nav.navigate("");
          nav = null;
        }
      }else{
      }
  }else{
      
  }

}

loaderPage(context) {
  Navigate nav = Navigate(context, "Loader");
  nav.navigate("");
  nav = null;
}

performLogin(context) async {
  Navigator.of(context).pop();
  Navigate nav = Navigate(context, "Home");
  nav.navigate("");
  nav = null;
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}