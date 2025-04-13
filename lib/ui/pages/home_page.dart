import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flycation/services/user_services.dart';
import 'package:flycation/shared/theme.dart';
import 'package:flycation/ui/pages/widgets/destination_card.dart';
import 'package:flycation/ui/pages/widgets/destination_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription<User?>? _authSubscription;
  User? userDetail;

  @override
  void initState() {
    super.initState();
    // Menambahkan listener untuk authStateChanges
    _authSubscription =
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // Hanya navigasi jika saat ini tidak berada di halaman login
        if (ModalRoute.of(context)?.settings.name != '/sign-in') {
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        }
      } else {
        setState(() {
          userDetail = user; // Menyimpan data pengguna
        });
        // Hanya navigasi jika saat ini tidak berada di halaman utama
        if (ModalRoute.of(context)?.settings.name != '/main') {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        }
      }
    });
  }

  @override
  void dispose() {
    // Pastikan listener dihentikan ketika widget di-*dispose*
    _authSubscription?.cancel();
    super.dispose();
  }

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
                    "What's up,\n${userDetail?.displayName ?? 'User'}",
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
                image: userDetail != null && userDetail?.photoURL != null
                    ? DecorationImage(
                        image: NetworkImage(userDetail!.photoURL!),
                      )
                    : const DecorationImage(
                        image: AssetImage("assets/foto_profile.jpg"),
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
