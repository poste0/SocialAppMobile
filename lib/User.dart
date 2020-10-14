import 'package:flutter/cupertino.dart';

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

}

class UserBuilder{
  User user;

  UserBuilder firstName(String firstName){
    user.firstName = firstName;
    return this;
  }

  UserBuilder lastName(String lastName){
    user.lastName = lastName;
    return this;
  }

  UserBuilder workPlace(String workPlace){
    user.workPlace = workPlace;
    return this;
  }

  UserBuilder city(String city){
    user.city = city;
    return this;
  }

  UserBuilder country(String country){
    user.country = country;
    return this;
  }

  UserBuilder photos(List<String> photos){
    user.photos = photos;
    return this;
  }

  UserBuilder followers(List<User> followers){
    user.followers = followers;
    return this;
  }

  UserBuilder follows(List<User> follows){
    user.follows = follows;
    return this;
  }

  UserBuilder avatar(String avatar){
    user.avatar = avatar;
    return this;
  }

  User build(){
    return user;
  }

  UserBuilder(){
    user = new User();
  }
}