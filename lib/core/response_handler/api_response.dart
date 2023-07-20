import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';

class ApiResponse<T> {
  MainFailure? failure;
  T? data;
  Status? status;
  ApiResponse(this.failure, this.data, this.status);
  ApiResponse.loading() : status = Status.loading;
  ApiResponse.error(this.failure) : status = Status.error;
  ApiResponse.complete(this.data) : status = Status.complete;
}
