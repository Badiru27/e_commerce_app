class ResponseMessage {
  String message;
  String? data;
  bool success;

  ResponseMessage(
      {required this.message, required this.success, required this.data});

  factory ResponseMessage.fromJson(Map<String, dynamic> json) =>
      ResponseMessage(
        message: json['message']??'',
        success: json['success']??'',
        data: json['data'],
      );
      
}
