class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/images/feedbackImage.png',
      titleTxt: 'Reverse Osmosis',
      kacl: 200,
      meals: <String>['Membrane-', 'based', 'desalination'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/images/helpImage.png',
      titleTxt: 'Multi-Stage Flash',
      kacl: 1500,
      meals: <String>['Thermal', 'evaporation', 'process'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/images/inviteImage.png',
      titleTxt: 'Electrodialysis',
      kacl: 150,
      meals: <String>['Ion-exchange', 'separation'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/images/feedbackImage.png',
      titleTxt: 'Membrane Distillation',
      kacl: 400,
      meals: <String>['Vapor-based', 'purification'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
    MealsListData(
      imagePath: 'assets/images/helpImage.png',
      titleTxt: 'Vapor Compression',
      kacl: 750,
      meals: <String>['Energy-efficient', 'vapor', 'compression'],
      startColor: '#BF0A30',
      endColor: '#BF0A90',
    ),
    MealsListData(
      imagePath: 'assets/images/inviteImage.png',
      titleTxt: 'Solar Desalination',
      kacl: 300,
      meals: <String>['Sun-', 'powered', 'purification'],
      startColor: '#9ACD32',
      endColor: '#9ACD90',
    ),
  ];
}
