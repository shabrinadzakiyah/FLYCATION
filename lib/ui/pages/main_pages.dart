import 'package:flutter/material.dart';
import 'package:flycation/ui/pages/home_page.dart';
import 'package:flycation/ui/pages/setting_page.dart';
import 'package:flycation/ui/pages/transaction_page.dart';
import 'package:flycation/ui/pages/wallet_page.dart';
import 'package:flycation/ui/pages/widgets/custom_buttom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      if (selectedPage == 0) {
        return HomePage();
      } else if (selectedPage == 1) {
        return TransactionPage();
      } else if (selectedPage == 2) {
        return WalletPage();
      } else {
        return SettingPage();
      }
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
                isSelected: selectedPage == 0,
                onClick: () {
                  setState(() {
                    selectedPage = 0;
                  });
                },
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
                isSelected: selectedPage == 1,
                onClick: () {
                  setState(() {
                    selectedPage = 1;
                  });
                },
              ),
              CustomButtomNavigationItem(
                imageUrl: 'assets/icon_card.png',
                isSelected: selectedPage == 2,
                onClick: () {
                  setState(() {
                    selectedPage = 2;
                  });
                },
              ),
              CustomButtomNavigationItem(
                isSelected: selectedPage == 3,
                imageUrl: 'assets/icon_settings.png',
                onClick: () {
                  setState(() {
                    selectedPage = 3;
                  });
                },
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
