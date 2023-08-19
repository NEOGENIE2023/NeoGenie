import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuItem {
  final String text;
  final IconData icon;
  final String animation; // Added animation property for Lottie animation

  const MenuItem({
    required this.text,
    required this.icon,
    required this.animation,
  });
}

class MenuDetails {
  static const List<MenuItem> itemsFirst = [
    itemRates,
    itemContact,
    itemHelp,
  ];

  static const itemRates = MenuItem(
    text: 'Rate Us',
    icon: Icons.rate_review,
    animation:
        'assets/animations/rates_animation.json', // Replace with your Lottie animation file
  );
  static const itemContact = MenuItem(
    text: 'Contact Us',
    icon: Icons.contact_emergency,
    animation:
        'assets/animations/contact_animation.json', // Replace with your Lottie animation file
  );
  static const itemHelp = MenuItem(
    text: 'Help & feedback',
    icon: Icons.help,
    animation:
        'assets/animations/help_animation.json', // Replace with your Lottie animation file
  );
}

class AnimatedMenu extends StatefulWidget {
  const AnimatedMenu({Key? key}) : super(key: key);

  @override
  _AnimatedMenuState createState() => _AnimatedMenuState();
}

class _AnimatedMenuState extends State<AnimatedMenu>
    with SingleTickerProviderStateMixin {
  bool isMenuOpen = false;
  late AnimationController _animationController;
  late Animation<double> _animationTranslate;
  late Animation<double> _animationOpacity;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animationTranslate = Tween<double>(begin: -100, end: 0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
      if (isMenuOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Menu'),
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: toggleMenu,
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned(
            top: 80,
            left: 16,
            child: AnimatedOpacity(
              opacity: isMenuOpen ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_animationTranslate.value, 0),
                    child: child,
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final item in MenuDetails.itemsFirst)
                      AnimatedMenuItem(
                        item: item,
                        animationOpacity: _animationOpacity,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedMenuItem extends StatelessWidget {
  final MenuItem item;
  final Animation<double> animationOpacity;

  const AnimatedMenuItem({
    Key? key,
    required this.item,
    required this.animationOpacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationOpacity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            SizedBox(width: 16),
            Icon(item.icon),
            SizedBox(width: 16),
            Text(item.text),
          ],
        ),
      ),
    );
  }
}
