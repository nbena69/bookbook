import 'package:bookbook/pages/widgets/postCard.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faceplook'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/10/13/17/10/mushroom-8313142_1280.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/126596584?s=400&u=75592e57decbc75cbff2f569c34c08bcad84ecee&v=4'),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Na'el Benaïssa",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Email : naelbenaissagmail.com',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.blue,
                            ),
                            child: const Text('Modifier le profil'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          const Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'À propos de moi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.home, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('La Pocatière, Québec'),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.school, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('Étudie à La Pocatière'),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 10),
                      Text('Passionné de programmation'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mes Amis',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 80,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2020/12/12/17/24/little-egret-5826070_1280.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text('Stéphane'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 80,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2021/08/11/11/15/man-6538205_1280.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text('Amrit'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 80,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2016/11/22/21/42/woman-1850703_1280.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text('Sophie'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 80,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png'),
                            ),
                            SizedBox(height: 6),
                            Text('Michel'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 80,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2016/03/31/19/57/avatar-1295404_1280.png'),
                            ),
                            SizedBox(height: 6),
                            Text('Lucas'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mes Posts',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                PostCard(
                  title: 'Découverte de San Francisco',
                  content: 'San Francisco, une ville aux collines abruptes et aux magnifiques ponts, offre un mélange unique de culture et d’histoire. La vue depuis le Golden Gate Bridge est à couper le souffle !',
                  imageUrl: 'https://cdn.generationvoyage.fr/2019/11/san-francisco-cable-car-visiter-les-villes-les-plus-ecolo-au-monde-768x422.jpg',
                  timeAgo: 'Il y a 6 minutes',
                ),
                PostCard(
                  title: 'Les défis des communautés indiennes',
                  content: 'Malgré la richesse culturelle des Indiens, le pays fait face à des défis environnementaux majeurs. La saleté et la pollution sont des problèmes persistants qui affectent la qualité de vie.',
                  imageUrl: 'https://travelandfilm.com/wp-content/uploads/2016/11/inde-dechets.jpg',
                  timeAgo: 'Il y a 3 jours',
                ),
                PostCard(
                  title: 'La beauté du peuple algérien',
                  content: 'L’Algérie est un pays riche en culture et en traditions. Le peuple algérien, avec sa chaleur et son hospitalité, est véritablement un joyau de l’Afrique du Nord.',
                  imageUrl: 'https://www.radiofrance.fr/s3/cruiser-production/2019/03/7b1a5678-6d5c-414d-a10c-b8b05aa98888/1200x680_gettyimages-1136444702_1.webp',
                  timeAgo: 'Il y a 1 semaine',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

