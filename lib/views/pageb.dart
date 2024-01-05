import 'package:flutter/material.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  ///burada dispose ve deactive metodlari danisilacaq.geriye qayitanda calisacaq kodlari deactive ve dispose metodlarina yaziriq
  @override
  void deactivate() {
    print('deactivate PageB');
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose PageB');
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page B'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Page B'),
            ],
          ),
        ),
      ),
    );
  }
}
