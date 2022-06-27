import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/custom_button.dart';
import 'package:mashael_al_qasr_5/utils/api.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/language/language_util.dart';
import 'package:mashael_al_qasr_5/utils/show_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showConfirmationDialog({
  required BuildContext context,
  required String confirmationSentance,
  VoidCallback? onPressedConfirm,
  String? confirmButtonLabel,
  VoidCallback? onPressedCancel,
  bool? showCancelButton,
  bool barrierDismissible = true,
  bool dense = true,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return AlertDialog(
        title: Text(t(context).attention),
        content: Text(confirmationSentance),
        actions: [
          if (onPressedCancel != null)
            SizedBox(
              width: dense ? 80.0 : null,
              child: CustomButton(
                buttonColors: Colors.white,
                textColors: primaryColor,
                label: t(context).cancel,
                onPressed: () {
                  Navigator.pop(context);
                  onPressedCancel();
                },
              ),
            ),
          if (onPressedConfirm != null)
            SizedBox(
              width: dense ? 80.0 : null,
              child: CustomButton(
                textColors: Colors.white,
                buttonColors: primaryColor,
                label: confirmButtonLabel ?? t(context).confirm,
                onPressed: () {
                  Navigator.pop(context);
                  onPressedConfirm();
                },
              ),
            ),
        ],
      );
    },
  );
}

Future<void> showVisitUrlDialog({
  required BuildContext context,
  required String content,
  required String buttonLabel,
  required String urlToFetch,
  bool? showCancelButton,
  String? title,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text(title ?? "${t(context).attention} !"),
        content: Text(content),
        actions: [
          SizedBox(
            width: 80.0,
            child: FutureBuilder<String>(
              future: Api.get(urlToFetch),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  );
                }

                String downloadUrl = snapshot.data!;
                return CustomButton(
                  textColors: Colors.white,
                  buttonColors: primaryColor,
                  label: buttonLabel,
                  onPressed: () async {
                    try {
                      await launch(downloadUrl);
                    } catch (e) {
                      showSnackBar(
                        context,
                        t(context).errorInTheDownloadLink,
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      );
    },
  );
}
