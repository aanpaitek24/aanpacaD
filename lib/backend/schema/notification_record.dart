import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "time_in" field.
  DateTime? _timeIn;
  DateTime? get timeIn => _timeIn;
  bool hasTimeIn() => _timeIn != null;

  // "tim_out" field.
  DateTime? _timOut;
  DateTime? get timOut => _timOut;
  bool hasTimOut() => _timOut != null;

  // "guardian_phone" field.
  String? _guardianPhone;
  String get guardianPhone => _guardianPhone ?? '';
  bool hasGuardianPhone() => _guardianPhone != null;

  // "_icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _timeIn = snapshotData['time_in'] as DateTime?;
    _timOut = snapshotData['tim_out'] as DateTime?;
    _guardianPhone = snapshotData['guardian_phone'] as String?;
    _icon = snapshotData['_icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  DocumentReference? user,
  String? name,
  DateTime? timeIn,
  DateTime? timOut,
  String? guardianPhone,
  String? icon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'name': name,
      'time_in': timeIn,
      'tim_out': timOut,
      'guardian_phone': guardianPhone,
      '_icon': icon,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.name == e2?.name &&
        e1?.timeIn == e2?.timeIn &&
        e1?.timOut == e2?.timOut &&
        e1?.guardianPhone == e2?.guardianPhone &&
        e1?.icon == e2?.icon;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash(
      [e?.user, e?.name, e?.timeIn, e?.timOut, e?.guardianPhone, e?.icon]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
