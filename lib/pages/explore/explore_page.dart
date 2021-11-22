import 'package:celo_app/wallet/wallet_controller.dart';
import 'package:celo_app/widgets/anuncio_widget.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  double balance = -1;
  @override
  Widget build(BuildContext context) {
    WalletController wallet_controller = WalletController();

    return Container(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              AnuncioWidget(
                estabelcimento: "Gop Tun no Ibira",
                data: "01/12",
                local: "Parque do Ibirapuera",
                image:
                    "https://images.pexels.com/photos/7803689/pexels-photo-7803689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              ),
              AnuncioWidget(
                estabelcimento: "House me",
                data: "07/12",
                local: "centro",
                image:
                    "https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
              ),
              AnuncioWidget(
                estabelcimento: "Gdsa dsa fasd fha",
                data: "08/13",
                local: "Parque do Ibirapuera",
                image:
                    "https://images.pexels.com/photos/3249760/pexels-photo-3249760.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              ),
              AnuncioWidget(
                estabelcimento: "Sinfonic",
                data: "27/11",
                local: "Brasil",
                image:
                    "https://images.pexels.com/photos/2102568/pexels-photo-2102568.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
