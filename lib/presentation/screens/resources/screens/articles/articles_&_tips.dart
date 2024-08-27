import 'package:flutter/material.dart';
import '../../../../widgets/widgets.dart';

List<Widget> exampleCards = [
  ArticleCardDescription(
    image: 'assets/images/design/exercises/strenght_tips.png',
    descriptionTitle: 'Strength Training Tips',
    description: 'Maximize your strength training with these tips',
    rating: 5,
  ),
  ArticleCardDescription(
    image: 'assets/images/design/exercises/lose_weight.png',
    descriptionTitle: 'Healthy Weight Loss',
    description: 'So, you want to lose weight? Here are some tips',
    rating: 4,
  ),
  ArticleCardDescription(
    image: 'assets/images/design/exercises/plank_exercise.png',
    descriptionTitle: 'Unlock Your Gym Potential',
    description: 'Discover the best ways to unlock your gym potential',
    rating: 4.5,
  ),
  ArticleCardDescription(
    image: 'assets/images/design/exercises/strenght_tips.png',
    descriptionTitle: 'Strength Training Tips',
    description: 'Maximize your strength training with these tips',
    rating: 5,
  ),
  ArticleCardDescription(
    image: 'assets/images/design/exercises/lose_weight.png',
    descriptionTitle: 'Healthy Weight Loss',
    description: 'So, you want to lose weight? Here are some tips',
    rating: 4,
  ),
  ArticleCardDescription(
    image: 'assets/images/design/exercises/plank_exercise.png',
    descriptionTitle: 'Unlock Your Gym Potential',
    description: 'Discover the best ways to unlock your gym potential',
    rating: 4.5,
  ),
];

class ArticlesTips extends StatelessWidget {
  const ArticlesTips({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemExtent: 150,
      physics: NeverScrollableScrollPhysics(),
      itemCount: exampleCards.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            exampleCards[index],
          ],
        );
      },
    );
  }
}
