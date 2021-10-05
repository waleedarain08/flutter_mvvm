
import 'package:json_annotation/json_annotation.dart';

part 'appuser.g.dart';

@JsonSerializable()
class AppUser {
  String? userName;
  String? firstName;
  String? lastName;
  String? email;
  String? id;
  String? fullName;
  String? profilePicture;
  String? loginSource;
  int? createdOnDate;
  int? lost;
  int? points;
  int? ratings;
  int? won;
  bool? isEmailVerified;
  bool? status;

  AppUser(
      {this.userName,
      this.id,
      this.profilePicture,
      this.firstName,
      this.fullName,
      this.lastName,
      this.createdOnDate ,
      this.email,
      this.isEmailVerified,
      this.loginSource,
      this.lost,
      this.ratings,
      this.points,
      this.status,
      this.won,});

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}
