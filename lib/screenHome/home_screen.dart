// ustawiłem inną nazwę folderu, przy twojej wyświetlał mi się błąd:
// Invalid package name; it's impossible to create a Java class inside

import 'package:flutter/material.dart';
import 'package:pr_3/model/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Kafelki'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Lista'),
                Tab(text: 'Strona'),
              ],
            )),
        body: TabBarView(
          children: [
            _buildListTab(),
            _buildPageTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildListTab() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: mockedUsers.length,
        itemBuilder: (context, index) => _buildElement(mockedUsers[index]),
      ),
    );
  }

  Widget _buildPageTab() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Super Napis'),
        Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.all(0),
            ),
            child: const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Przycisk',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildElement(User user) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(user.icon),
            title: Text('${user.name} ${user.surname}'),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
