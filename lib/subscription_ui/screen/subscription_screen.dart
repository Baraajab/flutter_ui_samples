import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  String selected = 'monthly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF1FA),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Try FREE for 4 weeks",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '''We uncover the facts around the 
  clock, all over the globe.''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),

              planTile(
                title: "MONTHLY",
                subtitle:
                    "4 weeks for free\nThen \$3 every month for the first year",
                value: 'monthly',
              ),

              SizedBox(height: 12),

              planTile(
                title: "YEARLY",
                subtitle: "4 weeks for free\nThen \$30 for the first year",
                value: 'yearly',
                badge: "Best value",
              ),

              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(250, 50),
                  shape: StadiumBorder(),
                ),
                child: Text("Continue", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  minimumSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Continue with"),
                    SizedBox(
                      width: 100,

                      child: Image.network(
                        'https://images.ctfassets.net/y6oq7udscnj8/7pGYJSsSu8IjvuscnxPcng/ae9dc800b649640406b5bfa1ae9b02d6/PayPal.png?w=592&h=368&q=50&fm=png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                "View more offers",
                style: TextStyle(
                  color: const Color.fromARGB(255, 16, 95, 160),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget planTile({
    required String title,
    required String subtitle,
    required String value,
    String? badge,
  }) {
    bool isSelected = selected == value;
    return GestureDetector(
      onTap: () => setState(() => selected = value),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.blue : Colors.grey),
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? Colors.blue.withOpacity(0.05) : Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isSelected ? Colors.black : Colors.grey,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (badge != null)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      margin: EdgeInsets.only(bottom: 4),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 19, 19, 236),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        badge,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
