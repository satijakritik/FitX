import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get email;

  String? get password;

  String? get uid;

  int? get age;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get userSex;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  int? get steps;

  double? get spo2;

  int? get strength;

  int? get speed;

  int? get swim;

  int? get points;

  @BuiltValueField(wireName: 'daily_steps')
  int? get dailySteps;

  int? get sleep;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..password = ''
    ..uid = ''
    ..age = 0
    ..photoUrl = ''
    ..userSex = ''
    ..phoneNumber = ''
    ..steps = 0
    ..spo2 = 0.0
    ..strength = 0
    ..speed = 0
    ..swim = 0
    ..points = 0
    ..dailySteps = 0
    ..sleep = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? email,
  String? password,
  String? uid,
  int? age,
  String? photoUrl,
  DateTime? createdTime,
  String? userSex,
  String? phoneNumber,
  int? steps,
  double? spo2,
  int? strength,
  int? speed,
  int? swim,
  int? points,
  int? dailySteps,
  int? sleep,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..displayName = displayName
        ..email = email
        ..password = password
        ..uid = uid
        ..age = age
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..userSex = userSex
        ..phoneNumber = phoneNumber
        ..steps = steps
        ..spo2 = spo2
        ..strength = strength
        ..speed = speed
        ..swim = swim
        ..points = points
        ..dailySteps = dailySteps
        ..sleep = sleep,
    ),
  );

  return firestoreData;
}
