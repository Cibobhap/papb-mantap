// weekly_forecast_screen.dart
import 'package:flutter/material.dart';

class WeeklyForecastScreen extends StatelessWidget {
  const WeeklyForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[900], // Set background to dark color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center( // Center the text
              child: Text(
                "Weekly Forecast",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, // Set text color to white
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                for (var day in [
                  {'day': 'Today', 'tempMin': 56, 'tempMax': 79, 'icon': Icons.wb_sunny},
                  {'day': 'Tue', 'tempMin': 55, 'tempMax': 71, 'icon': Icons.wb_sunny},
                  {'day': 'Wed', 'tempMin': 46, 'tempMax': 68, 'icon': Icons.wb_sunny},
                  {'day': 'Thu', 'tempMin': 55, 'tempMax': 71, 'icon': Icons.wb_sunny},
                  {'day': 'Fri', 'tempMin': 55, 'tempMax': 71, 'icon': Icons.wb_sunny},
                  {'day': 'Sat', 'tempMin': 46, 'tempMax': 66, 'icon': Icons.wb_sunny},
                  {'day': 'Sun', 'tempMin': 23, 'tempMax': 35, 'icon': Icons.wb_sunny},
                ])
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [Colors.blueGrey, Colors.blueAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          day['day'].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              day['icon'] as IconData,
                              color: Colors.yellowAccent,
                              size: 30,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "${day['tempMin']}° - ${day['tempMax']}°",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



