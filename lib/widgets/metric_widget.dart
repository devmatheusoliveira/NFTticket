import 'package:celo_app/shared/theme/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MetricWidget extends StatelessWidget {
  final int favorite;
  final int coment;
  final int people;

  const MetricWidget({
    Key? key,
    required this.favorite,
    required this.coment,
    required this.people,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double size = 20;
    const double padding = 5;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: [
              const Icon(
                Icons.mode_comment_outlined,
                color: AppColors.primary,
                size: size,
              ),
              Text(
                coment.toString(),
                style: const TextStyle(color: AppColors.primary),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: [
              const Icon(
                CupertinoIcons.heart_fill,
                color: AppColors.primary,
                size: size,
              ),
              Text(
                favorite.toString(),
                style: const TextStyle(color: AppColors.primary),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: [
              const Icon(
                Icons.people_alt_outlined,
                color: AppColors.primary,
                size: size,
              ),
              Text(
                people.toString(),
                style: const TextStyle(color: AppColors.primary),
              )
            ],
          ),
        ),
      ],
    );
  }
}
