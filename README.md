# Proyectos_Flutter
## Dart

Dart es un lenguaje de programación diseñado para el desarrollo de clientes, como aplicaciones web y móviles. Está desarrollado por Google y también se puede utilizar para crear aplicaciones de servidor y de escritorio. (Fuente Wikipedia)

### Tipos de datos en Dart

- Enteros: int.
- De punto flotante: double.
- Cadenas de texto: String.
- Booleanos: bool.
- Tipos Dinámicos: dynamic.

### Control de Flujo

#### if/else

![image](https://user-images.githubusercontent.com/110683744/208883947-89d7e0c0-7a13-4454-b373-9a8e73f9b59c.png)

#### for

![image](https://user-images.githubusercontent.com/110683744/208884108-39d33ccc-cfc4-4498-bb32-89465a7396db.png)

#### for in

![image](https://user-images.githubusercontent.com/110683744/208884314-20d0614d-c2ad-4514-946b-8bda114f78de.png)

#### while

![image](https://user-images.githubusercontent.com/110683744/208884489-482441e9-8bc2-49f0-a774-0806a1a41431.png)

#### do while

![image](https://user-images.githubusercontent.com/110683744/208884732-597d0ea9-478e-48d0-92db-bf2e5405b288.png)

#### switch

![image](https://user-images.githubusercontent.com/110683744/208884928-40e9cfb7-85a8-4887-9434-10d03865db54.png)

#### break

![image](https://user-images.githubusercontent.com/110683744/208885286-2f6a0cc6-66eb-4968-970a-79d1d34c4377.png)

#### continue

![image](https://user-images.githubusercontent.com/110683744/208885379-3f6c55a3-782e-47b0-af9c-6ee296a15374.png)

## Flutter

Flutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia. (Fuente Wikipedia)

### Pasos para instalar Flutter

Links de descarga del SDK Flutter, Android Studio y Visual Studio Code:

https://docs.flutter.dev/get-started/install

https://developer.android.com/studio?hl=es-419&gclid=EAIaIQobChMIy-ydtsWK_AIViNSGCh2VzweIEAAYASAAEgKuV_D_BwE&gclsrc=aw.ds

https://code.visualstudio.com/download

Tutorial paso a paso de instalación:

https://www.youtube.com/watch?v=NF6kQJY5kL4

### Ejemplo de proyecto basico con Flutter y su personalización

![image](https://github.com/WilliamQ16/Proyectos_Flutter/blob/main/Readme/Imagen1.png)

![image](https://github.com/WilliamQ16/Proyectos_Flutter/blob/main/Readme/Imagen2.png)

### Instalación de paquetes en Flutter

Abre el fichero pubspec.yaml localizado dentro de la carpeta de la app, y añade el nombre del paquete con su número de versión: debajo de dependencies.

![image](https://www.ionos.es/digitalguide/fileadmin/DigitalGuide/Screenshots_2020/Android-Studio-adding-a-language-package-in-the-Flutter-app.png)

### Ejemplo de un paquete ya implementado

![image](https://github.com/WilliamQ16/Proyectos_Flutter/blob/main/Readme/Imagen5.png)

### Firebase

Firebase de Google es una plataforma en la nube para el desarrollo de aplicaciones web y móvil. Está disponible para distintas plataformas (iOS, Android y web), con lo que es más rápido trabajar en el desarrollo.

Aunque fue creada en 2011 pasó a ser parte de Google en 2014, comenzando como una base de datos en tiempo real. Sin embargo, se añadieron más y más funciones que, en parte, permitieron agrupar los SDK de productos de Google con distintos fines, facilitando su uso. (Fuente: DIGITAL55)

#### Configuración 

- Al ingresar a la consola de firebase - https://firebase.google.com/ - con nuestra cuenta de
trabajo, creamos un proyecto para nuestra APP; configuramos el método de autenticación y
creamos la base de datos.

![image](https://user-images.githubusercontent.com/110683744/208893300-72552659-83aa-4574-9c18-434a502a1ac3.png)

![image](https://user-images.githubusercontent.com/110683744/208893517-8b5333e1-1ade-4d27-a618-6a19e3f6bca3.png)

- En la opción de Compilación, damos clic en Authentication

![image](https://user-images.githubusercontent.com/110683744/208893761-93aba33e-7bec-4550-9178-8a8cdc8fa0d5.png)

![image](https://user-images.githubusercontent.com/110683744/208893940-b979096d-2181-4179-859c-8dee1172ccbe.png)

- Seleccionamos autenticación mediante correo
electrónico/contraseña

![image](https://user-images.githubusercontent.com/110683744/208894194-9d1e1a81-f5c2-41e9-83b4-16d3f091ea5e.png)

- Habilitar Correo electrónico/contraseña

![image](https://user-images.githubusercontent.com/110683744/208894563-02b6b9b0-2290-4d85-9f7b-a67720b47d28.png)

![image](https://user-images.githubusercontent.com/110683744/208894782-469233b5-1108-4f32-a91a-0bf7582e5ae0.png)

- En la opción de Compilación, damos clic en Firestore Database

![image](https://user-images.githubusercontent.com/110683744/208895196-ef5989cf-c195-4b36-b0b2-6556106ab2e2.png)

![image](https://user-images.githubusercontent.com/110683744/208895324-7aeeed8b-3779-4ee7-b48b-5018ad555053.png)

- Seleccione Comenzar en modo de prueba

![image](https://user-images.githubusercontent.com/110683744/208895557-1681443f-0631-4c4d-b2b0-64e79dac123f.png)

- No cambie el nodo donde se va a crear la base de datos en Cloud firestore
