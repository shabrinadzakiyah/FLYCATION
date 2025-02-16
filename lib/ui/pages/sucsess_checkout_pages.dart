import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';

class SucsessCheckoutPages extends StatelessWidget {
  const SucsessCheckoutPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_sucsess.png',
                  ),
                ),
              ),
            ),
            Text(
              'Booked Successfully',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ready to explore a whole new world of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'Booking Saya',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(top: 50),
            ),
          ],
        ),
      ),
    );
  }
}
