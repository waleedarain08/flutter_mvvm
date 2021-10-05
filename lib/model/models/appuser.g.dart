// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser(
    userName: json['userName'] as String?,
    id: json['id'] as String?,
    profilePicture: json['profilePicture'] as String?,
    firstName: json['firstName'] as String?,
    fullName: json['fullName'] as String?,
    lastName: json['lastName'] as String?,
    createdOnDate: json['createdOnDate'] as int,
    email: json['email'] as String?,
    isEmailVerified: json['isEmailVerified'] as bool?,
    loginSource: json['loginSource'] as String?,
    lost: json['lost'] as int?,
    ratings: json['ratings'] as int?,
    points: json['points'] as int?,
    status: json['status'] as bool?,
    won: json['won'] as int?,
  );
}

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'id': instance.id,
      'fullName': instance.fullName,
      'profilePicture': instance.profilePicture,
      'loginSource': instance.loginSource,
      'createdOnDate': instance.createdOnDate,
      'lost': instance.lost,
      'points': instance.points,
      'ratings': instance.ratings,
      'won': instance.won,
      'isEmailVerified': instance.isEmailVerified,
      'status': instance.status,
    };
