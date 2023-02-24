import 'dart:convert';
import 'package:common_api/src/enums/response_status.dart';
import 'package:shelf/shelf.dart';

class ResponseApi {
  final Map<String, String> header = {
    'Content-Type': 'application/json; charset=utf-8',
  };
  Response badRequest({required String message}) {
    return Response.badRequest(
      body: json.encode({
        'status': ResponseStatus.error.name,
        'message': message,
      }),
      headers: header,
    );
  }

  Response ok({required String message, required List data}) {
    return Response.ok(
      json.encode({
        'status': ResponseStatus.sucesso.name,
        'message': message,
        'quant': data.length,
        'data': data,
      }),
      headers: header,
    );
  }

  Response forbidden({required String message}) {
    return Response.forbidden(
      json.encode({
        'status': ResponseStatus.error.name,
        'message': message,
      }),
      headers: header,
    );
  }

  Response unauthorized({required String message}) {
    return Response.unauthorized(
      json.encode({
        'status': ResponseStatus.error.name,
        'message': message,
      }),
      headers: header,
    );
  }

  Response error({required String message}) {
    return Response.forbidden(
      json.encode({
        'status': ResponseStatus.error.name,
        'message': message,
      }),
      headers: header,
    );
  }

  Response internalServerError({required String message}) {
    return Response.internalServerError(
      body: json.encode({
        'status': ResponseStatus.error.name,
        'message': message,
      }),
      headers: header,
    );
  }
}
