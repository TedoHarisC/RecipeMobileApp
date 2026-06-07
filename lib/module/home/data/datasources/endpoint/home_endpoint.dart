import 'package:recipe_app/core/env/env.dart';

class HomeEndpoint{
  static final String _urlWithCredentials = "/api/json/v1/${Env.mealDbApiKey}";

  static String categoryRecipe() => "$_urlWithCredentials/categories.php";
  static String randomRecipe() => "$_urlWithCredentials/random.php";
  static String searchRecipe(String keyword) => "$_urlWithCredentials/search.php";
}