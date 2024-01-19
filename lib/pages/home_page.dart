// Import necessary packages at the beginning of each Dart file

import 'package:flutter/material.dart';
import 'package:prototype_cluster/pages/business_details.dart';

import '../components/local_business.dart';

// Add the following class to the existing 'home_screen.dart' file

class HomePage extends StatelessWidget {
  final String area;
  final int radius;

  HomePage({required this.area, required this.radius});

  // Dummy data for local businesses (replace with actual data)
  final List<LocalBusiness> localBusinesses = [
    LocalBusiness(name: ' Store ', category: 'Grocery'),
    LocalBusiness(name: ' Cafe ', category: 'Cafe'),
    LocalBusiness(name: ' Service ', category: 'Services'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black54,
        title: Text(
          'Local Cluster - $area',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: localBusinesses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black26, width: 4),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                    title: Text(
                      localBusinesses[index].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Category: ${localBusinesses[index].category}',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Rating: ${localBusinesses[index].rating.toString()}'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sustainable: ${localBusinesses[index].isSustainable ? 'Yes' : 'No'}',
                        ),
                      ],
                    ),
                    onTap: () {
                      // Navigate to the business details screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BusinessDetailsPage(
                            business: localBusinesses[index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
