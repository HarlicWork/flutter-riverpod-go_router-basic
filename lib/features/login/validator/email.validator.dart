String? emailFormatValidator(String input) {
  if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input)) {
    return 'Please enter valid email';
  }

  return null;
}
