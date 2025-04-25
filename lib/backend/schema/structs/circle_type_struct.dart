// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CircleTypeStruct extends FFFirebaseStruct {
  CircleTypeStruct({
    String? circleSize,
    bool? isAdmin,
    bool? isSelected,
    String? monthYear,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _circleSize = circleSize,
        _isAdmin = isAdmin,
        _isSelected = isSelected,
        _monthYear = monthYear,
        super(firestoreUtilData);

  // "CircleSize" field.
  String? _circleSize;
  String get circleSize => _circleSize ?? '';
  set circleSize(String? val) => _circleSize = val;

  bool hasCircleSize() => _circleSize != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;

  bool hasIsAdmin() => _isAdmin != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "monthYear" field.
  String? _monthYear;
  String get monthYear => _monthYear ?? '';
  set monthYear(String? val) => _monthYear = val;

  bool hasMonthYear() => _monthYear != null;

  static CircleTypeStruct fromMap(Map<String, dynamic> data) =>
      CircleTypeStruct(
        circleSize: data['CircleSize'] as String?,
        isAdmin: data['isAdmin'] as bool?,
        isSelected: data['isSelected'] as bool?,
        monthYear: data['monthYear'] as String?,
      );

  static CircleTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CircleTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CircleSize': _circleSize,
        'isAdmin': _isAdmin,
        'isSelected': _isSelected,
        'monthYear': _monthYear,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CircleSize': serializeParam(
          _circleSize,
          ParamType.String,
        ),
        'isAdmin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'monthYear': serializeParam(
          _monthYear,
          ParamType.String,
        ),
      }.withoutNulls;

  static CircleTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CircleTypeStruct(
        circleSize: deserializeParam(
          data['CircleSize'],
          ParamType.String,
          false,
        ),
        isAdmin: deserializeParam(
          data['isAdmin'],
          ParamType.bool,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
        monthYear: deserializeParam(
          data['monthYear'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CircleTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CircleTypeStruct &&
        circleSize == other.circleSize &&
        isAdmin == other.isAdmin &&
        isSelected == other.isSelected &&
        monthYear == other.monthYear;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([circleSize, isAdmin, isSelected, monthYear]);
}

CircleTypeStruct createCircleTypeStruct({
  String? circleSize,
  bool? isAdmin,
  bool? isSelected,
  String? monthYear,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CircleTypeStruct(
      circleSize: circleSize,
      isAdmin: isAdmin,
      isSelected: isSelected,
      monthYear: monthYear,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CircleTypeStruct? updateCircleTypeStruct(
  CircleTypeStruct? circleType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    circleType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCircleTypeStructData(
  Map<String, dynamic> firestoreData,
  CircleTypeStruct? circleType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (circleType == null) {
    return;
  }
  if (circleType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && circleType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final circleTypeData = getCircleTypeFirestoreData(circleType, forFieldValue);
  final nestedData = circleTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = circleType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCircleTypeFirestoreData(
  CircleTypeStruct? circleType, [
  bool forFieldValue = false,
]) {
  if (circleType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(circleType.toMap());

  // Add any Firestore field values
  circleType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCircleTypeListFirestoreData(
  List<CircleTypeStruct>? circleTypes,
) =>
    circleTypes?.map((e) => getCircleTypeFirestoreData(e, true)).toList() ?? [];
