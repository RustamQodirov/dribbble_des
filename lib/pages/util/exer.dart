import 'package:flutter/material.dart';

class ExerPage extends StatelessWidget {
  final icon;
  final String exercisesN;
  final int numTex;
  final color;
  const ExerPage({
    super.key,
    required this.icon,
    required this.exercisesN,
    required this.numTex,
    required this.color,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
                        padding: EdgeInsets.all(18),
                      
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    color: color,
                                    child: Icon(icon,
                                      color: Colors.white,),),
                                ),
                            SizedBox(width: 19,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  exercisesN,
                                  style: TextStyle(color:Color.fromARGB(221, 27, 26, 26),fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text(numTex.toString()+' Exercises',style: TextStyle(color: Colors.black38),),
                              ],
                            ),
                              ],
                            ),
                            
                            Icon(Icons.more_horiz),
                            
                          ],
                        )
                      ),
    );
  }
}