import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';
import 'package:flycation/ui/pages/checkout_page.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';
import 'package:flycation/ui/pages/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 55),
        child: Text(
          'Making a seat\nreservation',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            // SEAT Available
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_available.png',
                  ),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            // Status Seat
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'I',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'N',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                ],
              ),
            ),

            // SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            // Pilihan Bangku Kamu
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Book',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'N2,A4',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),

            //Total Bayar
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'Rp. 3.500.000',
                    style: greenTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Detail Pembayaran',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
        margin: EdgeInsets.only(
          top: 30,
          bottom: 46,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
