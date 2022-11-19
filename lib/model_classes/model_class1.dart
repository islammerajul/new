class Emoji {
  String emo;
  String name;

  Emoji(this.emo, this.name);

  static List<Emoji> emojies() {
    return [
      Emoji("😔", "Badly"),
      Emoji("😊", "Fine"),
      Emoji("😁", "Fine"),
      Emoji("😄", "Excelent")
    ];
  }
}
 