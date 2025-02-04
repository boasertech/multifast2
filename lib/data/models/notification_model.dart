class NotificationModel {
  final String topic;
  final String title;
  final String body;
  final String? data;

  NotificationModel({
    required this.topic,
    required this.title,
    required this.body,
    this.data,
  });

  Map<String, dynamic> toJson() {
    return {
      'Topic': topic,
      'Title': title,
      'Body': body,
      'Data': data,
    };
  }

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      topic: json['Topic'],
      title: json['Title'],
      body: json['Body'],
      data: json['Data'],
    );
  }
}
