import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor; // Perbaikan: Mengubah tipe data dari String ke Color

  const BookingDetailsItem({
    super.key,
    required this.title,
    required this.valueText,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          margin: EdgeInsets.only(right: 6),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_check.png',
              ),
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyle,
        ),
        Spacer(),
        Text(
          valueText,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
