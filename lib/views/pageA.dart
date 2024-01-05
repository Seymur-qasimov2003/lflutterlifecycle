import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    print('initState PageA');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        print('resumed PageA');
        break;
      case AppLifecycleState.inactive:
        print('inactive PageA');
        break;
      case AppLifecycleState.paused:
        print('paused PageA');
        break;
      case AppLifecycleState.detached:
        print('detached PageA');
        break;
      default:
        print('default PageA');
      // TODO: Handle this case.
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build PageA');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page A',
            ),
          ],
        ),
      ),
    );
  }
}
