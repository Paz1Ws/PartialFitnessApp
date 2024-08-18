import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: To change the name based in the user name, add $name.
final userName = StateProvider<String>(
  (ref) => 'Hi Adrián',
);
