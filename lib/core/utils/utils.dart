import 'package:http/http.dart' as http;
void getData()async{
  var request = await http.get( Uri.parse('http://devapiv3.dealsdray.com/api/v2/user/home/withoutPrice'));
print(request.body);


  // if (response.statusCode == 200) {
  //   print(await response.stream.bytesToString());
  //
  // }
  // else {
  // print(response.reasonPhrase);
  // }
}


