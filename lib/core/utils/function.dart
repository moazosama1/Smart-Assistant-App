String parseBold(String text) {
  return text.replaceAllMapped(
    RegExp(r'\*\*(.*?)\*\*'),
    (match) => match.group(1)!.toUpperCase(),
  );
}
