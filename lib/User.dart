class User{
  String firstName;

  String lastName;

  String workPlace;

  String city;

  String country;

  List<String> photos;

  List<User> followers;

  List<User> follows;

  String avatar;

  User({
    this.firstName,
    this.lastName,
    this.workPlace,
    this.city,
    this.country,
    this.photos,
    this.followers,
    this.follows,
    this.avatar
});

}