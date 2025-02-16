import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';
import 'package:flycation/ui/pages/widgets/destination_card.dart';
import 'package:flycation/ui/pages/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What's up,\nShabrina Dzakiyah",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Where will you fly next?',
                    style: greyTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profilebina.jpg'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Candi Borobudur',
                city: 'magelang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'Sampoo Kong',
                city: 'magelang',
                imageUrl: 'assets/image_destination2.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'Labuan Bajo',
                city: 'Nusa Tenggara Timur',
                imageUrl: 'assets/image_destination3.png',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Pulau Seribu',
                city: 'Jakarta',
                imageUrl: 'assets/image_destination4.png',
                rating: 3.7,
              ),
              DestinationCard(
                name: 'Raja Ampat',
                city: 'Papua',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.9,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 110,
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Promo',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'Danau Toba',
              city: 'Medan',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.0,
            ),
            DestinationTile(
              name: 'Canggu',
              city: 'Bali',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.3,
            ),
            DestinationTile(
              name: 'Gunung Bromo',
              city: 'Pasuruan',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.1,
            ),
            DestinationTile(
              name: 'Lawang Sewu',
              city: 'Semarang',
              imageUrl: 'assets/image_destination9.png',
              rating: 3.7,
            ),
            DestinationTile(
              name: 'Kepulauan Derawan',
              city: 'Kalimantan',
              imageUrl: 'assets/image_destination10.png',
              rating: 4.0,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestinations(),
      ],
    );
  }
}
