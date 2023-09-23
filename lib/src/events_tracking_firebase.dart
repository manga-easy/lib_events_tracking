import 'package:events_tracking/events_tracking.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class EventsTrackingFirebase implements EventsTracking {
  @override
  Future<void> onCurrentScreen(String screenName, Map? additional) async {
    await FirebaseAnalytics.instance.setCurrentScreen(screenName: screenName);
  }

  @override
  Future<void> starting(String? userID) async {
    await FirebaseAnalytics.instance.setUserId(id: userID);
  }
}
