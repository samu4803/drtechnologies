class DRTechnologies {
  static late DRTechnologies instance;
  double? scrollPosition;
  void initialize() {
    DRTechnologies.instance = DRTechnologies();
    instance.scrollPosition = 0;
  }
}
