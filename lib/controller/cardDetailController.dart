import 'package:giveaway/model/cardDetails.dart';
import 'package:giveaway/utils/colors.dart';

class CardData {
  List<CardDetail> cardDetails = [
    CardDetail(
      title: "dribbble",
      handler: "realvjy",
      image: "dribble.png",
      uploadCount: 123,
      uploadType: "shots",
      likes: "623k",
      fans: "129k",
      cardColor: AppColors.orangeGradient,
    ),
    CardDetail(
      title: "behance",
      handler: "realvjy",
      image: "behance.png",
      uploadCount: 207,
      uploadType: "posts",
      likes: "623k",
      fans: "129k",
      cardColor: AppColors.blueGradient,
    ),
  ];
}
