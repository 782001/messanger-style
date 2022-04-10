import 'package:flutter/material.dart';

class Messanger_Style extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://mediaaws.almasryalyoum.com/news/large/2021/01/31/1448127_0.jpg",
              ),

            ),
            SizedBox(
              width: 10.0,
            ),
            Text('chats',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight:FontWeight.bold,
            ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 16.0,
            ),
          ),),
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 15.0,
           backgroundColor: Colors.black,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 16.0,
            ),
          ),
          ),

        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadiusDirectional.circular(7.0)
                ),
                child: TextFormField(
                  decoration: InputDecoration(

                    hintText: ('search'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    prefixIcon: Icon(Icons.search_sharp,
                      color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: ( context, index)=>BuildStoryItem() ,
                    separatorBuilder: ( context, index)=> SizedBox(
                      width: 5,
                    ),
                    itemCount: 15),
              ),


                 ListView.separated(
                   physics: NeverScrollableScrollPhysics(),
                   shrinkWrap:true ,
                     itemBuilder:( context, index)=> BuildChatItem(),
                     separatorBuilder: ( context ,index)=>SizedBox(
                       height: 20.0,
                     ),
                     itemCount: 15),

              ],
          ),
        ),
      ),
    );
  }
  Widget BuildChatItem()  =>  Row(
   children: [
     Stack(
       alignment: AlignmentDirectional.bottomEnd,
       children: [

         CircleAvatar(
           radius: 30.0,
           backgroundImage: NetworkImage("https://mediaaws.almasryalyoum.com/news/large/2021/01/31/1448127_0.jpg",
           ),
         ),

         Padding(
           padding: const EdgeInsets.all(4.0),
           child: CircleAvatar(
             radius: 7.0,
             backgroundColor: Colors.green,
           ),
         ),
       ],
     ),
     SizedBox(
       width: 10,
     ),
     Expanded(
       child: Column(
         crossAxisAlignment:CrossAxisAlignment.start ,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Text('القاضيه ممكن19   ',
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             style: TextStyle(
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(
             width: 15,
           ),
           Row(
             children: [
               Expanded(
                 child: Text('افتكر اني قولتلك جيل ابوتريكه ووائل جمعه راجع ',
                   maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                   // style: TextStyle(
                   //   fontWeight: FontWeight.bold,
                   // ),
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Container(
                 width: 5,
                 height: 5,
                 decoration: BoxDecoration(
                     color: Colors.blue,
                     shape: BoxShape.circle
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Text('10:00 pm'
                 ,),
             ],
           ),

         ],
       ),
     ),
   ],
 );
  Widget BuildStoryItem()  =>  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          width: 60.0,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [

                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://mediaaws.almasryalyoum.com/news/large/2021/01/31/1448127_0.jpg",
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 7.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("أفشه"
                  "19",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),


      ],
    ),
  )  ;

}
