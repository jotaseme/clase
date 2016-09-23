@echo off
:: Con :: se establecen comentarios

::set se definen variables
set workspace=C:\Users\bn0434\Desktop\IWVG\Workspace IWVG\maven2

::Las variables de entorno se pueden configurar directamente en Windows cuando se tienen los permisos necesarios
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_51
set M2_HOME=C:\Users\bn0434\Desktop\IWVG\apache-maven-3.3.9
 
:: %var% se accede a una variable
set PATH=%PATH%;%JAVA_HOME%\bin;%M2_HOME%\bin

::echo saca por pantalla un mensaje
echo -----------------------------------------
echo . (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo JAVA_HOME --- %JAVA_HOME%
echo M2_HOME   --- %M2_HOME%
echo .
cd %workspace%
echo ============ mvn --version =======================================================
echo .
:: Se ejecuta un comando maven
call mvn --version
echo .

## Make an executable jar file
echo "====== MAKING THE FINAL JAR FILE ===================="

echo "mvn install"
mvn install -Denvironment.type=preproduction
