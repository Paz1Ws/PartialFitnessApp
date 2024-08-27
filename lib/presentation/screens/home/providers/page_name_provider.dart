import 'package:flutter_riverpod/flutter_riverpod.dart';

// To change the name based in the user name, add $name.
final userNameProvider = StateProvider<String>(
  (ref) => 'Hi Adrián',
);
