import 'package:common_api/src/custom_filter_log.dart';
import 'package:logger/logger.dart';

abstract class DataBaseService {
  final logger = Logger(filter: CustomFilterLog());

  Future exec(String query);

  void log(String query, e) {
    logger.d(
      '=============================== INICIO ==============================\n'
      '=============== query: $query'
      '=============== execption: $e'
      '============================= FIM ================================\n',
    );
  }
}
