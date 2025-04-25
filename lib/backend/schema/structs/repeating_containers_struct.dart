// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepeatingContainersStruct extends FFFirebaseStruct {
  RepeatingContainersStruct({
    Color? color,
    String? monthInString,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _color = color,
        _monthInString = monthInString,
        super(firestoreUtilData);

  // "color" field.
  Color? _color;
  Color get color => _color ?? const Color(0xFFDBE2E7);
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "monthInString" field.
  String? _monthInString;
  String get monthInString => _monthInString ?? '';
  set monthInString(String? val) => _monthInString = val;

  bool hasMonthInString() => _monthInString != null;

  static RepeatingContainersStruct fromMap(Map<String, dynamic> data) =>
      RepeatingContainersStruct(
        color: getSchemaColor(data['color']),
        monthInString: data['monthInString'] as String?,
      );

  static RepeatingContainersStruct? maybeFromMap(dynamic data) => data is Map
      ? RepeatingContainersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'monthInString': _monthInString,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'monthInString': serializeParam(
          _monthInString,
          ParamType.String,
        ),
      }.withoutNulls;

  static RepeatingContainersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RepeatingContainersStruct(
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        monthInString: deserializeParam(
          data['monthInString'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RepeatingContainersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RepeatingContainersStruct &&
        color == other.color &&
        monthInString == other.monthInString;
  }

  @override
  int get hashCode => const ListEquality().hash([color, monthInString]);
}

RepeatingContainersStruct createRepeatingContainersStruct({
  Color? color,
  String? monthInString,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RepeatingContainersStruct(
      color: color,
      monthInString: monthInString,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RepeatingContainersStruct? updateRepeatingContainersStruct(
  RepeatingContainersStruct? repeatingContainers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    repeatingContainers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRepeatingContainersStructData(
  Map<String, dynamic> firestoreData,
  RepeatingContainersStruct? repeatingContainers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (repeatingContainers == null) {
    return;
  }
  if (repeatingContainers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && repeatingContainers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final repeatingContainersData =
      getRepeatingContainersFirestoreData(repeatingContainers, forFieldValue);
  final nestedData =
      repeatingContainersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      repeatingContainers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRepeatingContainersFirestoreData(
  RepeatingContainersStruct? repeatingContainers, [
  bool forFieldValue = false,
]) {
  if (repeatingContainers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(repeatingContainers.toMap());

  // Add any Firestore field values
  repeatingContainers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRepeatingContainersListFirestoreData(
  List<RepeatingContainersStruct>? repeatingContainerss,
) =>
    repeatingContainerss
        ?.map((e) => getRepeatingContainersFirestoreData(e, true))
        .toList() ??
    [];
