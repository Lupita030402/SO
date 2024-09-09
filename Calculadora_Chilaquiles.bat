//ejercicio de calculadora basica 
//
//Nombre: Chilaquiles con bistec 
//Version: 1.3
//Fecha: 3/Septiembre/2024
//Explicación: Calculadora basica, integrando opciones para calculo de área y perimetro de las figuras cuadrado, rectángulo, triángulo y circulo.

//-Lenguaje fach .bad-
@echo off
:start
   cls
   echo Selecciona una opcion:
   echo.
   echo 1. Suma - J
   echo 2. Resta - I
   echo 3. Division - D
   echo 4. Multiplicacion - JA
   echo 5. Potencia - J
   echo 6. Area Cuadrado - I
   echo 7. Area Rectangulo - D
   echo 8. Area Triangulo - JA
   echo 9. Area Circulo - J
   echo 10. Salir

   set /p option="Elije el numero de la opcion que quieres:"

   if "%option%" == "1" goto sum
   if "%option%" == "2" goto rest
   if "%option%" == "3" goto div
   if "%option%" == "4" goto mult
   if "%option%" == "5" goto pot
   if "%option%" == "6" goto cuadrado
   if "%option%" == "7" goto rectangle
   if "%option%" == "8" goto triangulo
   if "%option%" == "9" goto circulo
   if "%option%" == "10" goto finish

   echo. No es valido
   echo.
   pause
   echo.
   goto start

:sum
   echo --suma--
   set /p number1="Primer numero:"
   set /p number2="Segundo numero:"
   set /a sum=%number1% + %number2%
   echo El resultado es: %sum%
   pause
   goto start

:rest
   echo --resta--
   set /p number1="Primer numero:"
   set /p number2="Segundo numero:"
   set /a rest=%number1% - %number2%
   echo El resultado es: %rest%
   pause
   goto start

:div
   echo --division--
   set /p number1="Primer numero:"
   set /p number2="Segundo numero:"
   if %number2%==0 (
       echo Division por cero no permitida
       pause
       goto start
   )
   set /a div=%number1% / %number2%
   echo El resultado es: %div%
   pause
   goto start

:mult
   echo --multiplicacion--
   set /p number1="Primer numero:"
   set /p number2="Segundo numero:"
   set /a mult=%number1% * %number2%
   echo El resultado es: %mult%
   pause
   goto start

:pot
   echo --Potencia --
   set /p number1="Numero que se va elevar: "
   set /p number2="Numero al que desea elevar (Que sea entero por favor): "
   set /a result=1
   set /a counter=0
   :loop
   if %counter% lss %number2% (
       set /a result=result * %number1%
       set /a counter=counter + 1
       goto loop
   )
   echo El resultado es: %result%
   pause
   goto start

:cuadrado
   echo --cuadrado--
   set /p number1="Ingrese la medida de un lado del cuadrado:"
   set /a mult=%number1% * %number1%
   echo El area es: %cuadrado%
   pause
   goto start


:rectangle
   echo --rectangulo--
   

:triangulo
   echo --triangulo--
   

:circulo
   echo --circulo--
   

:finish
   echo Salir 
   pause
   EXIT /B
