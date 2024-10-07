import 'package:flutter/material.dart';
import 'package:travel_app/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Image.asset(
              'assets/bg.jpeg',
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              fit: BoxFit.cover,
            )
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * (1 / 20),
                vertical: 32.0
              ),
              child: LayoutBuilder(
                builder: (context, constraints) => SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Travel',
                        style: TextStyle(
                          fontSize: 64.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.0
                        ),
                        textAlign: TextAlign.center
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 16.0
                      ),
                      const Spacer(),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Plan your',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            height: 1.0
                          )
                        )
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Luxurious Vacation',
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.0
                          )
                        )
                      ),
                      const SizedBox(
                        height: 16.0
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            }
                          ));
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                          minimumSize: WidgetStateProperty.all(Size(constraints.maxWidth, 48.0))
                        ),
                        child: const Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white
                          )
                        )
                      )
                    ]
                  ),
                ),
              ),
            ),
          )
        ]
      )
    );
  }
}
