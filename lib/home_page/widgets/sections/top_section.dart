import 'package:flutter/material.dart';
import 'package:flutter_application/home_page/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return const TopSectionWeb();
        }
        if (maxWidth >= 800) {
          return const TopSectionTablet();
        }

        return const TopSectionMobile();
      },
    );
  }
}

class TopSectionMobile extends StatelessWidget {
  const TopSectionMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3.4,
          child: Image.asset(
            'assets/images/image9.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(245, 247, 245, 245).withOpacity(0.1),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aprenda Flutter com o melhor conteúdo.',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'cocogoose'),
                ),
                SizedBox(height: 8),
                Text(
                  'Bora aprender Flutter com professores incríveis! Cursos por apenas R\$22,90. Qualidade garantida e reembolso por até 30 dias.',
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 8),
                CustomSearchField(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TopSectionTablet extends StatelessWidget {
  const TopSectionTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.asset(
              'assets/images/image9.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 12,
            top: 8,
            child: Card(
              color: const Color.fromARGB(154, 0, 0, 0),
              elevation: 8,
              child: Container(
                width: 320,
                padding: const EdgeInsets.all(24),
                child: const Column(
                  children: [
                    Text(
                      'Aprenda Flutter com o melhor conteúdo.',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'cocogoose'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bora aprender Flutter com professores incríveis! Cursos por apenas R\$22,90. Qualidade garantida e reembolso por até 30 dias.',
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    CustomSearchField(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopSectionWeb extends StatelessWidget {
  const TopSectionWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 3.4,
          child: Image.asset(
            'assets/images/image9.jpg',
          ),
        ),
        Positioned(
          right: 30,
          top: 20,
          child: Card(
            color: const Color.fromARGB(192, 0, 0, 0),
            elevation: 8,
            child: Container(
              width: 420,
              padding: const EdgeInsets.all(24),
              child: const Column(
                children: [
                  Text(
                    'Aprenda Flutter com o melhor conteúdo.',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'cocogoose'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bora aprender Flutter com professores incríveis! Cursos por apenas R\$22,90. Qualidade garantida e reembolso por até 30 dias.',
                    style: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 18),
                  CustomSearchField(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
