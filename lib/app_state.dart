import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _TipodeConta = prefs.getString('ff_TipodeConta') ?? _TipodeConta;
    _betLeilao = prefs.getInt('ff_betLeilao') ?? _betLeilao;
    _planoBlocation = _latLngFromString(prefs.getString('ff_planoBlocation'));
  }

  SharedPreferences prefs;

  String _TipodeConta = 'Artist';
  String get TipodeConta => _TipodeConta;
  set TipodeConta(String _value) {
    _TipodeConta = _value;
    prefs.setString('ff_TipodeConta', _value);
  }

  List<String> Fotos = [
    'https://www.facebook.com/planobclub/photos/10158536334961746',
    'https://www.facebook.com/planobclub/photos/10158536334951746',
    'https://www.facebook.com/planobclub/photos/10158536320561746',
    'https://www.facebook.com/planobclub/photos/10158528016241746'
  ];

  int _betLeilao = 50;
  int get betLeilao => _betLeilao;
  set betLeilao(int _value) {
    _betLeilao = _value;
    prefs.setInt('ff_betLeilao', _value);
  }

  bool showCalendar = false;

  LatLng _planoBlocation = LatLng(40.641, -8.654);
  LatLng get planoBlocation => _planoBlocation;
  set planoBlocation(LatLng _value) {
    _planoBlocation = _value;
    prefs.setString('ff_planoBlocation', _value.serialize());
  }

  String reviewPlanoB = '';

  int ratingPlanoB = 0;

  bool FlagRate = false;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
