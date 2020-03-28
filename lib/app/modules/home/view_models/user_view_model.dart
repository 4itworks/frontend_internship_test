import 'package:frontent_internship_test/app/shared/models/user_model.dart';

class UserViewModel {
  final String name;
  final String email;

  UserViewModel(this.name, this.email);

  factory UserViewModel.fromUserModel(UserModel user){
    final userView = UserViewModel(user.name, user.email);
    return userView;
  }
}