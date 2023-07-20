import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.serverFailure(String message) = _serverFailure;
  const factory MainFailure.clientFailure() = _clientFailure;
}
