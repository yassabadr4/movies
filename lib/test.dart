import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/movies/presentation/screens/movies_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  void initState()  {

    super.initState();

    Future.delayed(const Duration(seconds: 7), ()async {

      Navigator.push(context, MaterialPageRoute(builder: (context) => const MoviesScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/images/28-01-removebg-preview.png',
            ),

            SizedBox(
              width: double.infinity,
              child: TextLiquidFill(
                text: 'Movies',
                waveColor: Colors.black,
                boxBackgroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
