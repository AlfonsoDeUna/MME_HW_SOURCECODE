############### CLASE DÍA 21\09\2021 ###################
## Cambios de base
## Variables en PowerShell
## Pedir datos por consola al usuario
## Crear menú para un script
#########################################################

## Pasar un num binario a decimal
[convert]::toint32('111',2)

## Pasar un num en octal a decimal
[convert]::toint32('667',8)

## Pasar un num en hexadecimal a decimal
[convert]::toint32('A2',16)

## Ejemplos de clase###################
#en Hexadecimal a decimal
[convert]::ToInt32("A",16)

## pasar de un decimal a un binario
[convert]::ToString("7",2)

#########################################

## Pasar un decimal --> a un binario
$valor = [convert]::ToString($valor,2)

## Una variable es una manera para almacenar un valor
## Para crear una variable se utiliza el $ y una palabra que lo describa
## Para asignar valor a una variable simplemente tenemos que poner = y poner su valor
$val = 5
$val # obtenemos el 5 en pantalla

## Asingar un valor a una variable y luego sumar 1 al valor guardado de la variable
$val = 10
$val + 1

## Incrementar el valor de una variable y que quede guardado
$val = $val + 1

## Pedir que un usuario añada un valor por pantalla 
Read-Host "añade un valor "

## Pedir que un usuario añada un valor por pantalla y guardarlo en una variable para luego
## utilizarlo
$valor = Read-Host "añade un valor "


##
# Ejemplo de conversion de binario a decimal con variables para que
# sea genérico y el usuario pueda añadir cualquier número binario
##
$binario = Read-host "dime el numero binario"
$valor=[convert]::toint32($binario,2)
"el numero es..." + $valor


##
# Ejercicio de clase pedir un num en hexadecimal y pasarlo a binario
##
$hexa = Read-host "dime el numero en hexadecimal"
$valor = [convert]::toint32($hexa,16)
$valor = [convert]::ToString($valor,2)
"el valor es" + $valor


## Crear un menú en pantalla para que el usuario pueda elegir qué hacer
## Práctica muy importante de cara a crear nuestros propios scripts de 
## mantenimiento de máquinas.

write-host "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
write-host "|                               |"
write-host "|            menu               |"
write-host "|                               |"
write-host "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

write-host " 1. Convierte de binario a decimal"
write-host " 2. Convierte de hexadecimal a binario"
$option = read-host "selecciona operacion "
