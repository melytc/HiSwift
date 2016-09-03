import UIKit

// 1. Escribe una función que reciba como parámetro un número (entre 1 y 10) y
// muestre la tabla de multiplicar correspondiente
// IMPORTANTE: Usa el estatuto for de swift
// Llama a la función anterior con al menos 2 valores diferentes
func tablaMultiplicar(numero: Int) {
    if numero <= 10 && numero >= 1 {
        for i in 0...10 {
            print("\(numero) x \(i) = \(numero * i)")
        }
    }
}

print("Tabla del 2")
tablaMultiplicar(2)
print("")
print("Tabla del 3")
tablaMultiplicar(3)

print("------------------------------------------")
// 2. Escribe un ciclo que muestre valores entre a y b avanzando de 2 en 2
var inicio = 20
var fin = 30

while inicio <= fin {
    print(inicio)
    inicio += 2
}

print("------------------------------------------")
// 3. Escribe un estatuto switch que muestre valores numéricos de acuerdo a la siguiente tabla de claves
// A, F  - 25
// B, K  - 32
// D, E, G  - 40
// Agrupar casos en el switch
var caracter = "A"

switch caracter {
    case "A", "F":
        print(25)
    case "B", "K":
        print(32)
    case "D", "E", "G":
        print(40)
    default:
        break
}

print("------------------------------------------")
// 4. Crea un arreglo que contenga nombres de persona
// Luego haz un ciclo for para mostrar dichos nombres en la pantalla
// Con valores fijos
var nombres = ["Axel", "Raúl", "Melissa", "Janet"]

for nombre in nombres {
    print(nombre)
}

// 5. Agrega un nombre al arreglo de nombres
nombres.append("Andrés")
nombres.append("Sofía")

print("------------------------------------------")
// 6. Muestra el nombre que se encuentra en la posición (x)
// Usa un mensaje "En la posicion 2 se encuentra ...."
var x = 2
print("En la posición \(x) se encuentra \(nombres[x])")

// Otra manera de imprimir el mensaje
x = 0
print("En la posición \(x) se encuentra " + nombres[x])

print("------------------------------------------")
// 7. Declara un arreglo vacío de valores enteros
// Haz un ciclo para agregar al arreglo vacío algunos valores
// Muestra el contenido del arreglo usando un print con el nombre del arreglo
var numeros : [Int] = [Int]()
// Mismo que: var numeros = [Int]()

for val in 1...10 {
    numeros.append(val)
}

print("\(numeros)")
print("------------------------------------------")
// 8. Escribe una función que recibe un arreglo de números enteros y regresa como
// valor de retorno el valor mayor y el promedio de los valores del arreglo.
// Usa una tupla para regresar estos datos
// Crea un arreglo de números y llama a la función;
// después muestra los valores que regresó
func mayorProm (numeros: [Int]) -> (mayor: Int, prom: Float) {
    var mayor = 0
    var prom = 0
    for numero in numeros {
        if numero > mayor {
            mayor = numero
        }
        prom += numero
    }
    return(mayor, Float(prom) / Float(numeros.count))
}

var arreglo = [5, 1, 3, 2, 4, 0]
print(mayorProm(arreglo))

print("------------------------------------------")
// 9. Escribe la clase Artículo con los atributos ident, descrip, precio
// que tenga un método de inicialización con valores default,
// un método de inicialización con parámetros y
// un método aumentaPrecio que reciba el porcentaje a aumentar como valor
// entero y regrese el nuevo precio sin modificar el precio del objeto
class Articulo {
    var ident : Int
    var descrip : String
    var precio : Double
    
    init() {
        ident = 0
        descrip = ""
        precio = 0.0
    }
    
    init(fromArticulo ident: Int, descrip: String, precio: Double) {
        self.ident = ident
        self.descrip = descrip
        self.precio = precio
    }
}

// 10. Crea un objeto de tipo Artículo usando el constructor default y luego
// asigna un valor a cada uno de los atributos de ese objeto
var agua = Articulo()

agua.ident = 101
agua.descrip = "Agua embotellada Bonafont de 1 litro"
agua.precio = 10.50

// 11. Crea un artículo más usando el constructor con parámetros
var leche = Articulo(fromArticulo: 102, descrip: "Leche de chocolate Lala de 500 ml", precio: 8.00)

// 12. Crea un arreglo que contenga los artículos creados en los 2 puntos anteriores
// Usa un ciclo para mostrar (usando print) mensajes con los 3
// datos de cada uno de los artículos de la lista
var articulos : [Articulo] = [agua, leche]

for articulo in articulos {
    print(articulo.ident, articulo.descrip, articulo.precio)
}

// 13. Crea un artículo más usando cualquiera de los 2 constructores
// Agrega el artículo a la posición inicial del arreglo
var dulce = Articulo(fromArticulo: 103, descrip: "Dulces de chocolate", precio: 6.00)

articulos.insert(dulce, atIndex: 0)

// 14. Crea un artículo más usando cualquiera de los 2 constructores
// Agrega el artículo al final del arreglo de objetos
var galletas = Articulo(fromArticulo: 104, descrip: "Galletas de avena", precio: 9.50)

articulos.append(galletas)
// Mismo que: articulos += [galletas]

print("------------------------------------------")
// 15. Muestra de nuevo el contenido del arreglo de objetos
for articulo in articulos {
    print(articulo.ident, articulo.descrip, articulo.precio)
}