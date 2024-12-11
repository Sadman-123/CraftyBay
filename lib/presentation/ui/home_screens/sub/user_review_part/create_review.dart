import 'package:craftybay/presentation/ui/stylesheet/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../stylesheet/widgets_style.dart';
class CreateReview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(CupertinoIcons.chevron_left,color: Color(0xFF010001),)),
                SizedBox(width: mdw*0.025,),
                Text("Create Review",style: TextStyle(color: Color(0xFF515051)),),
              ],
            ),
            elevation: 4,
            shadowColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: mdw*0.83,
                    margin: EdgeInsets.only(
                        top: 15
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "First Name"
                      ),
                      cursorColor: AppColors.Cursor_color,
                    ),
                  ),
                  Container(
                    width: mdw*0.83,
                    margin: EdgeInsets.only(
                        top: 15
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Last Name"
                      ),
                      cursorColor: AppColors.Cursor_color,
                    ),
                  ),
                  Container(
                    width: mdw*0.83,
                    margin: EdgeInsets.only(
                        top: 15
                    ),
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: "Write Review"
                      ),
                      cursorColor: AppColors.Cursor_color,
                    ),
                  ),
                  SizedBox(height: mdh*0.03,),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.Registration_Button_Color,
                        borderRadius: BorderRadius.circular(14)
                    ),
                    child: Center(child: Text("Submit",style: WidgetsStyle.Registration_Button_Txt(mdw),)),
                    width: mdw*0.83,
                    height: mdh*0.06,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
