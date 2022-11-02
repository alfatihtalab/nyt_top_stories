import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/news_cubit/news_cubit.dart';
import '../utilities/constant.dart';


class ErrorConnectionPage extends StatelessWidget {
  const ErrorConnectionPage({Key? key}) : super(key: key);
  static const routeName = '/errorNoConnectionPage';
  @override
  Widget build(BuildContext context) {
    final newsProvider = BlocProvider.of<NewsCubit>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Icon(Icons.wifi_off, size: 100,),
              const SizedBox(height: 20,),
              const Text("It seems like no connection please check your network status!"
                ,textAlign: TextAlign.center,),
              // const SizedBox(height: 20,),


              const SizedBox(height: 30,),

              ElevatedButton(onPressed: ()async{
                // ReusableWidgets.showLoaderDialog(context);
                await newsProvider.getNewsDataFromApi(sectionName: sectionNames.first).then((value){
                  GoRouter.of(context).go('/');

                });

              },
                  child: const Text("Try again"))
            ],
          ),
        ),
      ),
    );
  }
}
