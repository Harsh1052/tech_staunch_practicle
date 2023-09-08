import 'package:http/http.dart' as http;
import 'package:tech_staunch_practicle/Models/customMode.dart';

class APIService {
  final String _baseUrl = "https://api.slingacademy.com/v1";

  Future<APIResponse<http.Response>>  getUsers({int page = 1}) async {
    print("page: $page");
    try {
      var response = await http
          .get(Uri.parse("$_baseUrl/sample-data/users?offset=$page&limit=20"));

      if (response.statusCode == 200) {
        return APIResponse(error: false, data: response);
      }
      return APIResponse(error: true, errorMessage: "An error occured");
    } catch (e) {
      return APIResponse(error: true, errorMessage: e.toString());
    }
  }
}
