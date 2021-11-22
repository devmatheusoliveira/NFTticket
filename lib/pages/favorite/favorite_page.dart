import 'package:celo_app/widgets/anuncio_widget.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          AnuncioWidget(
            estabelcimento: "Gop Tun no Ibira",
            data: "27/08",
            local: "Parque do Ibirapuera",
            image:
                "https://images.pexels.com/photos/7803689/pexels-photo-7803689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
          ),
          AnuncioWidget(
            estabelcimento: "Gdsa dsa fasd fha",
            data: "27/08",
            local: "Parque do Ibirapuera",
            image:
                "https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
          ),
        ],
      ),
    );
  }
}
