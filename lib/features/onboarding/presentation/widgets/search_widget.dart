import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/settings_button.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search For a Coffee',
                  hintStyle: AppStyle.regular14().copyWith(
                    color: const Color(0xff989898),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          SettingsButton(),
        ],
      ),
    );
  }
}
