import 'package:flutter/material.dart';

class DetailesMusic extends StatelessWidget {
  const DetailesMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6ECF9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.arrow_back, size: 22),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.more_horiz, size: 22),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('images/motivation.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 5,
                      offset: Offset(-5, -10),
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 12,
                      offset: Offset(5, 10),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                "Unavailable",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Davido",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              // Slider with time and gradient
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("1:47", style: TextStyle(color: Colors.grey)),
                  Text("4:00", style: TextStyle(color: Colors.grey)),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 4.0,
                  activeTrackColor: Colors.transparent, // نجعل المسار النشط شفافًا لتطبيق التدرج
                  inactiveTrackColor: Colors.grey.shade300,
                  thumbColor: Colors.blueAccent,
                  overlayColor: Colors.blueAccent.withOpacity(0.2),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    child: Slider(
                      value: 1.47,
                      min: 0,
                      max: 4.00,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.skip_previous, size: 28),
                  ),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.pause, size: 30, color: Colors.white),
                  ),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(-5, -10),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                          offset: Offset(5, 10),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.skip_next, size: 28),
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