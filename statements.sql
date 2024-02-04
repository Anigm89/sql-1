-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
select nombre, apellido, lenguaje from usuarios_lenguajes


-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí
select count(*) from usuarios_lenguajes


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
select * from usuarios_lenguajes where edad >30


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.

select count(*) from usuarios_lenguajes where lenguaje like 'JavaScript'


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
select * from usuarios_lenguajes where edad = 28


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
select * from usuarios_lenguajes where email like 'juan.gomez@example.com'


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
select * from usuarios_lenguajes where lenguaje like 'Java' and edad < 25


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
select count(distinct edad) from usuarios_lenguajes where lenguaje like 'Java' 


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
select * from usuarios_lenguajes where lenguaje is null


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
select nombre , edad from usuarios_lenguajes where edad = ( select MIN(edad) from usuarios_lenguajes)


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
select nombre, edad from usuarios_lenguajes  order by edad desc

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
select count(*) from usuarios_lenguajes  where edad > 28

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
select * from usuarios_lenguajes  where apellido like '%a%'

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
select lenguaje, count(*) as usuarios from usuarios_lenguajes  where edad < 30 group by lenguaje

-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
select * from usuarios_lenguajes  where edad > 25 and lenguaje like 'TypeScript'

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
select count(*) from usuarios_lenguajes  where lenguaje like 'Python'

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
select nombre, lenguaje from usuarios_lenguajes  where lenguaje is not null order by nombre asc

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
select * from usuarios_lenguajes  where email like '%example%'

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
select * from usuarios_lenguajes  where lenguaje is not null and edad between 25 and 35

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
select count(*) from usuarios_lenguajes  where lenguaje like 'CSS' and edad < 25

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- No funciona
SELECT *, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes GROUP BY lenguaje HAVING COUNT(lenguaje) > 0;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
select lenguaje from usuarios_lenguajes order by length(lenguaje) desc limit 1

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
select concat (nombre,' ',apellido) as  usuario from usuarios_lenguajes

-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
select count(distinct lenguaje) from usuarios_lenguajes where edad > 25

-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
select edad, GROUP_CONCAT(nombre) AS quintos from usuarios_lenguajes group by edad HAVING COUNT(*) > 1;


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
select * from usuarios_lenguajes where edad < 30 order by length(lenguaje) desc limit 1


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
select email from usuarios_lenguajes where lenguaje is not null


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
select count(*) from usuarios_lenguajes where apellido like 'G%'


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
select * from usuarios_lenguajes where lenguaje like 'J%' order by length(lenguaje) asc limit 1

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
select * from usuarios_lenguajes where edad > 30 order by length(lenguaje) asc

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
select * from usuarios_lenguajes where lenguaje is not null order by lenguaje asc

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
select count(*) from usuarios_lenguajes where edad between 20 and 25 and lenguaje is not null

-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
select * from usuarios_lenguajes where  lenguaje like 'SQL'

-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
select * from usuarios_lenguajes where  edad < 30 order by length(lenguaje) desc

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
SELECT *, edad - (SELECT AVG(edad) FROM usuarios_lenguajes) AS diferencia_edad FROM usuarios_lenguajes;

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
select count(*) from usuarios_lenguajes where lenguaje like '%Script%'

-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
select nombre, length(nombre) as longitud from usuarios_lenguajes where lenguaje is not null 


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
select lenguaje from usuarios_lenguajes order by id_usuario desc limit 1


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
select sum(edad) from usuarios_lenguajes 


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
select count(*) from usuarios_lenguajes where lenguaje like 'P%' and edad < 28

