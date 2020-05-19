class User {
  int _id;
  String _name;
  String _username;
  String _email;
  Address _address;
  String _phone;
  String _website;

  User(
      {int id,
      String name,
      String username,
      String email,
      Address address,
      String phone,
      String website}) {
    this._id = id;
    this._name = name;
    this._username = username;
    this._email = email;
    this._address = address;
    this._phone = phone;
    this._website = website;
  }

  int get id => _id;
  String get name => _name;
  String get username => _username;
  String get email => _email;
  Address get address => _address;
  String get phone => _phone;
  String get website => _website;

  User.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    _phone = json['phone'];
    _website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['username'] = this._username;
    data['email'] = this._email;
    if (this._address != null) {
      data['address'] = this._address.toJson();
    }
    data['phone'] = this._phone;
    data['website'] = this._website;
    return data;
  }
}

class Address {
  String _street;
  String _suite;
  String _city;
  String _zipcode;

  Address({String street, String suite, String city, String zipcode}) {
    this._street = street;
    this._suite = suite;
    this._city = city;
    this._zipcode = zipcode;
  }

  String get street => _street;
  String get suite => _suite;
  String get city => _city;
  String get zipcode => _zipcode;

  Address.fromJson(Map<String, dynamic> json) {
    _street = json['street'];
    _suite = json['suite'];
    _city = json['city'];
    _zipcode = json['zipcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this._street;
    data['suite'] = this._suite;
    data['city'] = this._city;
    data['zipcode'] = this._zipcode;
    return data;
  }
}
