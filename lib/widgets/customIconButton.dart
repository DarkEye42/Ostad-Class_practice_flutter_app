import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final String title, content, successText, errorText;
  final IconData iconName;

  const IconButtonWidget({
    super.key,
    required this.title,
    required this.content,
    required this.successText,
    required this.errorText,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(successText),
                            backgroundColor: Colors.green.shade400,
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                      icon: const Icon(Icons.check),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(errorText),
                            backgroundColor: Colors.red.shade300,
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                )
              ],
            );
          },
        );
      },
      icon: Icon(iconName),
    );
  }
}
