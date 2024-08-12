import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "qr_id" field.
  int? _qrId;
  int get qrId => _qrId ?? 0;
  bool hasQrId() => _qrId != null;

  // "guardianName" field.
  String? _guardianName;
  String get guardianName => _guardianName ?? '';
  bool hasGuardianName() => _guardianName != null;

  // "guardianPhone" field.
  String? _guardianPhone;
  String get guardianPhone => _guardianPhone ?? '';
  bool hasGuardianPhone() => _guardianPhone != null;

  // "address" field.
  LatLng? _address;
  LatLng? get address => _address;
  bool hasAddress() => _address != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "qrcode" field.
  String? _qrcode;
  String get qrcode => _qrcode ?? '';
  bool hasQrcode() => _qrcode != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _qrId = castToType<int>(snapshotData['qr_id']);
    _guardianName = snapshotData['guardianName'] as String?;
    _guardianPhone = snapshotData['guardianPhone'] as String?;
    _address = snapshotData['address'] as LatLng?;
    _grade = snapshotData['grade'] as String?;
    _qrcode = snapshotData['qrcode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? qrId,
  String? guardianName,
  String? guardianPhone,
  LatLng? address,
  String? grade,
  String? qrcode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'qr_id': qrId,
      'guardianName': guardianName,
      'guardianPhone': guardianPhone,
      'address': address,
      'grade': grade,
      'qrcode': qrcode,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.qrId == e2?.qrId &&
        e1?.guardianName == e2?.guardianName &&
        e1?.guardianPhone == e2?.guardianPhone &&
        e1?.address == e2?.address &&
        e1?.grade == e2?.grade &&
        e1?.qrcode == e2?.qrcode;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.qrId,
        e?.guardianName,
        e?.guardianPhone,
        e?.address,
        e?.grade,
        e?.qrcode
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
