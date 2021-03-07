import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:freecodecamp/core/logger.dart';

class TrainingViewModel extends BaseViewModel {
  Logger log;

  TrainingViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}