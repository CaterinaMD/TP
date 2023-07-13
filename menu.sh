#!/bin/bash

mostrar_menu() {
  echo "Selecciona una opción:"
  echo "1. Ejecutar generar.sh"
  echo "2. Ejecutar descargar.sh"
  echo "3. Ejecutar descomprimir.sh"
  echo "4. Ejecutar procesar.sh"
  echo "5. Ejecutar comprimir.sh"
  echo "0. Salir"
}

ejecutar_generar() {
  read -p "Ingrese cantidad de imagenes a generar: " numero
  echo "Ejecutando generar.sh..."
  ./generar.sh "$numero"
}

ejecutar_descargar() {
  read -p "Ingrese URL imagenes: " url1
  read -p "Ingrese URL suma de verificación: " url2
  echo "Ejecutando descargar.sh..."
  ./descargar.sh "$url1" "$url2"
}

ejecutar_descomprimir() {
  echo "Ejecutando descomprimir.sh..."
  ./descomprimir.sh
}

ejecutar_procesar() {
  echo "Ejecutando procesar.sh..."
  ./procesar.sh
}

ejecutar_comprimir() {
  echo "Ejecutando comprimir.sh..."
  ./comprimir.sh
}

while true; do
  mostrar_menu

  read -p "Ingrese el número de opción: " opcion

  case $opcion in
    1)
      ejecutar_generar
      ;;
    2)
      ejecutar_descargar
      ;;
    3)
      ejecutar_descomprimir
      ;;
    4)
      ejecutar_procesar
      ;;
    5)
      ejecutar_comprimir
      ;;
    0)
      echo "Saliendo del menú..."
      exit 0
      ;;
    *)
      echo "Opción inválida. Por favor, ingrese un número válido."
      ;;
  esac

  echo ""
done
