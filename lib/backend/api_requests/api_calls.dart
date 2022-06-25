import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetTipodeContaCall {
  static Future<ApiCallResponse> call({
    String email = 'lol@ua.pt',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTipodeConta',
      apiUrl: ' AIzaSyDhuNJ7l9zNumhWO9d4p7y2P_mJwWPXMvo',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
    );
  }
}
