import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = "buttons_screen";
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.access_alarm_rounded),
              onPressed: () {},
              label: const Text('Elevated icon'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled'),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.access_alarm_rounded),
              onPressed: () {},
              label: const Text('Filled icon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined'),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.access_alarm_rounded),
              onPressed: () {},
              label: const Text('Outlined icon'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
            TextButton.icon(
              icon: const Icon(Icons.access_alarm_rounded),
              onPressed: () {},
              label: const Text('Text icon'),
            ),
            IconButton(
              icon: const Icon(Icons.access_alarm_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.access_alarm_rounded),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  colors.primary,
                ),
                iconColor: const MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
