import 'package:pigeon/pigeon.dart';

class StrctSrc {
  int? a;
  int? b;
}

@HostApi()
abstract class JavaApi {
  int? sum(StrctSrc src);
}
