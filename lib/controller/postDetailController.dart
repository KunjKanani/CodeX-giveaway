import 'package:giveaway/model/post.dart';
import 'package:line_chart/model/line-chart.model.dart';

class PostData {
  List<Post> postDetails = [
    Post(
      image: "post1.jpg",
      title: "Gumao.",
      date: "5 may, 2020",
      like: "5.9k",
      chartData: [
        LineChartModel(amount: 0),
        LineChartModel(amount: 0),
        LineChartModel(amount: 0.5),
        LineChartModel(amount: -0.5),
        LineChartModel(amount: 1),
        LineChartModel(amount: -1.2),
        LineChartModel(amount: 0.5),
        LineChartModel(amount: 0),
        LineChartModel(amount: 0.5),
        LineChartModel(amount: 0.3),
      ]
    ),
    Post(
        image: "post2.jpg",
        title: "elveno - web UI",
        date: "25 april, 2020",
        like: "25.2k",
        chartData: [
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0.5),
          LineChartModel(amount: -0.1),
          LineChartModel(amount: 0.7),
          LineChartModel(amount: -0.2),
          LineChartModel(amount: 1.5),
          LineChartModel(amount: 0.1),
          LineChartModel(amount: 0.1),
          LineChartModel(amount: 0.1),
        ]
    ),
    Post(
        image: "post3.jpg",
        title: "contra uikit",
        date: "29 march, 2020",
        like: "35.9k",
        chartData: [
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 1.0),
          LineChartModel(amount: -0.8),
          LineChartModel(amount: 2.5),
          LineChartModel(amount: 0.2),
          LineChartModel(amount: 1.5),
          LineChartModel(amount: 0.7),
          LineChartModel(amount: 0.7),
        ]
    ),
    Post(
        image: "post4.jpg",
        title: "running girl",
        date: "15 january, 2019",
        like: "55.7k",
        chartData: [
          LineChartModel(amount: 0),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0.5),
          LineChartModel(amount: -0.5),
          LineChartModel(amount: 1),
          LineChartModel(amount: -1.2),
          LineChartModel(amount: 0.5),
          LineChartModel(amount: 0),
          LineChartModel(amount: 0.5),
          LineChartModel(amount: 0.3),
        ]
    ),
  ];
}