class Lesson {
  final int id, hazard;
  final String title, description, image;

  Lesson({this.id, this.hazard, this.title, this.description, this.image});
}

List<Lesson> lessons = [
  Lesson(
      id: 1,
      hazard: 13,
      title: "Injury",
      image: "assets/icons/5855613.png",
      description:
          "An injury is damage to your body. It is a general term that refers to harm caused byaccidents, falls, hits, weapons, and more. In the U.S., millions of people injure themselvesevery year. These injuries range from minor to life-threatening.")
];
