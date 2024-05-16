import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseNetwork{
  static final String baseUrl = "https://imdb-top-100-movies.p.rapidapi.com"; // masukkan endpoint API
  static final key = "https://imdb-top-100-movies.p.rapidapi.com";

  static Future<Map<String, dynamic>> get(String partUrl) async {
    final String fullUrl = baseUrl + "/" + partUrl;

    debugPrint("BaseNetwork - fullUrl: $fullUrl");
    final response = await http.get
      (Uri.parse(fullUrl),
      headers: {
        'X-RapidAPI-Key': key,
      }
    );
    return _processResponse(response);
  }

  static Future<Map<String, dynamic>> _processResponse(http.Response response) async {
    final body = response.body;
    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      print("processResponse error");
      return {"error": true};
    }
  }

  static void debugPrint(String value) {
    print("[BASE_NETWORK] - $value");
  }
}