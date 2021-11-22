import 'package:celo_app/shared/theme/appcolors.dart';
import 'package:celo_app/wallet/wallet_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_widget.dart';

class AnuncioWidget extends StatefulWidget {
  final String estabelcimento;
  final String? image;
  final String data;
  final String local;
  const AnuncioWidget({
    Key? key,
    this.estabelcimento = "",
    required this.image,
    this.data = "",
    this.local = "",
  }) : super(key: key);

  @override
  _AnuncioWidgetState createState() => _AnuncioWidgetState();
}

class _AnuncioWidgetState extends State<AnuncioWidget> {
  List<String> chaves = [
    "0x7BF16ADC5179d6094b81a878FB86739448A05b49",
    "0x4004d76227216C6C5e1f80aa0A8dA6976be78FF5",
    "0x423182bD7B40929E6AD275e0Bf83d78bE5881299",
  ];
  List<num> valor = [2, 3, 1];

  String carteira = "";
  int index = 0;
  WalletController walletController = WalletController();
  void teste() {}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: AppColors.lowBlack,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black,
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: "${widget.estabelcimento} \n",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: "${widget.data} | ",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: "${widget.local} ",
                                  style: const TextStyle(
                                    color: Color(0xff610094),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.share,
                          color: AppColors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.amberAccent,
                  child: Image.network(widget.image != null
                      ? widget.image!
                      : "https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-1-scaled.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mirands, Entropia Entalpia, Ka...",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: const [
                          IconWidget(
                            icon: CupertinoIcons.heart,
                            iconFill: CupertinoIcons.heart_fill,
                            color: Colors.red,
                          ),
                          IconWidget(
                            icon: CupertinoIcons.bell,
                            iconFill: CupertinoIcons.bell_fill,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: Colors.black,
            title: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choose payment',
                    style: TextStyle(color: Colors.white),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.red,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            print(carteira);
                            Navigator.pop(context, 'OK');
                          },
                          icon: const Icon(
                            Icons.close_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            content: SizedBox(
              height: 200,
              child: Column(
                children: [
                  TextField(
                    onChanged: (teste) {
                      carteira = teste;
                    },
                    obscureText: true,
                    cursorColor: AppColors.lowBlack,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white,
                              style: BorderStyle.solid)),
                      labelText: 'Change you key',
                      fillColor: AppColors.primary,
                      filled: true,
                      focusColor: AppColors.lowBlack,
                      hoverColor: AppColors.lowBlack,
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print(carteira);
                      walletController.sendEther(
                        chaves[index],
                        valor[index],
                        "172a0346da156e90b97f40b99903216d4067517cc81a664e46a870776498be1e",
                      );
                      index++;
                      Navigator.pop(context, 'OK');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.purple.shade300,
                        height: 60,
                        width: double.maxFinite,
                        child: Center(
                            child: Text(
                          "${valor[index]} Eth",
                          style: const TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
