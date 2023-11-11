import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
static const String id = 'homeScreen';
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 5, child:   Scaffold(
      appBar: AppBar( backgroundColor:Colors.teal, centerTitle: false,
        title:  const Text('whatsApp'),
        bottom: TabBar(tabs:

        [ Tab(child: Icon(Icons.group), ),

          Icon(Icons.camera_alt_outlined),
          Tab(child:Text('Chats'), ),
          Tab(child: Text('Status'),),
          Tab(child: Text('Calls'),)
        ]
        ),
        actions: [

          const Icon(Icons.search),
          const SizedBox(width: 10,),
          PopupMenuButton(
             icon: const Icon(Icons.more_vert_outlined), itemBuilder:
          (context,)=> const[
             PopupMenuItem(

              value: '1',  child: Text('New Group ')),
             PopupMenuItem(

                value: '2',  child: Text('Settings')),
            PopupMenuItem(

                value: '3',  child: Text('logout'))
          ]
          ),
          SizedBox(width: 10,)
        ],
      ),

     body:  TabBarView(  children: [
       Text('group'),
       Text('camera'),
       ListView.builder(itemCount: 3, itemBuilder: (context,index){
         return ListTile(
           leading: CircleAvatar(
             backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6e/Abdul_Sattar_Edhi.jpg'),
           ),
           title: Text('Abdul Sattar Edhi'),
           subtitle: Text('Serving Humanity without any discrimination among the Religions globally'),
           trailing: Text('3:17 PM'),
         );
       }),
       ListView.builder(itemCount: 3, itemBuilder: (context,index){
         return ListTile(
           leading: Container(
             decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.green,width: 1
               )
             ),
             child: CircleAvatar(
               backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6e/Abdul_Sattar_Edhi.jpg'),
             ),
           ),
           title: Text('Abdul Sattar Edhi'),
           subtitle: Text('status '),
           trailing: Text('3:17 PM'),
         );
       }),
       ListView.builder(itemCount: 3, itemBuilder: (context,index){
         return ListTile(
           leading: CircleAvatar(
             backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6e/Abdul_Sattar_Edhi.jpg'),
           ),
           title: Text('Abdul Sattar Edhi'),
           subtitle: Align(
             alignment: Alignment.topLeft,
             child: Icon(Icons.phone_callback),
           ),
           trailing: Text('3:17 PM'),
         );
       }),


      ],),
    )

    );


  }
}
