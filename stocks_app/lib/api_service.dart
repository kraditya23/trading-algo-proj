import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://127.0.0.1:8000";

  static Future<String> fetchStockGraph(String symbol, String period) async {
    final response = await http.get(Uri.parse("$baseUrl/get_stock_graph?symbol=$symbol&period=$period"));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData['image'] != null) {
        return jsonData['image'];
      } else {
        throw Exception("Stock not found");
      }
    } else {
      throw Exception("Failed to fetch graph");
    }
  }
}