// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names

import 'package:celo_app/shared/theme/appcolors.dart';
import 'package:celo_app/widgets/metric_widget.dart';
import 'package:flutter/material.dart';

class NFTtile extends StatelessWidget {
  final String local;
  final String imageURL;
  final int favorite;
  final int coment;
  final int people;

  const NFTtile({
    Key? key,
    required this.imageURL,
    required this.favorite,
    required this.coment,
    required this.people,
    required this.local,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    double widthBox = widthScreen / 2 - widthScreen * 0.08;
    double heightBox = 250;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: widthBox,
          height: heightBox,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageURL),
                  ),
                ),
                height: heightBox * 0.65,
              ),
              Container(
                width: widthBox,
                color: AppColors.lowBlack,
                height: heightBox * 0.35,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            local,
                            style: const TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      MetricWidget(
                        coment: coment,
                        favorite: favorite,
                        people: people,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
