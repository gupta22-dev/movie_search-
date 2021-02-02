import 'package:http/http.dart' as http;

class API {
  static Future getUsers(search) {
    var url =
        "https://api.themoviedb.org/3/search/movie?api_key=43236c9b4ffaa78012ee092b4e4f74d8&language=en-US&query=" +
            search.toString() +
            "&page=1&include_adult=false";
    return http.get(url);
  }
}
