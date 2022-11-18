// To parse this JSON data, do
//
//     final postTest = postTestFromJson(jsonString);

import 'dart:convert';

List<PostTest> postTestFromJson(String str) => List<PostTest>.from(json.decode(str).map((x) => PostTest.fromJson(x)));

String postTestToJson(List<PostTest> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostTest {
    PostTest({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    int ?userId;
    int ?id;
    String ?title;
    String ?body;

    factory PostTest.fromJson(Map<String, dynamic> json) => PostTest(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
