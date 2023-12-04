import 'package:cabcom/app/modules/cabhome/views/cabhome_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';




class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  
  final HomeController controller = Get.put(HomeController());

  

  
  void initState() {
    super.initState();
    controller.onInit();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: PageView(
        onPageChanged: controller.gotopage,
        controller: controller.pageController,
        children: [CabhomeView()],
      ),
      bottomNavigationBar: Container(
        height: 80,
        //margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        // margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
            borderRadius: BorderRadius.circular(0)),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _bottomAppBarItem(context, icon: 'assets/house.png', page: 0),
              _bottomAppBarItem(context, icon: 'assets/ubar.png', page: 1),
              _bottomAppBarItem(context, icon: 'assets/ola.png', page: 2),
              _bottomAppBarItem(context, icon: 'assets/repido.png', page: 3)
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _bottomAppBarItem(BuildContext context,
      {required String icon, required page}) {
    return Center(
      child: GestureDetector(
        onTap: () => controller.gototab(page), // Assuming controller is defined and contains a method gotoTab
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width-310,
          
          // decoration: BoxDecoration(
          //   color: controller.currentpage.value == page
          //       ? Color.fromRGBO(105, 4, 105, 1)
          //       : Color.fromRGBO(255, 255, 255, 1),
          //   borderRadius: BorderRadius.circular(0),
          // ),
          child: Center(
            child: Container(
              height: 34, // Set the height to match the outer container
              width: 34, // Set the desired width
              //color: Color.fromRGBO(105, 81, 4, 1),
              child: Image.asset(
                icon,
                color: controller.currentpage.value == page
                    ? Color.fromRGBO(196, 11, 153, 1)
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
