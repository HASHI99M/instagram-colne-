abstract class Authentication {
  signIn(Function workDone, Function onError,
      {String email,
      String phone,
      String username,
      String password,
      String name});

  signUp(Function workDone, Function onError,
      {String email, String phone, String username, String password});

  signOut(Function workDone, Function onError);
}
