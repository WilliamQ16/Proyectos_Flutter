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

if(boolean_expression){ 
   // statement(s) will execute if the Boolean expression is true. 
} else { 
   // statement(s) will execute if the Boolean expression is false. 
} 

#### for

void main() { 
   var num = 5; 
   var factorial = 1; 
   
   for( var i = num ; i >= 1; i-- ) { 
      factorial *= i ; 
   } 
   print(factorial); 
}

#### for in

for (variablename in object){  
   statement or block to execute  
}
