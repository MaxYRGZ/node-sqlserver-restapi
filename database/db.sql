CREATE DATABASE ciberguarddb;
USE ciberguarddb;
-- prueba
CREATE TABLE products (
id INT IDENTITY(1, 1) PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price DECIMAL(10, 2),
quantity INT,
description TEXT);

INSERT INTO products(name,description,quantity,price)VALUES ('mouse','mouse gaming',10, 100)
--de aqui para abajo es para web
CREATE DATABASE ciberguarddb;
USE ciberguarddb;

CREATE TABLE correos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    correo VARCHAR(1000) NOT NULL ,
    password VARCHAR(1000) NOT NULL
);

CREATE TABLE contrasena (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL
);

INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario1', 'pass1234', '2023-01-15');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario2', 'securePass!45', '2022-11-22');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario3', 'abcXYZ789', '2023-03-10');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario4', 'randomPass9', '2023-05-05');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario5', 'mypassword123', '2022-12-30');
INSERT INTO contrasena (nombre, password, fecha) VALUES ('usuario6', 'superSecure$8', '2023-02-27');
  --de aqui para abajo es para la aplicacion movil
  CREATE DATABASE ciberguarddb;
USE ciberguarddb;

CREATE TABLE  cuenta (
 id INTEGER PRIMARY KEY CHECK (id = 1),
 correo VARCHAR(100) NOT NULL,
 contraseña VARCHAR(100) NOT NULL
);
           
CREATE TABLE contrasenas (
  id INT IDENTITY(1,1) PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL UNIQUE,
 contraseña VARCHAR(100) NOT NULL,
 );
CREATE TABLE consejos (
 id INT IDENTITY(1,1) PRIMARY KEY,
consejo TEXT NOT NULL

);
CREATE TABLE preguntas_respuestas (
  id INT IDENTITY(1,1) PRIMARY KEY,
 pregunta TEXT NOT NULL,
 respuesta TEXT
 );

INSERT INTO consejos (consejo) VALUES
('Usa contraseñas fuertes y únicas para cada cuenta.'),
('Habilita la autenticación de dos factores (2FA) siempre que sea posible.'),
('Mantén tu software y sistemas operativos actualizados.'),
('No hagas clic en enlaces o adjuntos en correos electrónicos sospechosos.'),
('Utiliza un gestor de contraseñas para almacenar y generar contraseñas.'),
('Realiza copias de seguridad de tus datos regularmente.'),
('Utiliza conexiones seguras (HTTPS) al navegar por Internet.'),
('Sé cauteloso al compartir información personal en redes sociales.'),
('Desactiva el uso compartido de archivos cuando no lo necesites.'),
('Configura y utiliza un firewall para proteger tu red.'),
('Desconfía de las ofertas y promociones que parecen demasiado buenas para ser verdad.'),
('No uses redes Wi-Fi públicas para realizar transacciones sensibles.'),
('Usa un software antivirus y manténlo actualizado.'),
('Cierra sesión en tus cuentas cuando termines de usarlas, especialmente en computadoras compartidas.'),
('Evita usar la misma contraseña en múltiples sitios web.'),
('Configura alertas de seguridad en tus cuentas financieras.'),
('No almacenes información sensible en dispositivos móviles sin cifrar.'),
('Sé consciente de los permisos que otorgas a las aplicaciones en tu dispositivo.'),
('Revisa regularmente tus estados de cuenta y actividad bancaria.'),
('Desactiva la opción de autocompletar en tu navegador web para datos sensibles.'),
('Ten cuidado con los correos electrónicos de phishing que buscan robar tus datos.'),
('Usa cifrado para proteger datos sensibles en tu dispositivo.'),
('Configura tu router doméstico con una contraseña segura.'),
('No compartas tus contraseñas con nadie.'),
('Desactiva Bluetooth cuando no lo necesites.'),
('Configura tu correo electrónico para filtrar spam y correos sospechosos.'),
('Evita descargar software de fuentes no confiables.'),
('Usa un navegador web seguro y mantenlo actualizado.'),
('Cierra las aplicaciones y programas que no estés utilizando.'),
('Configura la verificación de identidad en dos pasos en tus cuentas importantes.'),
('Educa a tu familia y amigos sobre prácticas de ciberseguridad.'),
('No ingreses información personal en sitios web no seguros.'),
('Configura restricciones de privacidad en tus redes sociales.'),
('Usa una red VPN para proteger tu privacidad en línea.'),
('No confíes en mensajes de desconocidos que soliciten información personal.'),
('Configura el cifrado de disco completo en tus dispositivos.'),
('Realiza auditorías de seguridad periódicas en tus sistemas.'),
('No dejes dispositivos electrónicos desatendidos en lugares públicos.'),
('Utiliza autenticación biométrica cuando sea posible.'),
('Monitorea la actividad de tu red para detectar comportamientos inusuales.'),
('Utiliza software de gestión de dispositivos móviles (MDM) en entornos corporativos.'),
('Ten cuidado al usar dispositivos USB desconocidos.'),
('Configura la autenticación de correo electrónico (SPF, DKIM, DMARC).'),
('No reveles información personal en encuestas en línea.'),
('Usa cifrado de extremo a extremo en tus comunicaciones.'),
('Evita conectarte a redes Wi-Fi abiertas y no seguras.'),
('Mantén el software de tu router actualizado.'),
('Configura contraseñas seguras para todos los dispositivos de IoT.'),
('No compartas información personal en llamadas telefónicas no solicitadas.'),
('Evita usar servicios en línea que no ofrezcan cifrado SSL/TLS.'),
('Configura reglas de acceso y control para usuarios en tu red.'),
('Utiliza software de prevención de pérdida de datos (DLP).'),
('Implementa una política de seguridad para el uso de dispositivos móviles en tu empresa.'),
('Configura el monitoreo y registro de eventos de seguridad en tus sistemas.'),
('Utiliza herramientas de análisis de vulnerabilidades para detectar fallos de seguridad.'),
('Desactiva los servicios y puertos que no necesites en tus dispositivos.'),
('Realiza pruebas de penetración para evaluar la seguridad de tus sistemas.'),
('Configura y usa sistemas de detección de intrusiones (IDS/IPS).'),
('Usa autenticación multifactor (MFA) en sistemas críticos.'),
('Ten un plan de respuesta a incidentes de seguridad.'),
('No dejes tus dispositivos móviles desatendidos y sin protección.'),
('Desactiva las funciones de compartir ubicación en tus aplicaciones.'),
('Usa nombres de red (SSID) no descriptivos para tu Wi-Fi.'),
('Configura políticas de seguridad estrictas para el acceso remoto.'),
('Revisa y actualiza regularmente las políticas de seguridad de tu organización.'),
('Configura alertas de seguridad para actividad inusual en tus cuentas.'),
('Evita almacenar información confidencial en correos electrónicos.'),
('Configura reglas de seguridad en tu correo electrónico para detectar phishing.'),
('Usa autenticación basada en certificados en entornos empresariales.'),
('Evita usar preguntas de seguridad fáciles de adivinar.'),
('Configura y usa soluciones de seguridad para endpoints.'),
('Monitorea el uso de datos en tus dispositivos móviles.'),
('Configura políticas de seguridad para el uso de dispositivos USB.'),
('Ten cuidado con los mensajes de texto y llamadas de números desconocidos.'),
('Usa herramientas de cifrado para proteger archivos sensibles.'),
('Desactiva la conexión automática a redes Wi-Fi en tus dispositivos.'),
('Configura y usa soluciones de seguridad para la nube.'),
('Revisa y controla el acceso a los datos en tu organización.'),
('Usa contraseñas de al menos 12 caracteres con combinación de letras, números y símbolos.'),
('Configura el acceso basado en roles en tu organización.'),
('Monitorea y limita el uso de aplicaciones de terceros en tus sistemas.'),
('Implementa políticas de retención de datos para minimizar la exposición.'),
('Usa soluciones de administración de parches para mantener tus sistemas actualizados.'),
('Configura la autenticación federada en entornos empresariales.'),
('Ten cuidado con los enlaces en mensajes de texto y redes sociales.'),
('Configura y usa sistemas de gestión de identidades y accesos (IAM).'),
('Desactiva el acceso remoto a menos que sea estrictamente necesario.'),
('Usa la verificación de llamadas para evitar el spam telefónico.'),
('Configura políticas de seguridad para el uso de aplicaciones en la nube.'),
('Monitorea la actividad de red en tiempo real para detectar anomalías.'),
('Usa cifrado en los correos electrónicos que contienen información sensible.'),
('Implementa controles de acceso físico a áreas sensibles.'),
('Configura políticas de seguridad para el acceso a redes inalámbricas.'),
('Usa autenticación adaptativa basada en el contexto.'),
('Realiza análisis de riesgos regulares para identificar vulnerabilidades.'),
('Configura y usa soluciones de monitoreo de seguridad 24/7.'),
('No uses dispositivos de almacenamiento externo no verificados.'),
('Usa técnicas de anonimización para proteger datos sensibles.'),
('Configura la auditoría de seguridad para registrar actividades críticas.'),
('Revisa y refuerza regularmente las políticas de seguridad de la organización.');
