import 'package:flutter/material.dart';

import '../../../core/widget/custom_drawer.dart';
import '../../../core/widget/whatsapp_button.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(selectedIndex: 0),
      backgroundColor: Colors.grey.shade50,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: WhatsappButton(),
      body: HomeScreenBody(),
    );
  }
}
