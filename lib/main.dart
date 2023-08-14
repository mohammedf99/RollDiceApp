import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: GradientContainer(
            colors: [
              Color.fromARGB(255, 9, 4, 75),
              Color.fromARGB(255, 74, 66, 185),
            ],
          ),
        ),
      ),
    );
