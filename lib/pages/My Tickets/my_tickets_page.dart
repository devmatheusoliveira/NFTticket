import 'package:celo_app/shared/theme/appcolors.dart';
import 'package:celo_app/widgets/NFT_tile.dart';
import 'package:flutter/material.dart';

class MyTicketsPage extends StatelessWidget {
  const MyTicketsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.maxFinite,
      height: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Eventos Futuros",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Eventos passados",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                NFTtile(
                    local: "House Me",
                    coment: 40,
                    people: 40,
                    favorite: 232,
                    imageURL:
                        "https://images.pexels.com/photos/7803689/pexels-photo-7803689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                NFTtile(
                    local: "Rock na casinha",
                    coment: 40,
                    people: 40,
                    favorite: 232,
                    imageURL:
                        "https://images.pexels.com/photos/7149141/pexels-photo-7149141.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
              ],
            ),
            Row(
              children: const [
                NFTtile(
                    local: "House Me",
                    coment: 60,
                    people: 1000,
                    favorite: 700,
                    imageURL:
                        "https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                NFTtile(
                    local: "Song in beack",
                    coment: 34,
                    people: 40,
                    favorite: 232,
                    imageURL:
                        "https://images.pexels.com/photos/7149181/pexels-photo-7149181.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
