import 'package:flutter/material.dart';
import 'package:tracker_timeline/components/order_status_timeline.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: themeColors.background,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Column(
          children: [
            Text('Order tracking'),
            Text(
              '#ORDER123',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 48,
          bottom: 16,
        ),
        children: const [
          OrderStatusTimeline(
            color: Colors.amber,
            title: 'Processing',
            subtitle: 'Your order is being processed.',
            icon: Icons.hourglass_top_outlined,
            showLine: true,
            isActive: true,
          ),
          OrderStatusTimeline(
            color: Colors.blue,
            title: 'In Transit',
            subtitle: 'Your order is on it\'s way to you.',
            icon: Icons.local_shipping_outlined,
            showLine: true,
            isActive: true,
          ),
          OrderStatusTimeline(
            color: Colors.green,
            title: 'Delivered',
            subtitle: 'Thank you for shopping with us.',
            icon: Icons.task_alt_outlined,
            showLine: false,
            isActive: true,
          ),
        ],
      ),
    );
  }
}
