import 'package:common_api/src/custom_filter_log.dart';
import 'package:logger/logger.dart';

abstract class DataBaseService<T> {
  final logger = Logger(filter: CustomFilterLog());

  Future<T> exec({
    required String query,
    Map<String, dynamic>? substitutionValues,
  });

  void log(String query, e) {
    logger.d(
      '=============================== INICIO ==============================\n'
      '=============== query: $query'
      '=============== execption: $e'
      '============================= FIM ================================\n',
    );
  }
}
