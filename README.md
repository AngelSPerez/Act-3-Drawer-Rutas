README — ReciveRecipe Flutter App
==================================

PROMPT ORIGINAL
---------------
Quiero que generes una aplicación en Flutter basada en un negocio llamado "ReciveRecipe", que es un recetario digital. La app debe cumplir exactamente con lo siguiente y no debes agregar nada extra ni modificar los requisitos.
Voy a adjuntar imágenes de referencia, debes respetar completamente el estilo visual de esas imágenes (colores, distribución, estructura y tipo de interfaz). No debes cambiar el estilo ni reinterpretarlo, solo adaptarlo fielmente a Flutter. A partir de esas imágenes debes decidir cuáles serán las 3 pantallas principales de la aplicación, además de incluir un Drawer. No agregues más de 3 pantallas.
La aplicación debe estar hecha únicamente con Flutter usando Material básico, sin usar librerías externas de ningún tipo y sin utilizar ThemeData global. Todo el diseño debe definirse directamente dentro de cada archivo Dart.
Debes estructurar el proyecto con un archivo main.dart y una carpeta llamada "LasPaginas" que contenga un archivo Dart por cada pantalla. Cada pantalla debe estar completamente separada en su propio archivo.
El archivo main.dart debe contener un MaterialApp con la ruta inicial "/" y rutas nombradas para las 3 pantallas que definas basándote en las imágenes. La pantalla principal será Home.
La pantalla Home debe contener un Scaffold con AppBar, un Drawer funcional y contenido visual basado en las imágenes proporcionadas. Solo incluye el texto "Bienvenido a ReciveRecipe" si forma parte del diseño de referencia.
El Drawer debe incluir un encabezado con una imagen de avatar del negocio cargada desde internet, junto con el nombre "ReciveRecipe", una dirección, un teléfono y un correo electrónico. Debajo del encabezado deben existir opciones usando ListTile, cada una con un icono, un texto y una acción que navegue usando Navigator.pushNamed hacia su ruta correspondiente. Las opciones deben corresponder exactamente a las 3 pantallas definidas.
Dentro de la carpeta "LasPaginas" deben existir los archivos Dart correspondientes a cada una de las 3 pantallas. Cada uno debe contener un StatelessWidget con un Scaffold y un diseño que respete fielmente el estilo de las imágenes proporcionadas. Cada pantalla debe incluir al menos una imagen centrada de 200x200 cargada desde internet (puede ser desde GitHub raw), sin agregar contenido innecesario.
Todas las imágenes deben cargarse usando Image.network. No se permite el uso de animaciones, providers, Firebase ni ningún tipo de funcionalidad adicional. No debes agregar más pantallas ni modificar la estructura solicitada.
Al final, debes generar un README en texto plano que incluya este mismo prompt. No agregues explicaciones adicionales.
El formato de salida debe ser primero el código separado por archivos (main.dart y los archivos dentro de la carpeta "LasPaginas"), y finalmente el README. No incluyas explicaciones, solo entrega el resultado.

ESTRUCTURA DEL PROYECTO
------------------------
reciverecipe/
├── main.dart
└── LasPaginas/
    ├── app_drawer.dart
    ├── home_screen.dart
    ├── detalle_screen.dart
    └── perfil_screen.dart

RUTAS NOMBRADAS
---------------
/          → HomeScreen    (Lista de recetas)
/detalle   → DetalleScreen (Vista de receta individual)
/perfil    → PerfilScreen  (Perfil de usuario)

--

<img width="724" height="507" alt="image" src="https://github.com/user-attachments/assets/4ebbca83-24b4-4059-ae2f-53d8584c4eb9" />
<img width="724" height="507" alt="image" src="https://github.com/user-attachments/assets/6a209f0b-8257-4a8e-bc53-0f85625d5e13" />
<img width="724" height="507" alt="image" src="https://github.com/user-attachments/assets/b7554bff-d564-46c8-9020-527a618d9ed2" />
<img width="724" height="507" alt="image" src="https://github.com/user-attachments/assets/1f618bfe-9644-44cc-898b-e59fe960b6bd" />

--

