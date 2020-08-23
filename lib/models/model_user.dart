import 'package:meta/meta.dart';

class UserModel {
  final uid;
  final displayName;
  final email;
  final photoURL;
  final isAnonymous;
  final providerData;

  UserModel(
      {@required this.uid,
      @required this.displayName,
      @required this.email,
      @required this.photoURL,
      @required this.isAnonymous,
      @required this.providerData});
}
