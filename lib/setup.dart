
import 'package:flutter/cupertino.dart';

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await getStorageValues();
}

String? token;
String? smsId;

// Future<void> getStorageValues() async {
//   // token = 315ebafe5d179625e1646ee181cc09b2
//   token = await AppStorage.read(StorageKey.token);
//   smsId = await AppStorage.read(StorageKey.smsId);
//   l.w(token ?? '------\n------------\n-----------\n-------' ' ====================================');
// }
