class Post {
  int _userId;
  int _id;
  String _title;
  String _body;

  Post({int userId, int id, String title, String body}) {
    this._userId = userId;
    this._id = id;
    this._title = title;
    this._body = body;
  }

  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get body => _body;

  Post.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['id'] = this._id;
    data['title'] = this._title;
    data['body'] = this._body;
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          _userId == other._userId &&
          _id == other._id &&
          _title == other._title &&
          _body == other._body;

  @override
  int get hashCode =>
      _userId.hashCode ^ _id.hashCode ^ _title.hashCode ^ _body.hashCode;
}
