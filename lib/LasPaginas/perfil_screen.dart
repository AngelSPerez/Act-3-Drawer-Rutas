import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Avatar 200x200
            Center(
              child: ClipOval(
                child: Image.network(
                  'https://raw.githubusercontent.com/AngelSPerez/imagenes/refs/heads/main/perfil.webp',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Nombre
            const Text(
              'Angel Salinas',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 16),

            // Opciones de perfil
            _ProfileOption(
              icon: Icons.bookmark_border,
              iconColor: Colors.black,
              label: 'Saved',
            ),
            _ProfileOption(
              icon: Icons.favorite,
              iconColor: Colors.red,
              label: 'Liked',
            ),
            _ProfileOption(
              icon: Icons.chat_bubble_outline,
              iconColor: Colors.black,
              label: 'Commented',
            ),
            _ProfileOption(
              icon: Icons.star,
              iconColor: Colors.amber,
              label: 'Rates',
            ),
            _ProfileOption(
              icon: Icons.settings_outlined,
              iconColor: Colors.black,
              label: 'Configuration',
            ),

            const SizedBox(height: 24),

            // Botón Log out
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class _ProfileOption extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  const _ProfileOption({
    required this.icon,
    required this.iconColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 0,
          ),
          leading: Icon(icon, color: iconColor, size: 24),
          title: Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
          onTap: () {},
        ),
        const Divider(
          height: 1,
          indent: 24,
          endIndent: 24,
          color: Colors.black12,
        ),
      ],
    );
  }
}
