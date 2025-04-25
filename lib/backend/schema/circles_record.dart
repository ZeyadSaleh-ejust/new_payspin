import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CirclesRecord extends FirestoreRecord {
  CirclesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "finished" field.
  bool? _finished;
  bool get finished => _finished ?? false;
  bool hasFinished() => _finished != null;

  // "months" field.
  int? _months;
  int get months => _months ?? 0;
  bool hasMonths() => _months != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "roles" field.
  List<RolesStruct>? _roles;
  List<RolesStruct> get roles => _roles ?? const [];
  bool hasRoles() => _roles != null;

  // "circle_id" field.
  String? _circleId;
  String get circleId => _circleId ?? '';
  bool hasCircleId() => _circleId != null;

  // "circle_status" field.
  String? _circleStatus;
  String get circleStatus => _circleStatus ?? '';
  bool hasCircleStatus() => _circleStatus != null;

  // "payment_per_month" field.
  int? _paymentPerMonth;
  int get paymentPerMonth => _paymentPerMonth ?? 0;
  bool hasPaymentPerMonth() => _paymentPerMonth != null;

  // "startdate" field.
  String? _startdate;
  String get startdate => _startdate ?? '';
  bool hasStartdate() => _startdate != null;

  // "endDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  bool hasEndDate() => _endDate != null;

  // "generatedUsers" field.
  List<DocumentReference>? _generatedUsers;
  List<DocumentReference> get generatedUsers => _generatedUsers ?? const [];
  bool hasGeneratedUsers() => _generatedUsers != null;

  // "RealUsers" field.
  List<DocumentReference>? _realUsers;
  List<DocumentReference> get realUsers => _realUsers ?? const [];
  bool hasRealUsers() => _realUsers != null;

  void _initializeFields() {
    _finished = snapshotData['finished'] as bool?;
    _months = castToType<int>(snapshotData['months']);
    _name = snapshotData['name'] as String?;
    _roles = getStructList(
      snapshotData['roles'],
      RolesStruct.fromMap,
    );
    _circleId = snapshotData['circle_id'] as String?;
    _circleStatus = snapshotData['circle_status'] as String?;
    _paymentPerMonth = castToType<int>(snapshotData['payment_per_month']);
    _startdate = snapshotData['startdate'] as String?;
    _endDate = snapshotData['endDate'] as String?;
    _generatedUsers = getDataList(snapshotData['generatedUsers']);
    _realUsers = getDataList(snapshotData['RealUsers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('circles');

  static Stream<CirclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CirclesRecord.fromSnapshot(s));

  static Future<CirclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CirclesRecord.fromSnapshot(s));

  static CirclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CirclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CirclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CirclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CirclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CirclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCirclesRecordData({
  bool? finished,
  int? months,
  String? name,
  String? circleId,
  String? circleStatus,
  int? paymentPerMonth,
  String? startdate,
  String? endDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'finished': finished,
      'months': months,
      'name': name,
      'circle_id': circleId,
      'circle_status': circleStatus,
      'payment_per_month': paymentPerMonth,
      'startdate': startdate,
      'endDate': endDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CirclesRecordDocumentEquality implements Equality<CirclesRecord> {
  const CirclesRecordDocumentEquality();

  @override
  bool equals(CirclesRecord? e1, CirclesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.finished == e2?.finished &&
        e1?.months == e2?.months &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.roles, e2?.roles) &&
        e1?.circleId == e2?.circleId &&
        e1?.circleStatus == e2?.circleStatus &&
        e1?.paymentPerMonth == e2?.paymentPerMonth &&
        e1?.startdate == e2?.startdate &&
        e1?.endDate == e2?.endDate &&
        listEquality.equals(e1?.generatedUsers, e2?.generatedUsers) &&
        listEquality.equals(e1?.realUsers, e2?.realUsers);
  }

  @override
  int hash(CirclesRecord? e) => const ListEquality().hash([
        e?.finished,
        e?.months,
        e?.name,
        e?.roles,
        e?.circleId,
        e?.circleStatus,
        e?.paymentPerMonth,
        e?.startdate,
        e?.endDate,
        e?.generatedUsers,
        e?.realUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is CirclesRecord;
}
