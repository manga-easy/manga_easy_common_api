import 'package:logger/logger.dart';

class CustomFilterLog extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}
