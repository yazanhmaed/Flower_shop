class FlowerModel {
  final int plantId;
  int price;
  int count;
  final String title;
  final String type;
  final String image;
  bool isFavorated;

  FlowerModel(
      {required this.plantId,
      required this.price,
      required this.count,
      required this.title,
      required this.type,
      required this.image,
      required this.isFavorated});

  static List list = [potList, liliesList, chryList, roseList];

  static List<FlowerModel> potList = [
    FlowerModel(
      plantId: 1,
      price: 10,
      title: 'Pot 1',
      type: 'Flower Pot',
      image: 'assets/images/pot/1.png',
      count: 1,
      isFavorated: false,
    ),
    FlowerModel(
      plantId: 2,
      price: 20,
      title: 'Pot 2',
      type: 'Flower Pot',
      image: 'assets/images/pot/2.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 3,
      price: 15,
      title: 'Pot 3',
      type: 'Flower Pot',
      image: 'assets/images/pot/3.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 4,
      price: 15,
      title: 'Pot 4',
      type: 'Flower Pot',
      image: 'assets/images/pot/4.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 5,
      price: 25,
      title: 'Pot 5',
      type: 'Flower Pot',
      image: 'assets/images/pot/4.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 6,
      price: 14,
      title: 'Pot 6',
      type: 'Flower Pot',
      image: 'assets/images/pot/6.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 7,
      price: 18,
      title: 'Pot 7',
      type: 'Flower Pot',
      image: 'assets/images/pot/7.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 8,
      price: 32,
      title: 'Pot 8',
      type: 'Flower Pot',
      image: 'assets/images/pot/8.png',
      isFavorated: false,
      count: 1,
    ),
  ];

  static List<FlowerModel> roseList = [
    FlowerModel(
      plantId: 1,
      price: 32,
      title: 'Rose 1',
      type: 'Flower Rose',
      image: 'assets/images/rose/1.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 2,
      price: 12,
      title: 'Rose 2',
      type: 'Flower Rose',
      image: 'assets/images/rose/2.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 3,
      price: 12,
      title: 'Rose 3',
      type: 'Flower Rose',
      image: 'assets/images/rose/3.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 4,
      price: 16,
      title: 'Rose 4',
      type: 'Flower Rose',
      image: 'assets/images/rose/4.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 5,
      price: 22,
      title: 'Rose 5',
      type: 'Flower Rose',
      image: 'assets/images/rose/5.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 6,
      price: 10,
      title: 'Rose 6',
      type: 'Flower Rose',
      image: 'assets/images/rose/6.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 7,
      price: 15,
      title: 'Rose 7',
      type: 'Flower Rose',
      image: 'assets/images/rose/7.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 8,
      price: 25,
      title: 'Rose 8',
      type: 'Flower Rose',
      image: 'assets/images/rose/8.png',
      isFavorated: false,
      count: 1,
    ),
  ];
  static List<FlowerModel> liliesList = [
    FlowerModel(
      plantId: 1,
      price: 32,
      title: 'Lilies 1',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/1.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 2,
      price: 12,
      title: 'Lilies 2',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/2.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 3,
      price: 14,
      title: 'Lilies 3',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/3.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 4,
      price: 22,
      title: 'Lilies 4',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/4.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 5,
      price: 21,
      title: 'Lilies 5',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/5.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 6,
      price: 16,
      title: 'Lilies 6',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/6.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 7,
      price: 16,
      title: 'Lilies 7',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/7.png',
      isFavorated: false,
      count: 1,
    ),
  ];

  static List<FlowerModel> chryList = [
    FlowerModel(
      plantId: 1,
      price: 11,
      title: 'Chrysanthemum 1',
      type: 'Flower Chrysanthemum',
      image: 'assets/images/Chrysanthemum/1.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 2,
      price: 12,
      title: 'Chrysanthemum 2',
      type: 'Flower Chrysanthemum',
      image: 'assets/images/Chrysanthemum/2.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 3,
      price: 22,
      title: 'Chrysanthemum 3',
      type: 'Flower Chrysanthemum',
      image: 'assets/images/Chrysanthemum/3.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 4,
      price: 22,
      title: 'Chrysanthemum 4',
      type: 'Flower Chrysanthemum',
      image: 'assets/images/Chrysanthemum/4.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 5,
      price: 14,
      title: 'Chrysanthemum 5',
      type: 'Flower Chrysanthemum',
      image: 'assets/images/Chrysanthemum/5.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 6,
      price: 17,
      title: 'Chrysanthemum 6',
      type: 'Flower Chrysanthemum',
      image: 'assets/images/Chrysanthemum/6.png',
      isFavorated: false,
      count: 1,
    ),
  ];

  static List<FlowerModel> topRatedList = [
    FlowerModel(
      plantId: 8,
      price: 25,
      title: 'Rose 8',
      type: 'Flower Rose',
      image: 'assets/images/rose/8.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 4,
      price: 22,
      title: 'Lilies 4',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/4.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 5,
      price: 21,
      title: 'Lilies 5',
      type: 'Flower Lilies',
      image: 'assets/images/Lilies/5.png',
      isFavorated: false,
      count: 1,
    ),
  ];

  static List<FlowerModel> nearToYou = [
    FlowerModel(
      plantId: 1,
      price: 32,
      title: 'Rose 1',
      type: 'Flower Rose',
      image: 'assets/images/rose/1.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 2,
      price: 12,
      title: 'Rose 2',
      type: 'Flower Rose',
      image: 'assets/images/rose/2.png',
      isFavorated: false,
      count: 1,
    ),
    FlowerModel(
      plantId: 4,
      price: 15,
      title: 'Pot 4',
      type: 'Flower Pot',
      image: 'assets/images/pot/4.png',
      isFavorated: false,
      count: 1,
    ),
  ];
}
