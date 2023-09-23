abstract interface class EventsTracking {
  Future<void> starting(String? userID);
  Future<void> onCurrentScreen(String screenName, Map? additional);
}
