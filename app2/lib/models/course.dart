class Course {
  String? imgUrl;
  String? author;
  String? authorImage;
  String? title;
  String? durition;

  Course(this.imgUrl, this.author, this.authorImage, this.title, this.durition);

  // create lists Courses
  static List<Course> generateCourses() {
    return [
      Course(
          'https://mir-s3-cdn-cf.behance.net/project_modules/fs/167544157492405.637a39aa2c9c5.jpg',
          'Tars aladin',
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/6f0135148066321.62ceb62151122.jpg',
          'Pixel Art with aladin',
          "2h30min"),
      Course(
          'https://mir-s3-cdn-cf.behance.net/project_modules/fs/167544157492405.637a39aa2c9c5.jpg',
          'Tars aladin',
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/6f0135148066321.62ceb62151122.jpg',
          'Pixel Art with aladin',
          "2h30min")
    ];
  }
}
