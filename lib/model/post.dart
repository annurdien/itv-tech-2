class Post {
  Post({
    required this.url,
    required this.desc,
  });

  String url;
  String desc;
}

final postsList = [
  Post(url: "url", desc: "This is a post"),
];
