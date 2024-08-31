class Language {
  Language({
    required this.code,
    required this.name,
  });
  final String code;
  final String name;

  static List<Language> languageList() {
    return [
      Language(code: 'en', name: 'English'),
      Language(code: 'uk', name: 'Українська'),
    ];
  }
}
