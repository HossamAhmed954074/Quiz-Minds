import 'package:flutter/material.dart';
import 'package:quiz_minds/core/helper/connectivity_helper.dart';

class SafeTabb {
  static Future<void> execute({
    required BuildContext context,
    required Future<void> Function() onTap,
    VoidCallback? onNoEnternet,
  }) async {
    ScaffoldMessenger.of(context).clearSnackBars();
    try {
      final hasConnection =
          await ConnectivityHelper.hasRealInternetConnection();
      if (hasConnection) {
        await onTap();
      } else {
        onNoEnternet?.call();
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('No internet connection'),
              duration: const Duration(seconds: 2),
              action: SnackBarAction(
                label: 'Retry',
                onPressed: () async {
                  await execute(
                    context: context,
                    onTap: onTap,
                    onNoEnternet: onNoEnternet,
                  );
                },
              ),
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
            duration: const Duration(seconds: 2),
            action: SnackBarAction(
              label: 'Retry',
              onPressed: () async {
                await execute(
                  context: context,
                  onTap: onTap,
                  onNoEnternet: onNoEnternet,
                );
              },
            ),
          ),
        );
      }
    }
  }
}
