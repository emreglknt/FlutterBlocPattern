import 'package:bloc_pattern_kullanimi/ui/cubit/homepage_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfController1 = TextEditingController();
  var tfController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Bloc Pattern"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //emit dinleme
              BlocBuilder<HomePageCubit,int>(   // cubitteki fonksiyonların emitinden gelen veriyi  dinler ve texti gelen veriye göre günceller.
                builder: (context,result){
                  return  Text(result.toString(),style: const TextStyle(fontSize: 40),);
                },
              ),

              TextField(controller: tfController1,decoration: const InputDecoration(hintText: "number 1"),),
              TextField(controller: tfController2,decoration: const InputDecoration(hintText: "number 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<HomePageCubit>().toplama(tfController1.text, tfController2.text);  //homePage cubitteki fonksiyonlara erişerek verileri gönderir.
                  }, child: const Text("Toplama")),
                  ElevatedButton(onPressed: (){
                    context.read<HomePageCubit>().carpma(tfController1.text, tfController2.text);
                  }, child: const Text("Çarpma")),

                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
