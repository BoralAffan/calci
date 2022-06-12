import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Affan Boral',
                    textStyle:
                      const  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    speed: const Duration(milliseconds: 300))
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
             const Text('Be',style: TextStyle(fontSize: 20),),
             const SizedBox(width: 20,),
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('Positive',textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red)),
               RotateAnimatedText('Optimistic',textStyle:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink)),
                RotateAnimatedText('Bold',textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),],),

          ],
        ),
        AnimatedTextKit(animatedTexts: [
          WavyAnimatedText('Hello World',textStyle:const TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
          WavyAnimatedText('Affan Boral',textStyle:const TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
        ]),
         
        
          ],
          
      ),
    ));
  }
}
