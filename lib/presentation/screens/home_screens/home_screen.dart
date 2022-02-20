import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/constraints/primary_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _buildCategoryItem(
      {required String image, required String title, required String price}) {
    return SizedBox(
      width: 150,
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(image),
            width: 150,
            height: 150,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: MyFonts.heavyFont,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeaderItem(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Heavy',
              fontSize: 20,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'See all >>',
              style: TextStyle(
                color: MyColors.brown,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopDealItem() {
    return Container(
      margin: const EdgeInsets.only(right: 15, top: 23),
      padding: const EdgeInsets.all(20),
      width: 315,
      height: 160,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0XFF272833),
              Color(0XFFB86518),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Gulcehre \nIbrik',
              style: TextStyle(
                fontFamily: MyFonts.heavyFont,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'W:32cm H:26cm',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '€5650',
              style: TextStyle(
                fontSize: 24,
                fontFamily: MyFonts.heavyFont,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopDealCard() {
    return SizedBox(
      width: 315,
      height: 220,
      child: Stack(
        children: [
          _buildTopDealItem(),
          const Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage('assets/images/onboarding1.png'),
              width: 220,
              height: 220,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryContainer(Size size) {
    return SizedBox(
      height: size.height.toInt() <= 683 ? size.height / 2.5 : size.height / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeaderItem('Categories'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => _buildCategoryItem(
                  title: 'Thank God Bowl',
                  price: '€1750',
                  image: 'assets/images/onboarding2.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopDealContainer(Size size) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: size.height.toInt() <= 683 ? size.height / 2.5 : size.height / 3,
      child: Column(
        children: [
          buildHeaderItem('Top deals'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => _buildTopDealCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProductsContainer(Size size) {
    return SizedBox(
      height: size.height.toInt() <= 683 ? size.height / 2.5 : size.height / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeaderItem('Featured Products'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => _buildCategoryItem(
                  title: 'Hagia Sophia Deesis',
                  price: '€3450',
                  image: 'assets/images/home.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProductsSecondContainer(Size size) {
    return SizedBox(
      height: size.height.toInt() <= 683 ? size.height / 2.5 : size.height / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => _buildCategoryItem(
                  title: 'Hagia Sophia Deesis',
                  price: '€3450',
                  image: 'assets/images/onboarding3.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchByBrandContainer(Size size) {
    return SizedBox(
      height: size.height.toInt() <= 683 ? size.height / 3 : size.height / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeaderItem('Search By Brand'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/brand.png'),
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      '"Devr-i Alem" Flask',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'STORE',
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height / 10,
                child: Column(
                  children: [
                    const Text(
                      'Ottoman Collection',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Heavy',
                      ),
                    ),
                    Text(
                      'Find the perfect watch for your wrist',
                      style: TextStyle(
                        fontSize: 14,
                        color: MyColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              _buildCategoryContainer(size),
              _buildTopDealContainer(size),
              _buildFeaturedProductsContainer(size),
              _buildFeaturedProductsSecondContainer(size),
              _buildSearchByBrandContainer(size),
            ],
          ),
        ),
      ),
    );
  }
}
