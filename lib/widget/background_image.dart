import 'package:flutter/material.dart';
class BackgroundImage extends StatelessWidget {
  final Widget child;
  const BackgroundImage({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/register.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        child

      ],
    );
  }
}
