

import 'dart:ffi';

import 'package:dribbble_des/pages/util/emoji_box.dart';
import 'package:dribbble_des/pages/util/exer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        ],
      ),
      body: SafeArea(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Hi, Rustam!',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                        SizedBox(height: 9,),
                        Text('20 May, 2023',style: TextStyle(color: Color.fromARGB(255, 184, 202, 220),fontSize: 14),)
                      ],
                    ),
                    Container(
                      
                      decoration:  BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:Icon(Icons.notifications,color: Colors.white,),
                      padding:const EdgeInsets.all(12),),
                                  ],
                                ),
                  ),
              const SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  
                ),
                padding: EdgeInsets.all(10),
                child:Row(children:const  [
                  Icon(Icons.search,color: Colors.blue,),
                  SizedBox(width: 15,),
                  Text('Search',style: TextStyle(color: Colors.blue,fontSize: 18),)
                ]),
              ),
              const SizedBox(height: 19,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children:const  [
                  Text('How do you feel? ',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                Icon(Icons.more_horiz,color: Colors.white,),
                ],
              ),
              const SizedBox(height: 19,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Column(
                    children: const [
                      EmojiBox(
                        iconemo: '😀',
                      ),
                      SizedBox(height: 8,),
                      Text('Happy',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
            
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(
                    children: const [
                      EmojiBox(
                        iconemo: '😑',
                      ),
                       SizedBox(height: 8,),
                      Text('Sad',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                      
                    ],
                  ),
                   SizedBox(width: 15,),
                  Column(
                    children: const [
                      EmojiBox(
                        iconemo: '🙂',
                      ),
                       SizedBox(height: 8,),
                      Text('well',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                      
                    ],
                  ),
                  SizedBox(width: 15,),
                   Column(
                    children: const [
                      EmojiBox(
                        iconemo: '😷',
                      ),
                       SizedBox(height: 8,),
                      Text('Sick',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                      
                    ],
                  ),
                  
                ],
              ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Expanded(
              child: Container(
                padding:EdgeInsets.all(25 ),
                color: Colors.grey[200],
                child: Center(child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Exercises',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                     SizedBox(height: 15,),
                    Expanded(
                      child: ListView(
                        children: const[
                          ExerPage(icon: Icons.favorite,
                          exercisesN: 'Speaking Skills',  
                          color: Colors.blue,
                          numTex: 16),
                          ExerPage(icon: Icons.person,
                          exercisesN: 'ReadingSkills',  
                          color: Colors.green,
                          numTex: 9),
                         
                          ExerPage(icon: Icons.star,
                          exercisesN: 'Listing Skills',  
                          color: Colors.pink,
                          numTex: 20),
                          ExerPage(icon: Icons.star,
                          exercisesN: 'Listing Skills',  
                          color: Colors.orange,
                          numTex: 13),
                          
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ),

          ],
        ),
      ),
      
    );
  }
}