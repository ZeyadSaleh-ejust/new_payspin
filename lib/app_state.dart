import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _HomeAccess = await secureStorage.getBool('ff_HomeAccess') ?? _HomeAccess;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _HomeAccess = false;
  bool get HomeAccess => _HomeAccess;
  set HomeAccess(bool value) {
    _HomeAccess = value;
    secureStorage.setBool('ff_HomeAccess', value);
  }

  void deleteHomeAccess() {
    secureStorage.delete(key: 'ff_HomeAccess');
  }

  String _selectedCardText = '';
  String get selectedCardText => _selectedCardText;
  set selectedCardText(String value) {
    _selectedCardText = value;
  }

  String _selectedCardTitle = '';
  String get selectedCardTitle => _selectedCardTitle;
  set selectedCardTitle(String value) {
    _selectedCardTitle = value;
  }

  String _currentPickerValue = '';
  String get currentPickerValue => _currentPickerValue;
  set currentPickerValue(String value) {
    _currentPickerValue = value;
  }

  List<String> _monthPicker = ['-', '6', '7', '8', '9', '10', '11', '12'];
  List<String> get monthPicker => _monthPicker;
  set monthPicker(List<String> value) {
    _monthPicker = value;
  }

  void addToMonthPicker(String value) {
    monthPicker.add(value);
  }

  void removeFromMonthPicker(String value) {
    monthPicker.remove(value);
  }

  void removeAtIndexFromMonthPicker(int index) {
    monthPicker.removeAt(index);
  }

  void updateMonthPickerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    monthPicker[index] = updateFn(_monthPicker[index]);
  }

  void insertAtIndexInMonthPicker(int index, String value) {
    monthPicker.insert(index, value);
  }

  List<String> _amountPicker = [
    '-',
    '100',
    '150',
    '200',
    '250',
    '300',
    '350',
    '400',
    '450',
    '500'
  ];
  List<String> get amountPicker => _amountPicker;
  set amountPicker(List<String> value) {
    _amountPicker = value;
  }

  void addToAmountPicker(String value) {
    amountPicker.add(value);
  }

  void removeFromAmountPicker(String value) {
    amountPicker.remove(value);
  }

  void removeAtIndexFromAmountPicker(int index) {
    amountPicker.removeAt(index);
  }

  void updateAmountPickerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    amountPicker[index] = updateFn(_amountPicker[index]);
  }

  void insertAtIndexInAmountPicker(int index, String value) {
    amountPicker.insert(index, value);
  }

  String _month = '1';
  String get month => _month;
  set month(String value) {
    _month = value;
  }

  String _amount = '0';
  String get amount => _amount;
  set amount(String value) {
    _amount = value;
  }

  String _startOn = 'Jan-24';
  String get startOn => _startOn;
  set startOn(String value) {
    _startOn = value;
  }

  bool _isAdmin = false;
  bool get isAdmin => _isAdmin;
  set isAdmin(bool value) {
    _isAdmin = value;
  }

  List<CircleTypeStruct> _CircleInvetation = [];
  List<CircleTypeStruct> get CircleInvetation => _CircleInvetation;
  set CircleInvetation(List<CircleTypeStruct> value) {
    _CircleInvetation = value;
  }

  void addToCircleInvetation(CircleTypeStruct value) {
    CircleInvetation.add(value);
  }

  void removeFromCircleInvetation(CircleTypeStruct value) {
    CircleInvetation.remove(value);
  }

  void removeAtIndexFromCircleInvetation(int index) {
    CircleInvetation.removeAt(index);
  }

  void updateCircleInvetationAtIndex(
    int index,
    CircleTypeStruct Function(CircleTypeStruct) updateFn,
  ) {
    CircleInvetation[index] = updateFn(_CircleInvetation[index]);
  }

  void insertAtIndexInCircleInvetation(int index, CircleTypeStruct value) {
    CircleInvetation.insert(index, value);
  }

  List<Color> _BooleanAppState = [];
  List<Color> get BooleanAppState => _BooleanAppState;
  set BooleanAppState(List<Color> value) {
    _BooleanAppState = value;
  }

  void addToBooleanAppState(Color value) {
    BooleanAppState.add(value);
  }

  void removeFromBooleanAppState(Color value) {
    BooleanAppState.remove(value);
  }

  void removeAtIndexFromBooleanAppState(int index) {
    BooleanAppState.removeAt(index);
  }

  void updateBooleanAppStateAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    BooleanAppState[index] = updateFn(_BooleanAppState[index]);
  }

  void insertAtIndexInBooleanAppState(int index, Color value) {
    BooleanAppState.insert(index, value);
  }

  int _turn = 0;
  int get turn => _turn;
  set turn(int value) {
    _turn = value;
  }

  int _counter = 0;
  int get counter => _counter;
  set counter(int value) {
    _counter = value;
  }

  List<RepeatingContainersStruct> _RepeatingContainersss = [];
  List<RepeatingContainersStruct> get RepeatingContainersss =>
      _RepeatingContainersss;
  set RepeatingContainersss(List<RepeatingContainersStruct> value) {
    _RepeatingContainersss = value;
  }

  void addToRepeatingContainersss(RepeatingContainersStruct value) {
    RepeatingContainersss.add(value);
  }

  void removeFromRepeatingContainersss(RepeatingContainersStruct value) {
    RepeatingContainersss.remove(value);
  }

  void removeAtIndexFromRepeatingContainersss(int index) {
    RepeatingContainersss.removeAt(index);
  }

  void updateRepeatingContainersssAtIndex(
    int index,
    RepeatingContainersStruct Function(RepeatingContainersStruct) updateFn,
  ) {
    RepeatingContainersss[index] = updateFn(_RepeatingContainersss[index]);
  }

  void insertAtIndexInRepeatingContainersss(
      int index, RepeatingContainersStruct value) {
    RepeatingContainersss.insert(index, value);
  }

  String _id = 'lol';
  String get id => _id;
  set id(String value) {
    _id = value;
  }

  bool _flag = false;
  bool get flag => _flag;
  set flag(bool value) {
    _flag = value;
  }

  RolesStruct _turnAndpin = RolesStruct();
  RolesStruct get turnAndpin => _turnAndpin;
  set turnAndpin(RolesStruct value) {
    _turnAndpin = value;
  }

  void updateTurnAndpinStruct(Function(RolesStruct) updateFn) {
    updateFn(_turnAndpin);
  }

  List<int> _stack = [];
  List<int> get stack => _stack;
  set stack(List<int> value) {
    _stack = value;
  }

  void addToStack(int value) {
    stack.add(value);
  }

  void removeFromStack(int value) {
    stack.remove(value);
  }

  void removeAtIndexFromStack(int index) {
    stack.removeAt(index);
  }

  void updateStackAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    stack[index] = updateFn(_stack[index]);
  }

  void insertAtIndexInStack(int index, int value) {
    stack.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
