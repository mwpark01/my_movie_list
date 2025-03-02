import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nowType = '한국영화';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 안쪽으로 padding
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // 긴 텍스트 기준으로 정렬
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '나의 영화 리스트',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '내가 즐겨본 영화 리스트',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/test.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
      
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TypeButton(
                      text: '한국영화', 
                      isSelected: nowType == '한국영화', 
                      onSelected: (){ 
                        setState(() {
                          nowType = '한국영화';  
                        });
                        },
                      ),
                    TypeButton(
                      text: '외국영화', 
                      isSelected: nowType == '외국영화', 
                      onSelected: (){
                        setState(() {
                          nowType = '외국영화';  
                        });
                      },
                    ),
                    TypeButton(
                      text: '액션', 
                      isSelected: nowType == '액션', 
                      onSelected: (){
                        setState(() {
                          nowType = '액션';  
                        });
                      },
                    ),
                    TypeButton(
                      text: '스릴러', 
                      isSelected: nowType == '스릴러', 
                      onSelected: (){
                        setState(() {
                          nowType = '스릴러';  
                        });
                      },
                    ),
                    TypeButton(
                      text: '코믹', 
                      isSelected: nowType == '코믹', 
                      onSelected: (){
                        setState(() {
                          nowType = '코믹';  
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TypeButton extends StatelessWidget {
  
  String text;
  bool isSelected;
  Function onSelected;

  TypeButton({
    required this.text,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {

    // 이벤트에 따라 
    return GestureDetector(
      onTap: () {
        onSelected();
      },
      child: Container(
        // 바깥쪽에서 오른쪽으로 띄우는 것
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        child: Text('$text', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 1),
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}
