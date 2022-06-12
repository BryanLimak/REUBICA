drop database if exists reubica_db;
CREATE SCHEMA IF NOT EXISTS `reubica_db`;
USE `reubica_db` ;

CREATE TABLE IF NOT EXISTS `reubica_db`.`users` (
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `loggedIn` boolean NOT NULL ,
  PRIMARY KEY (`id`)
    );

CREATE TABLE IF NOT EXISTS `reubica_db`.`protectora` (
  `idprotectora` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `ciudad` VARCHAR(80) NOT NULL,
  `img` VARCHAR(100) NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `mail` VARCHAR(80) NOT NULL,
  `maps` VARCHAR(500) NULL DEFAULT NULL,
   PRIMARY KEY (`idprotectora`)
    );

CREATE TABLE IF NOT EXISTS `reubica_db`.`perro` (
  `idperro` INT NOT NULL AUTO_INCREMENT,
  `caracter` VARCHAR(999) NULL DEFAULT NULL,
  `descripcion` VARCHAR(900) NULL DEFAULT NULL,
  `edad` INT NOT NULL,
  `img` VARCHAR(100) NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `protectora_idprotectora` INT NOT NULL,
  `sexo` ENUM("macho", "hembra") NOT NULL,
  `tamano` ENUM("pequeño", "mediano", "grande") NOT NULL,
  PRIMARY KEY (`idperro`),
  FOREIGN KEY (`protectora_idprotectora`)
    REFERENCES `reubica_db`.`protectora` (`idprotectora`)
    );

insert into users(username, password, loggedIn) 
values
("admin@gmail.com", "admin",False);

insert into protectora(maps,nombre,ciudad, descripcion, mail,img)
values
("https://www.google.es/maps/@41.4267466,2.1690256,14.21z","Adopte","barcelona", "Protectora de animales sin fines de lucro con su objetivo principal fijado en rescatar y reubicar perros en situacion de calle", "info@adopte.com","adopte.webp"),
("https://www.google.es/maps/@41.4289861,2.1623395,14.96z","Huellas Callejeras","barcelona", "Protectora de animales sin fines de lucro con su objetivo principal fijado en rescatar y reubicar perros en situacion de calle", "info@huellascallejeras.com","huellas.png"),
("https://www.google.es/maps/@41.4139059,2.1042451,13.21z","Palevlas","barcelona", "Protectora de animales sin fines de lucro con su objetivo principal fijado en rescatar y reubicar perros en situacion de calle", "contacto@palevlas.com","palevlas.png"),
("https://www.google.es/maps/@41.4267466,2.1690256,14.21z","Protecms","barcelona", "Protectora de animales sin fines de lucro con su objetivo principal fijado en rescatar y reubicar perros en situacion de calle", "hola@protecms.com","protecms.png");


insert into perro(img,nombre,edad,sexo,tamano,caracter,descripcion,protectora_idprotectora)
values
("arif.jpg","arif",5,"hembra","grande","[calmado]","Es un perro tranquilo que fue rescatado en invierno",1),
("asia.jpg","asia",3,"hembra","mediano","[calmado]","Es un amor de perreta, dulce y buena. Debido a que llegó demasiado pequeña al albergue y no ha tenido contacto apenas con los humanos, tiene miedo. Necesita urgentemente un hogar donde conocer el cariño sino se convertirá en un perro con miedo y jamás saldrá del albergue. ",2),
("axel.jpg","axel",7,"macho","pequeño","[calmado]","Un perrito precioso con un carácter simpaticón, comparte chenil sin problemas. Busca un hogar donde pueda formar parte de una familia, un sitio donde le quieran como uno mas y no vuelvan a dejarle solo a su suerte? suerte que por ahora ha sido mala, pero tu puedes cambiarla!",3),
("bob.jpg","bob",10,"macho","mediano","[calmado]","Es un perro tranquilo que rescatado en invierno",4),
("boby.jpg","boby",1,"macho","grande","[calmado]","Convive con otros perros, está suelto, es muy independiente, tiene 8 años.",1),
("braulio.jpg","braulio",1,"macho","mediano","[calmado]","Es muy buena ,cariñosa y obediente",2),
("brownie.jpg","brownie",2,"hembra","grande","[calmado]","Comparte jaula con Kruger y es una perrita sumisa. Ha llegado muy delgada y le está costando coger peso, pero hemos hecho varias pruebas y no tiene nada.",3),
("chocachoca.jpg","chocachoca",3,"macho","mediano","[calmado]","Es cariñosa, juguetona, sociable con personas y perros bajo supervisión",4),
("donuts.jpg","donuts",8,"macho","grande","[calmado]","Un perro muy cariñoso , y súper juguetón le encanta las pelotas y es súper amable con la gente es de raza jack rusell",1),
("grace.jpg","grace",9,"hembra","mediano","[calmado]","Recogida de la calle con mucho miedo pero con el tiempo ha empezado a confiar en el ser humano y esta lista para encontrar una familia",2),
("heihei.jpg","heihei",19,"hembra","pequeño","[calmado]","Es muy buena ,cariñosa y obediente",3),
("ina.jpg","ina",17,"hembra","grande","[calmado]","Esta preciosidad tiene 10 meses aprox. Fue abandonada a principios de Abril siendo solo una cachorrita. Seguro que ya ha pasado lo peor para ella y pronto encontraremos un buen hogar para esta peluda.",4),
("jhon.jpg","jhon",15,"macho","mediano","[calmado]","Fue recogido de la calle en el Distrito de Vallecas. Es sociable con las personas, también con otros perros una vez que los conoce pero no se deja dominar. Es muy activo y juguetón. Requiere licencia PPP y preferiblemente un adoptante con experiencia.",1),
("jose.jpg","jose",12,"macho","grande","[calmado]","Es muy cariñoso, amigable y protector. El fue ingresada vagando en el Ajusco, es amigable con niños y con otros perritos.",2),
("lulu.jpg","lulu",8,"hembra","pequeño","[calmado]","Necesita un hogar donde tenga terreno para poder correr ya que es lo que necesita, le gusta mucho correr y lo disfruta, es cruza con bodeguero, es muy buena pero le hace falta espacio, nosotros la rescatamos pero la verdad que tenemos más animalitos y resulta un poco complicado el tenerla más que nada por tiempo y espacio, es una perrita muy buena y juguetona y necesita de alquilen que la quiera.",3),
("max.jpg","max",6,"macho","grande","[calmado]","Mastín nacido aprox en enero de 2021 (Más de 35 kg) Serrano es un joven grandullón, un oso tamaño XXL. Salió de prote siendo un cachorrito, pero su familia le devolvió porque era más fácil deshacerse de él, que sentarse a entenderle. Serrano es un perro mimoso y tremendamente familiar, pero también es un perro fuerte.",4),
("ramon.jpg","ramon",4,"macho","grande","[calmado]","Es un perro espectacular, extremadamente cariñoso y obediente. Jugetón y noble. Un portento de perro. La vida nos llevó a adoptarlo cuando nació y creció mucho más de lo esperado, necesita una familia que le dé lo que nosotros no podemos darle. Atención y compañía. El quiere jugar y salir y nosotros no tenemos el tiempo que requiere.",1),
("siroko.jpg","siroko",3,"macho","pequeño","[calmado]","Le encanta estar con la gente y jugar con otros perros. Es obediente y dócil y se porta muy bien. Pasea bien con correa y le gusta viajar en coche.",2),
("tawa.jpg","tawa",2,"hembra","mediano","[calmado]","Red nose pitbull, 3 años, sociable, obediente, sana, muy bien con otros perros y niños, gatos no. Sabe pasear con correa, le encantan los juguetes.",3),
("vaca.jpg","vaca",1,"hembra","grande","[calmado]","Es muy cariñosa y simpática, es una perra muy sociable a la que le gusta jugar mucho con los otros perros, necesita un sitio donde pueda correr y desfogar, en la calle es muy activa y le encanta jugar, en casa es más tranquila se acuesta a los pies buscando mimos. Eso si ten cuidado con dejarte algo de comida encima de la mesa, en un segundo no habrá nada.",4),
("amer.png","amer",2,"hembra","pequeño","[calmado]"," Tiene buena relación con los niños juega con ellos y los trata con cuidado. Su relación con Los Gatos realmente no se cuál es, porque con mi gata parece que quiera jugar, pero la gata no quiere, es muy arisca e independiente, entonces no se si realmente pelean o juegan, la gata no ha sufrido nunca ningún daño, la persigue como si estuviera jugando.",1),
("raul.png","raul",4,"macho","mediano","[calmado]","Es un jovenzuelo súper cariñoso y juguetón. Se lleva genial con otros perretes y es muy bueno en casa. A pesar de tener solo un año ya sabe lo que es el abandono... una familia que paseaba por el campo lo encontró y pudo ser rescatado, tenía una patita mal, pero con cuidados y cariño ya está totalmente recuperado!",2),
("xena.png","xena",12,"hembra","grande","[calmado]","Fue abandonado siendo solo un bebe junto a sus hermanos, todos encontraron un buen hogar menos el... No entendemos como aun nadie se ha enamorado de este precioso perro.",3),
("chococho.webp","chococho",11,"macho","mediano","[calmado]","Es muy sociable con todo el mundo, y también sale al patio con sus compañeras hembras sin problemas, y también con algunos machos. No tiene el hábito de pasear con la correa, así que necesita un poco de tiempo y paciencia en los paseos hasta que aprenda a no tirar. Vivir con una familia que tenga jardín sería lo ideal.",4),
("fred.webp","fred",8,"macho","grande","[calmado]","Es una podenquita de tamaño mediano (17kg aprox) de lo más adorable. Tiene muy buen carácter, súper sociable, cariñosa, divertida, activa y juguetona. Todo un solete en adopción.",1),
("laica.webp","laica",5,"hembra","mediano","[calmado]","Después de 3 años y 3 camadas, logramos rescatarla con ayuda de una persona. Ella no se dejaba coger, y paría en cada celo. Con su última camada entró en jaulas. Allí robaron a 4 de sus bebés y devolvieron a uno muerto, todo esto hizo que lo poco que había avanzado se perdiera. Tiene mucho miedo al humano, necesita uno que le dedique tiempo, paciencia y mucho cariño.",2),
("laura.webp","laura",3,"hembra","pequeño","[calmado]","Encontramos a este callejero perdido por la nieve, con sus patas heladas y su rabo congelado y tuvimos que amputarlo, queríamos que una experiencia tan traumática fuese el inicio de su nueva vida, por eso decidimos llamerle FLAKE que significa copo de nieve.",3);