import 'package:favorcate/core/model/meal_view.dart';
import 'package:favorcate/core/router/router.dart';
import 'package:favorcate/core/service/meal_request.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:provider/provider.dart';


main (){
  runApp(
    MultiProvider(
      providers:[
        // ChangeNotifierProvider(create: (ctx)=>HYBaseViewModel()),
        ChangeNotifierProvider(create: (ctx)=>HYFilterViewModel()),
        ChangeNotifierProxyProvider<HYFilterViewModel,HYMealViewModel>(
            create: (ctx)=>HYMealViewModel(),
            update: (ctx,filterVM,mealVM){
              mealVM?.getFilterVM(filterVM);
              return mealVM as HYMealViewModel;
            }
        ),
        ChangeNotifierProxyProvider<HYFilterViewModel,HYFavorViewModel>(
            create: (ctx)=>HYFavorViewModel(),
            update: (ctx,filterVM,favorVM){
              favorVM?.getFilterVM(filterVM);
              return favorVM as HYFavorViewModel;
            }
        ),
      ],

    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    HYSizeFit.initialize();

    return MaterialApp(
      theme: HYAppTheme.norTheme,
      routes: HYRouter.routes,
      initialRoute: HYRouter.initialName,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
      // home: HYMainPage(),
    );
  }
}