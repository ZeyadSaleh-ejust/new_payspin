import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CircleUsersRecord extends FirestoreRecord {
  CircleUsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  bool hasPhone() => _phone != null;

  // "turn" field.
  int? _turn;
  int get turn => _turn ?? 0;
  bool hasTurn() => _turn != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "PaymentDate" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "MonthlyInstalment" field.
  int? _monthlyInstalment;
  int get monthlyInstalment => _monthlyInstalment ?? 0;
  bool hasMonthlyInstalment() => _monthlyInstalment != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _admin = snapshotData['admin'] as bool?;
    _phone = castToType<int>(snapshotData['phone']);
    _turn = castToType<int>(snapshotData['turn']);
    _userId = snapshotData['user_id'] as String?;
    _name = snapshotData['name'] as String?;
    _amount = castToType<int>(snapshotData['amount']);
    _paymentDate = snapshotData['PaymentDate'] as DateTime?;
    _monthlyInstalment = castToType<int>(snapshotData['MonthlyInstalment']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('circleUsers')
          : FirebaseFirestore.instance.collectionGroup('circleUsers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('circleUsers').doc(id);

  static Stream<CircleUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CircleUsersRecord.fromSnapshot(s));

  static Future<CircleUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CircleUsersRecord.fromSnapshot(s));

  static CircleUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CircleUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CircleUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CircleUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CircleUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CircleUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCircleUsersRecordData({
  bool? admin,
  int? phone,
  int? turn,
  String? userId,
  String? name,
  int? amount,
  DateTime? paymentDate,
  int? monthlyInstalment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'admin': admin,
      'phone': phone,
      'turn': turn,
      'user_id': userId,
      'name': name,
      'amount': amount,
      'PaymentDate': paymentDate,
      'MonthlyInstalment': monthlyInstalment,
    }.withoutNulls,
  );

  return firestoreData;
}

class CircleUsersRecordDocumentEquality implements Equality<CircleUsersRecord> {
  const CircleUsersRecordDocumentEquality();

  @override
  bool equals(CircleUsersRecord? e1, CircleUsersRecord? e2) {
    return e1?.admin == e2?.admin &&
        e1?.phone == e2?.phone &&
        e1?.turn == e2?.turn &&
        e1?.userId == e2?.userId &&
        e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.monthlyInstalment == e2?.monthlyInstalment;
  }

  @override
  int hash(CircleUsersRecord? e) => const ListEquality().hash([
        e?.admin,
        e?.phone,
        e?.turn,
        e?.userId,
        e?.name,
        e?.amount,
        e?.paymentDate,
        e?.monthlyInstalment
      ]);

  @override
  bool isValidKey(Object? o) => o is CircleUsersRecord;
}
