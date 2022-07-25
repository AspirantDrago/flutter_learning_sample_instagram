class Account {
  late String login;

  Account(String login) {
    this.login = login;
  }

  @override
  String toString() {
    // TODO: implement toString
    return login;
  }
}