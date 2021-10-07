import 'dart:convert';

class ApiResponse {
  bool? success;
  dynamic data;
  DateTime? starttime;

  ApiResponse({
    this.success,
    this.data,
    this.starttime,
  });

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'data': data,
      'starttime': starttime!.millisecondsSinceEpoch,
    };
  }

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      success: map['success'],
      data: map['data'],
      starttime: DateTime.fromMillisecondsSinceEpoch(map['starttime']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiResponse.fromJson(String source) =>
      ApiResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'ApiResponse(success: $success, data: $data, starttime: $starttime)';
}
