import 'package:hack2k19sbg/pages/login-page.dart';
import 'package:http/http.dart' as http;

Future<Post> passOptions(context, userOptions) async {
  String even = "";

  for(var opt in userOptions){
    if(!(even == "")){
      even += "-" + opt;
    }else{
      even = opt;
    }
  }

  const baseUrl = 'http://ec2-18-222-59-16.us-east-2.compute.amazonaws.com:3000';
  final response =
      await http.get('$baseUrl/selectionscreenadd/$usernameGlobal/$even');
  if (response.statusCode == 200) {
      
  }else{
      
  }
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