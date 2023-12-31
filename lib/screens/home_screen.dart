import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Router 연습'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.push(('/details'));
                },
                child: const Text('push detail'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  //context.push(('/pathParamScreen/aaa'));
                  context.pushNamed('path',pathParameters: {'id' : 'aaa'});
                },
                child: const Text('go path param page'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  //context.push(('/queryParamScreen?id=sch'));
                  context.pushNamed('query',queryParameters: {'id' : 'aaa'});
                },
                child: const Text('go query param page'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  context.push('/extraParamScreen', extra: null);
                },
                child: const Text('go extra param page(null)'),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  //context.push('/extraParamScreen', extra: '3333');
                  context.pushNamed('hihihi' , extra: '333');
                },
                child: const Text('go extra param page'),
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ));
  }
}
