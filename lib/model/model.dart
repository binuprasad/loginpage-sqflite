class PeopleModel {
  int? id;

  String name;
  String phone;
  String email;
  String password;
  String address;
  PeopleModel({
    this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.address,
  });
}
