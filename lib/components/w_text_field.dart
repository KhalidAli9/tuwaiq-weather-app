import 'package:flutter/material.dart';
import 'package:weather_api/screens/home_screen.dart';

class WTextField extends StatefulWidget {
  const WTextField({
    super.key,
  });

  @override
  State<WTextField> createState() => _WTextFieldState();
}

class _WTextFieldState extends State<WTextField> {
  TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: Colors.grey[900],
      decoration: InputDecoration(
        focusColor: Colors.grey[900],
        prefixIconColor: Colors.grey[900],
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        fillColor: Color.fromARGB(81, 218, 220, 251),
        prefixIcon: const Icon(Icons.search),
        filled: true,
      ),
      onSubmitted: (text) {
        showBottomSheet(
          context: context,
          builder: (context) {
            return SelectingSheet(keyword: text);
          },
        );
      },
    );
  }
}
