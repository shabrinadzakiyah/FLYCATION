import 'package:flutter/material.dart';
import 'package:flycation/ui/pages/widgets/custom_buttom_navigation_item.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Mari Terbang Bersama Kami',
                style: blackTextStyle.copyWith(
                  fontSize: 25,
                  fontWeight: extraBold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Join us to explore new worlds and create amazing memories',
                style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                title: 'Get Started',
                width: 220,
                margin: EdgeInsets.only(top: 50, bottom: 80),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
