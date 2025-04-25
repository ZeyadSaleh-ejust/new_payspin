import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "postid" field.
  String? _postid;
  String get postid => _postid ?? '';
  bool hasPostid() => _postid != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "notificationBody" field.
  String? _notificationBody;
  String get notificationBody => _notificationBody ?? '';
  bool hasNotificationBody() => _notificationBody != null;

  // "notificationTitle" field.
  String? _notificationTitle;
  String get notificationTitle => _notificationTitle ?? '';
  bool hasNotificationTitle() => _notificationTitle != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _postid = snapshotData['postid'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _notificationBody = snapshotData['notificationBody'] as String?;
    _notificationTitle = snapshotData['notificationTitle'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? uid,
  String? postid,
  DateTime? timestamp,
  String? notificationBody,
  String? notificationTitle,
  DocumentReference? postUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'postid': postid,
      'timestamp': timestamp,
      'notificationBody': notificationBody,
      'notificationTitle': notificationTitle,
      'post_user': postUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.postid == e2?.postid &&
        e1?.timestamp == e2?.timestamp &&
        e1?.notificationBody == e2?.notificationBody &&
        e1?.notificationTitle == e2?.notificationTitle &&
        e1?.postUser == e2?.postUser;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.postid,
        e?.timestamp,
        e?.notificationBody,
        e?.notificationTitle,
        e?.postUser
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
