import 'package:talker/talker.dart';

/// 单例模式
class Logger {
  static final Logger _instance = Logger._();

  factory Logger.instance() => _instance;

  Logger._();

  final _talker = Talker();

  void log(
    dynamic message, {
    LogLevel logLevel = LogLevel.debug,
    Object? exception,
    StackTrace? stackTrace,
    AnsiPen? pen,
  }) {
    _talker.log(
      message,
      logLevel: logLevel,
      exception: exception,
      stackTrace: stackTrace,
      pen: pen,
    );
  }

  void critical(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.critical(msg, exception, stackTrace);
  }

  void debug(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.debug(msg, exception, stackTrace);
  }

  void error(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.error(msg, exception, stackTrace);
  }

  void info(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.info(msg, exception, stackTrace);
  }

  void verbose(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.verbose(msg, exception, stackTrace);
  }

  void warning(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.warning(msg, exception, stackTrace);
  }
}
