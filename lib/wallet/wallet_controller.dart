import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

class WalletController {
  String rpcUrl = "http://192.168.0.106:7545"; //wifi local
  String wsUrl = "ws://127.0.0.1:7545";

  Future<double> getBalance(String privateKey) async {
    Web3Client client = Web3Client(
      rpcUrl,
      Client(),
      socketConnector: () {
        return IOWebSocketChannel.connect(wsUrl).cast<String>();
      },
    );

    Credentials credentials = EthPrivateKey.fromHex(privateKey);

    EtherAmount balance =
        await client.getBalance(await credentials.extractAddress());

    return balance.getValueInUnit(EtherUnit.ether) as double;
  }

  Future<double> sendEther(
      String reciverAdress, dynamic value, String privateKey) async {
    Web3Client client = Web3Client(
      rpcUrl,
      Client(),
      socketConnector: () {
        return IOWebSocketChannel.connect(wsUrl).cast<String>();
      },
    );

    Credentials credentials = EthPrivateKey.fromHex(privateKey);

    EthereumAddress reciver = EthereumAddress.fromHex(reciverAdress);
    EthereumAddress ownAdress = await credentials.extractAddress();

    if (await getBalance(privateKey) - value >= 0) {
      client.sendTransaction(
        credentials,
        Transaction(
          from: ownAdress,
          to: reciver,
          value: EtherAmount.fromUnitAndValue(EtherUnit.ether, value),
        ),
      );
    } else {
      print("saldo insuficiente");
    }

    return (getBalance(privateKey));
  }
}
