import 'package:get/get.dart';

import '../outlet_model.dart';

class OutletProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Outlet.fromJson(map);
      if (map is List) return map.map((item) => Outlet.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Outlet?> getOutlet(int id) async {
    final response = await get('outlet/$id');
    return response.body;
  }

  Future<Response<Outlet>> postOutlet(Outlet outlet) async =>
      await post('outlet', outlet);
  Future<Response> deleteOutlet(int id) async => await delete('outlet/$id');
}
