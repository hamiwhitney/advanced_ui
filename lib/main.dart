import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ADVANCED FLUTTER UI', style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blue[300],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Card with profile picture and info
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                          'https://wallpapers.com/images/featured/cool-profile-pictures-4co57dtwk64fb7lv.jpg',
                        ),
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.person,
                          size: 40.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HAMILTON W',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Demonstrate the visual form of\n'
                            ' meaningful content.',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16.0),

              // Edit Profile Button
              _buildActionButton(context, 'Edit Profile'),

              SizedBox(height: 8.0),

              // Settings Button
              _buildActionButton(context, 'Settings'),

              SizedBox(height: 8.0),

              // Logout Button
              _buildActionButton(context, 'Logout'),

              SizedBox(height: 16.0),

              // Row with circular buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircularButton(),
                  _buildCircularButton(),
                  _buildCircularButton(),
                ],
              ),

              Spacer(),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Handle submit action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Submit'),
                    SizedBox(width: 8.0),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      color: Colors.grey[300],
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Handle button tap
        },
      ),
    );
  }

  Widget _buildCircularButton() {
    return CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.grey[300],
      child: IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {
          // Handle circular button press
        },
      ),
    );
  }
}
