import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // Cat: O. Available 1. Selected 2. Unavailable

  final int status;

  const SeatItem({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    kBackgroundColor() {
      switch (status) {
        case 0:
          return kGreyColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kGreyColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'You',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: kBackgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
