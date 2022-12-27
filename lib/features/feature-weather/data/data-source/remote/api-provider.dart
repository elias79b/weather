
import 'package:dio/dio.dart';
import 'package:wather/core/utils/constans.dart';

class ApiProvider{
 final Dio _dio = Dio();

 var apikey = Constans.apikeys1;

 Future<dynamic>callCurrentWeather(cityName)async{
   var response = await _dio.get(
     '${Constans.baseUrl}/deta/2.5/weather',
     queryParameters: {
       'q' : cityName,
       'appid': apikey,
       'units':'metric'
     }
   );

   print('${response.data}eeeeeeeeeeeee');
   return response;
 }

}