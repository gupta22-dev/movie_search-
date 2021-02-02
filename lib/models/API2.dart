import 'package:http/http.dart' as http;

class API2 {
  static Future getUsers() {
    var url =
        "https://api.themoviedb.org/3/genre/movie/list?api_key=43236c9b4ffaa78012ee092b4e4f74d8&language=en-US";
    return http.get(url);
  }
}
