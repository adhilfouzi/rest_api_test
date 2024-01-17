import 'dart:convert';

import 'package:api_demo/number_fact_response.dart';
import 'package:http/http.dart' as http;

Future<NumberFactResponce> getNumberFact({required String number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));

  if (response.statusCode == 200) {
    // Check if the response content type is JSON
    if (response.headers['content-type']
            ?.toLowerCase()
            .contains('application/json') ??
        false) {
      final bodyJson = jsonDecode(response.body) as Map<String, dynamic>;
      final data = NumberFactResponce.fromJson(bodyJson);
      return data;
    } else {
      // Handle the case where the API returns a different content type (e.g., HTML)
      throw FormatException(
          'Unexpected content type: ${response.headers['content-type']}');
    }
  } else {
    // Handle non-200 status codes
    throw Exception(
        'Failed to fetch data. Status code: ${response.statusCode}');
  }
}
