import 'package:ecomappsample/model/trending_model.dart';

List<TrendingModel> getTrendingData(){

  List<TrendingModel> trendingData = new List();
  TrendingModel trendingModel = new TrendingModel();

  //1
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 1";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating = 4;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //2
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 2";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating =5;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //3
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 3";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating = 3;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //4
  trendingModel.imgAssetPath  = "assets/image.png";
  trendingModel.price = "\$30";
  trendingModel.productName = "Product Name 4";
  trendingModel.storeName = "Store Name";
  trendingModel.starRating = 3;
  trendingModel.noOfPeopleRated = 301;
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();


  return trendingData;

}