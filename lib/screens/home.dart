import 'package:flutter/material.dart';
import 'package:login_page_1/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('HOME'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            signout(context);
          }, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body:  SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Text(
                'Real Madrid Legends',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  
                  fontWeight: FontWeight.bold),
                
                ),
                SizedBox(
                  height: 20,
                ),

                 Container(
                   child: Text(
                    '1.Cristiano Ronaldo',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                ),
                 ),
                Image.asset("assets/images/ronaldo-real-madrid-la-liga.jpg"),
                Text(
                  ("The five-time Ballon d'Or winner was instrumental in Los Blancos becoming the first club in Champions League history to complete a three-peat. Ronaldo is one of only two players in La Liga history to have scored over 300 goals. He was the first to reach the 40-goal mark. That made him top the list of Real Madrid legends of all time. Christiano was the first player to score 100 goals in the competition for a single club. He also won four titles of Champions league in five years. Manchester United attacker scored the club's 450th and final goal against archrivals Barcelona. He is top-rated in Real Madrid legends FIFA. The club has won 13 European Cups and 33 La Liga titles. Real Madrid legends are widely regarded as the world's most potent. Of course, some of the best players in history have donned the famous white jersey. ")
                ),
                SizedBox(
                  height: 20,
                ),


                Text(
                  '2.Raul Gonzalez',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/images/raul-gonzalez-blanco.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ("Raul is regarded as a legend in Real Madrid history. The former Spain attacker is one of only two Los Blancos legends in club history to have scored more than 300 goals. Raul was Los Blanco's all-time leading scorer before Cristiano Ronaldo surpassed him with 323 goals in nearly 750 games for the capital club (more on him later). Raul played a crucial role in the club's six La Liga and three Champions League victories during his illustrious 16-year tenure with the Merengues. Raul remains the youngest player to score three goals in a Champions League game two and a half decades after scoring a hat-trick as an 18-year-old. ")
                ),
                SizedBox(
                  height: 20,
                ),

                  Text(
                  '3.Marcelo Vieria',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Image.asset("assets/images/Marcelo.jpg"),
                Text(
                  ("He is the most decorated player in the history of Real Madrid, with 24 trophies won. Starting his professional career in 2005, Marcelo won a Campeonato Carioca with Fluminense in 2006, during which he was named to the Brasileirão Team of the Season, at age 18.")
                ),
                SizedBox(
                  height: 20,
                ),

                                Text(
                  '4.Karim Mosthafa Benzema ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/images/Benzikka.webp'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ("Benzema joined the club in the same summer of 2009. The former Lyon striker spent most of his time in the shadow of his legendary teammate Cristiano Ronaldo who later left for Juventus in 2018, leaving Benzema to step up big time. Benzema has scored more than 100 goals in just over three seasons. The four-time Champions League and three-time La Liga winner has 17 goals and 12 assists across competitions. He recently scored his 200th La Liga goal, moving him into the competition's top ten all-time scorers list.")
                ),
                SizedBox(
                  height: 20,
                ),

                  Text(
                  '5.Ricardo Kaka',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Image.asset('assets/images/KaKa_madrid.jpg'),
                Text(
                  ("A spectacular player with goalscoring ability, technical skills and elegance. He arrived in the 2009/10 season and along with Cristiano Ronaldo and Benzema he formed one of the most formidable attacks in world football. His shooting mastery, effectiveness and quality over the last few metres, led him to score 29 goals for the Whites.He made his official debut at the Santiago Bernabéu against Deportivo and his first goal came in September 2009, in a 0-2 win against Villarreal. His first title as a Madrid player was the Copa del Rey, and it was followed by a La Liga title and a Spanish Super Cup.Before he was even 20 years old, Kaká was already a star in Sao Paulo. From there he went to Milan, where he won the Ballon d'Or in 2007. The Brazilian won the prize after Cannavaro and it preceded his future with Madrid, like Cristiano Ronaldo. Just like those two players, Kaká would go on to play for Real Madrid.")
                ),
                SizedBox(
                  height: 20,
                ),

                Text(
                  '6.Luca Modric',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                CircleAvatar(
                  radius: 180,
                  backgroundImage: AssetImage('assets/images/Lm10.webp'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  ("Luka Modrić is a Croatian professional footballer who plays as a midfielder for La Liga club Real Madrid and captains the Croatia national team.")
                ),
                SizedBox(
                  height: 20,
                ),
                 
                


              
            ],

          ),
      
      ),),
      
    );
  }


  signout(BuildContext ctx) async{
    final _sharedprefs = await SharedPreferences.getInstance();
    await _sharedprefs.clear();
    
     



  Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx1) => ScreenLogin ()),(route)=> false);



  }
}