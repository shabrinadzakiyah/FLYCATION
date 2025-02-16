import 'package:flutter/material.dart';
import 'package:flycation/ui/pages/home_page.dart';
import 'package:flycation/ui/pages/setting_page.dart';
import 'package:flycation/ui/pages/transaction_page.dart';
import 'package:flycation/ui/pages/wallet_page.dart';
import 'package:flycation/ui/pages/widgets/custom_buttom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPages extends StatelessWidget {
  const MainPages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
