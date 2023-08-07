

import 'package:dio/dio.dart';
import 'package:favorcate/core/service/config.dart';


class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl:HttpConfig.baseURl,
      connectTimeout: Duration(seconds: HttpConfig.timeout)
  );

  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T> (
      String url,
      {
        String method = 'get',
        Map<String,dynamic>? params ,
        Interceptor? inter
      }
      ) async{

    // 创建单独配置
    final Options options = Options(method: method);

    // 全局拦截器
    final Interceptor dInter = InterceptorsWrapper(
      onRequest: (options,handler){
        print('请求拦截成功');
        return handler.next(options);
      },
      onResponse: (response,handler){
        print('响应拦截成功');
        return handler.next(response);
      },
      onError: (err,handler){
        print('失败拦截成功');
        return handler.next(err);
      }
    );

    List<Interceptor> inters = [dInter];

    // 请求单独拦截器
    if(inter != null) {
      inters.add(inter);
    }

    // 统一添加到拦截器中
    dio.interceptors.addAll(inters);


    Response res = await dio.request(url,queryParameters:params,options: options);

    return res.data;

  }


}