/*
 * @Author: 郝怿
 * @Date: 2022-02-09 00:13:04
 * @LastEditTime: 2022-02-09 00:27:27
 * @LastEditors: 郝怿
 * @Description: 
 * @FilePath: /sakura/lib/pachong/home.dart
 */

import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;

class Home {
  Future<void> getHomeData() async {
    var url = Uri.parse('http://www.bumimi77.com/');

    var response = await http.get(url);
    var document = parse(response.body);

    var temp = document.getElementsByClassName("content-wrap g-clear");
    temp.forEach((ele) {
      print(ele
          .getElementsByClassName("icontent-left")
          .first
          .getElementsByClassName('p-mod-label')
          .first
          .text);
    });
  }
}
