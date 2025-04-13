import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';

class CustomButtomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  final VoidCallback onClick;

  const CustomButtomNavigationItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: SizedBox(
        width: 24,
        height: 30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                color: isSelected ? kPrimaryColor : kTransparentColor,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
