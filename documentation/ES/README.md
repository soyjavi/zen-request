# ZEN-request

Es el modulo ZEN, destinado a la creación de *requests* tanto para endpoints de ZENserver como para la captación de información de otros servicios en internet. Trae consigo un sistema de request testing que te ayudará a comprobar la integridad de tus endpoints.


## 1. Inicio


### 1.1 Instalación

Para instalar una nueva instancia de ZENrequest únicamente tienes que ejecutar el comando:

```
npm install zenrequest --save-dev
```

De esta manera tendrás todo lo necesario para comenzar con el proyecto. Otra manera, algo más rudimentaria, es modificar el fichero `package.json` incluyendo esta nueva dependencia:

```
{
  "name"            : "zen-request-instance",
  "version"         : "1.0.0",
  "dependencies"    : {"zenrequest": "*" },
  "scripts"         : {"start": "node zen.js"},
  "engines"         : {"node": "*"}
}
```

Como puedes ver además del *package* `zenrequest` hemos añadido también el package `coffee-script`, esto es así porque todos los ejemplos que vamos a ver lo vamos a realizar con este lenguaje. Esto no quiere decir que no puedas desarrollar con `JavaScript`, pero creemos que `CoffeeScript` es un *lenguaje* mucho más mantenible y legible. Si deseas aprender más sobre este lenguaje puedes descargarte el libro gratuito [CoffeeScript].

