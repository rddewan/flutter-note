bool isValidEmail(String? email) {
  const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regEmail = RegExp(pattern);

  if (email == null || email.isEmpty) {
    return false;
  }

  if (regEmail.hasMatch(email)) {
    return true;
  }

  return false;
}
