class PortfolioModel {
  String name;
  String description;
  List<String> images;
  List<String> responsibilities;
  List<String> technologies;
  String? appStore;
  String? playStore;
  String? external;
  String logoLink;

  PortfolioModel({
    required this.name,
    required this.appStore,
    required this.external,
    required this.logoLink,
    required this.playStore,
    required this.responsibilities,
    required this.technologies,
    required this.description,
    required this.images,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PortfolioModel &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
