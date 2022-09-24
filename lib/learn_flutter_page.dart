import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Action');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/images.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is Text',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('This is Eleveted Button');
              },
              child: const Text('Eleveted Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('This is Eleveted Button');
              },
              child: const Text('Eleveted Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('This is Eleveted Button');
              },
              child: const Text('Eleveted Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row Widgets'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newbool) {
                  setState(() {
                    isSwitch = newbool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newbool) {
                  setState(() {
                    isCheckBox = newbool;
                  });
                }),
            Image.network(
                'https://i.pinimg.com/564x/e0/25/df/e025dfad92780bd64138da3d4a9cdede.jpg')
          ],
        ),
      ),
    );
  }
}
