import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shipping_ui/styles/app_colors.dart';
import 'package:flutter_ui_samples/shipping_ui/widgets/buildcard.dart';
import 'package:flutter_ui_samples/shipping_ui/widgets/buildchip.dart';

class ShippingRecordScreen extends StatelessWidget {
  const ShippingRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Text(
          "Shipping Record",
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(6),
              child: Icon(Icons.more_horiz_rounded, color: black),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildChip("All", orange, Colors.white),
                SizedBox(width: 8),
                buildChip("Complete", Colors.white, black),
                SizedBox(width: 8),
                buildChip("In Delivery", Colors.white, black),
                SizedBox(width: 8),
                buildChip("Per", Colors.white, black),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                buildCard(
                  context,
                  bgColor: black,
                  footerColor: grey1,
                  chipText: 'In Delivery',
                  chipColor: orange,
                  textColor: Colors.white,
                  iconColor: orange,
                ),
                buildCard(
                  context,
                  bgColor: Colors.white,
                  footerColor: grey2,
                  chipText: 'Complete',
                  chipColor: green,
                  textColor: black,
                  iconColor: orange,
                ),
                buildCard(
                  context,
                  bgColor: Colors.white,
                  footerColor: grey2,
                  chipText: 'Complete',
                  chipColor: green,
                  textColor: black,
                  iconColor: orange,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: const [
                  Icon(Icons.home, color: Colors.black),
                  SizedBox(width: 8),
                  Text("Home", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),

            buildIconOnlyButton(Icons.inventory_2_outlined),
            buildIconOnlyButton(Icons.local_shipping_outlined),
            buildIconOnlyButton(Icons.person_outline),
            buildIconOnlyButton(Icons.mail_outline),
          ],
        ),
      ),
    );
  }
}

Widget buildIconOnlyButton(IconData icon) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.grey.shade800,
      shape: BoxShape.circle,
    ),
    child: Icon(icon, color: Colors.white),
  );
}
