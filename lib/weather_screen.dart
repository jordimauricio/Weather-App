import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('refresh');
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Text(
                      '26°C',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Icon(
                      Icons.cloud,
                      size: 64,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Rain',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //weather forecast cards
            const Placeholder(
              fallbackHeight: 150,
            ),
            SizedBox(
              height: 25,
            ),
            //additional information
            const Placeholder(
              fallbackHeight: 150,
            ),
          ],
        ),
      ),
    );
  }
}
