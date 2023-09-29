import 'package:flutter/material.dart';
import 'package:pr_1/model/user.dart';

//ekrany powinny być w osobnych plikach

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: mockedUsers.length,
          itemBuilder: (context, index) => _buildElement(mockedUsers[index]),
        ),
      ),
    );
  }

  // funkcja _build pozwala Ci tworzyć ekrany bardziej przejrzyście, na tym przykładzie jeszcze tego nie
  //widać, ale przy większych ekranach wyciąganie do funkcji _build każdego większego elementu
  // pozwala Ci się łatwo nawigować po kodzie później

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
