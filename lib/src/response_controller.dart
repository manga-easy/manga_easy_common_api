import 'dart:convert';
import 'package:common_api/src/custom_filter_log.dart';
import 'package:common_api/src/response_api.dart';
import 'package:logger/logger.dart';
import 'package:shelf_router/shelf_router.dart';

abstract class Controller extends ResponseApi {
  final logger = Logger(filter: CustomFilterLog());
  abstract final String version;
  void log({
    required String method,
    required String path,
    Map<String, dynamic>? params,
    dynamic error,
    jwtUser,
  }) {
    logger.d(
      '=============================== INICIO ==============================\n'
      '=============== Data: ${DateTime.now()} \n'
      '=============== Method: $method \n'
      '=============== Path: $path \n'
      '=============== params: ${json.encode(params)} \n'
      '=============== Error: $error \n'
      '=============== Stack: ${returnStack(error)}'
      '=============== jwt: $jwtUser'
      '============================= FIM ================================\n',
    );
  }

  String returnStack(dynamic error) {
    try {
      return '${error.stackTrace} \n';
    } catch (e) {
      return '\n';
    }
  }

  void routes(Router router);
}
