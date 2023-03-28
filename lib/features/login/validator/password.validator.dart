String? passwordFormatValidator(String input) {
  if (input.length < 4) {
    return 'Password should be at least 4 characters';
  }

  return null;
}
