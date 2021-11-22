/*import 'package:flutter/cupertino.dart';

class WalletWidget extends StatefulWidget {
  const WalletWidget({ Key? key }) : super(key: key);

  @override
  _WalletWidgetState createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
                future: wallet_controller.getBalance(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text.rich(
                      TextSpan(
                        text: "Seu saldo é: ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        children: [
                          TextSpan(
                            text: NumberFormat("0.00").format(snapshot.data),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),

              /* division code */

              TextButton(
                style: ButtonStyle(),
                onPressed: () async {
                  await wallet_controller.sendEther(
                    "0x901507B322F7fF864039f71542fD342f82f07BC1",
                    1,
                  );
                  balance = await wallet_controller.getBalance();
                },
                child: Container(
                  color: Colors.red,
                  child: Text("data"),
                ),
              );
  }
}

*/