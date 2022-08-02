// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:the_new_york_times/models/home_data.dart';

const String url =
    'https://api.nytimes.com/svc/topstories/v2/home.json?api-key=uC5JJaEduAXk39TmJyq4aNQFyBILYhhL';

class ListCurrenciesRepository {
  Future<HomeData> fetchList() async {
    final client = RetryClient(http.Client());

    final response = await client.get(Uri.parse(url));

    final HomeData items;
    items = HomeData.fromJson(jsonDecode(response.body));

    return items;
  }
}
