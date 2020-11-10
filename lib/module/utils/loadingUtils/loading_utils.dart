import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingUtils {
  show({status = 'loading...'}) {
    EasyLoading.show(status: status);
  }

  showProgress({
    double value = 0.5,
    String status = 'loading...',
  }) {
    EasyLoading.showProgress(value, status: status);
  }

  showSuccess({status = 'Success'}) {
    EasyLoading.showSuccess(status);
  }

  showError({status = 'Error'}) {
    EasyLoading.showError(status);
  }

  showInfo({status = 'Information'}) {
    EasyLoading.showInfo('Information');
  }

  showToast({status = 'Toast'}) {
    EasyLoading.showToast(status);
  }

  dismiss() {
    EasyLoading.dismiss();
  }
}
