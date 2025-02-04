import 'package:multifast/src/generated/auth.pbgrpc.dart';

class UserRepository {
  late UserResponse user;

  void save(UserResponse userResponse) {
    user = userResponse;
  }
}
