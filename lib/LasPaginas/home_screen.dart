import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _recetas = [
    {
      'nombre': 'Apple Pie',
      'tiempo': '1h 15',
      'img':
          'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/maxresdefault.jpg',
      'liked': false,
    },
    {
      'nombre': 'Chicken',
      'tiempo': '35min',
      'img':
          'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/Pollo-asado-Jordi-Cruz.jpg',
      'liked': true,
    },
    {
      'nombre': 'Cheesecake',
      'tiempo': '10h 45',
      'img':
          'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/OIP.webp',
      'liked': false,
    },
    {
      'nombre': 'Cookies',
      'tiempo': '1h',
      'img':
          'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/R.jpeg',
      'liked': true,
    },
    {
      'nombre': 'Wings',
      'tiempo': '1h 5',
      'img':
          'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/OIP%20(1).webp',
      'liked': false,
    },
  ];

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            color: const Color(0xFF9C27B0),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/perfil.webp',
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      width: 64,
                      height: 64,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'ReciveRecipe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Av. Reforma 123, CDMX',
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
                const Text(
                  'Tel: 55 1234 5678',
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
                const Text(
                  'info@reciverecipe.com',
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Color(0xFF9C27B0)),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.menu_book, color: Color(0xFF9C27B0)),
            title: const Text('Receta'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/detalle');
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.person, color: Color(0xFF9C27B0)),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/perfil');
            },
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF9C27B0),
        iconTheme: const IconThemeData(color: Colors.white),
        titleSpacing: 0,
        title: Row(
          children: const [
            Text(
              'All (8)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.grid_view, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh, color: Colors.white),
          ),
        ],
        leading: Builder(
          builder: (ctx) => IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () => Scaffold.of(ctx).openDrawer(),
          ),
        ),
      ),
      drawer: _buildDrawer(context),
      body: Column(
        children: [
          // Barra de búsqueda
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black38,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xFF9C27B0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.tune, color: Colors.black54, size: 22),
                const SizedBox(width: 10),
                const Icon(
                  Icons.favorite_border,
                  color: Colors.black54,
                  size: 22,
                ),
              ],
            ),
          ),

          // Lista de recetas
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              itemCount: _recetas.length,
              separatorBuilder: (_, __) =>
                  const Divider(height: 1, color: Colors.black12),
              itemBuilder: (context, i) {
                final r = _recetas[i];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 4,
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      r['img'] as String,
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        width: 64,
                        height: 64,
                        color: Colors.grey[200],
                        child: const Icon(Icons.image, color: Colors.grey),
                      ),
                    ),
                  ),
                  title: Text(
                    r['nombre'] as String,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    r['tiempo'] as String,
                    style: const TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                  trailing: GestureDetector(
                    onTap: () => setState(() {
                      _recetas[i]['liked'] = !(r['liked'] as bool);
                    }),
                    child: Icon(
                      (r['liked'] as bool)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: (r['liked'] as bool) ? Colors.red : Colors.black38,
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/detalle'),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.white,
        elevation: 2,
        onPressed: () {},
        child: const Icon(Icons.exit_to_app, color: Colors.black54),
      ),
    );
  }
}
