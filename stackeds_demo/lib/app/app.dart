import 'package:stackeds_demo/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stackeds_demo/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stackeds_demo/ui/views/home/home_view.dart';
import 'package:stackeds_demo/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackeds_demo/ui/views/counter/counter_view.dart';
import 'package:stackeds_demo/ui/views/login/login_view.dart';
import 'package:stackeds_demo/services/authentication_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CounterView),
MaterialRoute(page: LoginView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
