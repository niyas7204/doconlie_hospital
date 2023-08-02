import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';

class ApiResponse<T> {
  MainFailure? failure;
  T? data;
  ResponseStatus? status;
  ApiResponse(this.failure, this.data, this.status);
  ApiResponse.loading() : status = ResponseStatus.loading;
  ApiResponse.error(this.failure) : status = ResponseStatus.error;
  ApiResponse.complete(this.data) : status = ResponseStatus.complete;
  ApiResponse.initial() : status = ResponseStatus.initial;
}
