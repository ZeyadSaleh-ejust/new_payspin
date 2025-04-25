import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "First_Name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "Last_Name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "JoinBetaUserList" field.
  bool? _joinBetaUserList;
  bool get joinBetaUserList => _joinBetaUserList ?? false;
  bool hasJoinBetaUserList() => _joinBetaUserList != null;

  // "connectedItem" field.
  DocumentReference? _connectedItem;
  DocumentReference? get connectedItem => _connectedItem;
  bool hasConnectedItem() => _connectedItem != null;

  // "circleID" field.
  DocumentReference? _circleID;
  DocumentReference? get circleID => _circleID;
  bool hasCircleID() => _circleID != null;

  // "NotificationRef" field.
  DocumentReference? _notificationRef;
  DocumentReference? get notificationRef => _notificationRef;
  bool hasNotificationRef() => _notificationRef != null;

  // "circleIDnotRef" field.
  String? _circleIDnotRef;
  String get circleIDnotRef => _circleIDnotRef ?? '';
  bool hasCircleIDnotRef() => _circleIDnotRef != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['First_Name'] as String?;
    _lastName = snapshotData['Last_Name'] as String?;
    _joinBetaUserList = snapshotData['JoinBetaUserList'] as bool?;
    _connectedItem = snapshotData['connectedItem'] as DocumentReference?;
    _circleID = snapshotData['circleID'] as DocumentReference?;
    _notificationRef = snapshotData['NotificationRef'] as DocumentReference?;
    _circleIDnotRef = snapshotData['circleIDnotRef'] as String?;
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
  String? firstName,
  String? lastName,
  bool? joinBetaUserList,
  DocumentReference? connectedItem,
  DocumentReference? circleID,
  DocumentReference? notificationRef,
  String? circleIDnotRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'First_Name': firstName,
      'Last_Name': lastName,
      'JoinBetaUserList': joinBetaUserList,
      'connectedItem': connectedItem,
      'circleID': circleID,
      'NotificationRef': notificationRef,
      'circleIDnotRef': circleIDnotRef,
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
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.joinBetaUserList == e2?.joinBetaUserList &&
        e1?.connectedItem == e2?.connectedItem &&
        e1?.circleID == e2?.circleID &&
        e1?.notificationRef == e2?.notificationRef &&
        e1?.circleIDnotRef == e2?.circleIDnotRef;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstName,
        e?.lastName,
        e?.joinBetaUserList,
        e?.connectedItem,
        e?.circleID,
        e?.notificationRef,
        e?.circleIDnotRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
