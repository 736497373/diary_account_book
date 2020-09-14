import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class RootPageEvent {
  bool openDrawer;
  RootPageEvent(this.openDrawer);
}
