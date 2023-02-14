import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(
              onHeartPressed: onHeartPressed,
            ),
            _CoupleImage(),
          ],
        ),
      ),
    );
  }
  void onHeartPressed(){
    print('클릭');
  }
}

class _DDay extends StatelessWidget {
  final GestureTapCallback onHeartPressed;

  _DDay({required this.onHeartPressed});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(height: 16.0,),
        Text('U&I',
        style: textTheme.headline1,),
        const SizedBox(height: 16.0,),
        Text('우리 처음 만난 날',
        style: textTheme.bodyText1,),
        Text('2021.11.23',
        style: textTheme.bodyText2,),
        const SizedBox(height: 16.0,),
        IconButton(
          onPressed: onHeartPressed,
          iconSize: 60.0,
          icon: Icon(Icons.favorite,
          color: Colors.red,
          ),
        ),
        const SizedBox(height: 16.0,),
        Text('D+365',
        style: textTheme.headline2,),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Center(
        child: Image.asset('asset/img/middle_image.png',
        height: MediaQuery.of(context).size.height/2,),
      ),
    );
  }
}