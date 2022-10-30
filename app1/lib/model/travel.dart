// travel class

class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> GeneratePosts() {
    return [
      Travel('Place 1', 'Place 1', 'assets/pics/image1.jpg'),
      Travel('Place 2', 'Place 2', 'assets/pics/image2.jpg'),
      Travel('Place 3', 'Place 3', 'assets/pics/image3.jpg'),
      Travel('Place 4', 'Place 4', 'assets/pics/image4.jpg'),
      Travel('Place 5', 'Place 5', 'assets/pics/image5.jpg'),
    ];
  }
}
