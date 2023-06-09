import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_auth/features/home/models/address.dart';
import 'package:riverpod_auth/features/home/models/company.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String username,
    required String email,
    required Address address,
    required String phone,
    required String website,
    required Company company,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
