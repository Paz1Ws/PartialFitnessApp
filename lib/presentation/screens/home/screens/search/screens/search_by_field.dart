import 'package:flutter/material.dart';

import '../../../../../widgets/widgets.dart';

List<Widget> exercises = [
  SearchContainer(search: 'Full Body Stretching'),
  SearchContainer(search: 'Yoga'),
  SearchContainer(search: 'Pilates'),
  SearchContainer(search: 'Cardio'),
  SearchContainer(search: 'Strength Training'),
];
List<Widget> nutrition = [
  SearchContainer(search: 'Keto'),
  SearchContainer(search: 'Vegan'),
  SearchContainer(search: 'Vegetarian'),
  SearchContainer(search: 'Low Carb'),
  SearchContainer(search: 'High Protein'),
];

class SearchByField extends StatelessWidget {
  final String searchBy;
  const SearchByField({required this.searchBy, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            searchBy == 'Workout'
                ? Column(
                    children: exercises,
                  )
                : Column(
                    children: nutrition,
                  ),
          ],
        );
      },
    );
  }
}
