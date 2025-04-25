import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewNotificationRecord extends FirestoreRecord {
  NewNotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "notification_User_ID" field.
  String? _notificationUserID;
  String get notificationUserID => _notificationUserID ?? '';
  bool hasNotificationUserID() => _notificationUserID != null;

  void _initializeFields() {
    _notificationUserID = snapshotData['notification_User_ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('new_notification');

  static Stream<NewNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewNotificationRecord.fromSnapshot(s));

  static Future<NewNotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewNotificationRecord.fromSnapshot(s));

  static NewNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewNotificationRecordData({
  String? notificationUserID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notification_User_ID': notificationUserID,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewNotificationRecordDocumentEquality
    implements Equality<NewNotificationRecord> {
  const NewNotificationRecordDocumentEquality();

  @override
  bool equals(NewNotificationRecord? e1, NewNotificationRecord? e2) {
    return e1?.notificationUserID == e2?.notificationUserID;
  }

  @override
  int hash(NewNotificationRecord? e) =>
      const ListEquality().hash([e?.notificationUserID]);

  @override
  bool isValidKey(Object? o) => o is NewNotificationRecord;
}
