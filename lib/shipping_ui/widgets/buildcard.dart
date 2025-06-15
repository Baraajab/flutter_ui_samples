import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shipping_ui/screens/package_details_screen.dart';

Widget buildCard(
  BuildContext context, {
  required Color bgColor,
  required Color footerColor,
  required String chipText,
  required Color chipColor,
  required Color textColor,
  required Color iconColor,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(24),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
      ],
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 28,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.inventory_2_outlined, color: iconColor),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ID Number", style: TextStyle(color: textColor)),
                        Text(
                          "JK126K532",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: footerColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      chipText,
                      style: TextStyle(
                        color: chipColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildInfoColumn("Tracking Number", "34589762", textColor),
                  buildInfoColumn("Data Shipped", "13 JUL. 2024", textColor),
                  buildInfoColumn("Location", "Aldo", textColor),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 50,
          decoration: BoxDecoration(
            color: footerColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.send_outlined, color: iconColor),
                label: Text(
                  "Track",
                  style: TextStyle(
                    color: iconColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PackageDetailsScreen()),
                  );
                },
                child: Text(
                  "View Details",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildInfoColumn(String label, String value, Color textColor) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(color: textColor)),
      SizedBox(height: 4),
      Text(
        value,
        style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
      ),
    ],
  );
}
