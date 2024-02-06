import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //main card
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10,
                        sigmaY: 10,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
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
                            Icon(
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
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Weather Forecast',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                    HourlyForecastItem(
                      time: '03:00',
                      icon: Icons.cloud,
                      temperature: '23°C',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Additional Information',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfoItem(
                    icon: Icons.water_drop,
                    label: 'Humidity',
                    value: '94',
                  ),
                  AdditionalInfoItem(
                    icon: Icons.air,
                    label: 'Wind Speed',
                    value: '7.67',
                  ),
                  AdditionalInfoItem(
                    icon: Icons.compress,
                    label: 'Pressure',
                    value: '1006',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
