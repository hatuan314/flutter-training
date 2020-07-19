class Account {
  String email;
  String password;

  Account({this.email, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}