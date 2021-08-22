import 'package:line_chart/model/line-chart.model.dart';

class Post {
  String? image;
  String? title;
  String? date;
  String? like;
  List<LineChartModel>? chartData;

  Post({this.image, this.title, this.date, this.like, this.chartData});
}