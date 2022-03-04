import 'package:get/get.dart';

import '../catalogue_model.dart';

class CatalogueProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Catalogue.fromJson(map);
      if (map is List)
        return map.map((item) => Catalogue.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Catalogue?> getCatalogue(int id) async {
    final response = await get('catalogue/$id');
    return response.body;
  }

  Future<Response<Catalogue>> postCatalogue(Catalogue catalogue) async =>
      await post('catalogue', catalogue);
  Future<Response> deleteCatalogue(int id) async =>
      await delete('catalogue/$id');
}
