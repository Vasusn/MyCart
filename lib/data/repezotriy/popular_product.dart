import 'package:clgapp/data/api/api_client.dart';
import 'package:clgapp/widget/app_icon.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({
    required this.apiClient,
  });

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("end point url");
  }
}
