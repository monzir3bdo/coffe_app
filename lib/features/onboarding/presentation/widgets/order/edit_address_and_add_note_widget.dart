import 'package:coffee_shop/features/onboarding/presentation/widgets/order/add_note_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'edit_address_widget.dart';

class EditAddressAndAddNoteWidget extends StatelessWidget {
  const EditAddressAndAddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        EditAddressWidget(),
        Gap(8),
        AddNoteWidget(),
      ],
    );
  }
}
