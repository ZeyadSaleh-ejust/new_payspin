// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RolesStruct extends FFFirebaseStruct {
  RolesStruct({
    String? pinID,
    int? turn,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pinID = pinID,
        _turn = turn,
        super(firestoreUtilData);

  // "pinID" field.
  String? _pinID;
  String get pinID => _pinID ?? '';
  set pinID(String? val) => _pinID = val;

  bool hasPinID() => _pinID != null;

  // "turn" field.
  int? _turn;
  int get turn => _turn ?? 0;
  set turn(int? val) => _turn = val;

  void incrementTurn(int amount) => turn = turn + amount;

  bool hasTurn() => _turn != null;

  static RolesStruct fromMap(Map<String, dynamic> data) => RolesStruct(
        pinID: data['pinID'] as String?,
        turn: castToType<int>(data['turn']),
      );

  static RolesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RolesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pinID': _pinID,
        'turn': _turn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pinID': serializeParam(
          _pinID,
          ParamType.String,
        ),
        'turn': serializeParam(
          _turn,
          ParamType.int,
        ),
      }.withoutNulls;

  static RolesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RolesStruct(
        pinID: deserializeParam(
          data['pinID'],
          ParamType.String,
          false,
        ),
        turn: deserializeParam(
          data['turn'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RolesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RolesStruct && pinID == other.pinID && turn == other.turn;
  }

  @override
  int get hashCode => const ListEquality().hash([pinID, turn]);
}

RolesStruct createRolesStruct({
  String? pinID,
  int? turn,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RolesStruct(
      pinID: pinID,
      turn: turn,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RolesStruct? updateRolesStruct(
  RolesStruct? roles, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    roles
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRolesStructData(
  Map<String, dynamic> firestoreData,
  RolesStruct? roles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (roles == null) {
    return;
  }
  if (roles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && roles.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rolesData = getRolesFirestoreData(roles, forFieldValue);
  final nestedData = rolesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = roles.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRolesFirestoreData(
  RolesStruct? roles, [
  bool forFieldValue = false,
]) {
  if (roles == null) {
    return {};
  }
  final firestoreData = mapToFirestore(roles.toMap());

  // Add any Firestore field values
  roles.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRolesListFirestoreData(
  List<RolesStruct>? roless,
) =>
    roless?.map((e) => getRolesFirestoreData(e, true)).toList() ?? [];
