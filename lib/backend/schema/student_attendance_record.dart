import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentAttendanceRecord extends FirestoreRecord {
  StudentAttendanceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "student" field.
  DocumentReference? _student;
  DocumentReference? get student => _student;
  bool hasStudent() => _student != null;

  // "attendedClass" field.
  bool? _attendedClass;
  bool get attendedClass => _attendedClass ?? false;
  bool hasAttendedClass() => _attendedClass != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _student = snapshotData['student'] as DocumentReference?;
    _attendedClass = snapshotData['attendedClass'] as bool?;
    _date = snapshotData['date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('studentAttendance')
          : FirebaseFirestore.instance.collectionGroup('studentAttendance');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('studentAttendance').doc(id);

  static Stream<StudentAttendanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentAttendanceRecord.fromSnapshot(s));

  static Future<StudentAttendanceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StudentAttendanceRecord.fromSnapshot(s));

  static StudentAttendanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentAttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentAttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentAttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentAttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentAttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentAttendanceRecordData({
  DocumentReference? student,
  bool? attendedClass,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student': student,
      'attendedClass': attendedClass,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentAttendanceRecordDocumentEquality
    implements Equality<StudentAttendanceRecord> {
  const StudentAttendanceRecordDocumentEquality();

  @override
  bool equals(StudentAttendanceRecord? e1, StudentAttendanceRecord? e2) {
    return e1?.student == e2?.student &&
        e1?.attendedClass == e2?.attendedClass &&
        e1?.date == e2?.date;
  }

  @override
  int hash(StudentAttendanceRecord? e) =>
      const ListEquality().hash([e?.student, e?.attendedClass, e?.date]);

  @override
  bool isValidKey(Object? o) => o is StudentAttendanceRecord;
}
