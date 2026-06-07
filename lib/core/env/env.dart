class Env {
  static const String baseUrl = String.fromEnvironment(
    "BASE_URL",
    defaultValue: "https://www.themealdb.com",
  );
  static const String mealDbApiKey = String.fromEnvironment(
    "MEAL_DB_API_KEY",
    defaultValue: "1",
  );
}
