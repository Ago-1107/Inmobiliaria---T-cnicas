# Yupi Homes.

## Diseño Conceptual y Supuestos.
### Todo lo aquí escrito puede ser tomado como supuesto.

La inmobiliaria Yupi Homes da la posibilidad a los usuarios de que compren y/o vendan las casas más exclusivas del momento, admite a usuarios antiguos por medio de un formulario de inicio de sesión a la vez que da la oportunidad a nuevos clientes de registrarse.

## Funcionalidades.

### Autenticación.
- **Registro:** Creación de una nueva cuenta para nuevos usuarios.
  - No se puede registrar 2 veces ni la misma identificación ni el mismo correo
- **Inicio de sesión:** Acceso seguro para usuarios registrados.
  - En caso de ingresar mal un dato no se inica la sesión

### Verificación de Compras y Ventas.
- **Compras:** No permite, ni a una misma persona ni a varias, comprar una casa que ya tiene dueño.
  - El botón comprar deja de mostrase una vez que alguien compra.
- **Ventas:** Sólo se le da la opción de vender una casa a quien la compro.
- Al ser una inmobiliaria exclusiva y para famosos, se asume que los clientes tienen dinero suficiente para permitirse las residencias, por esto no hay verificaciones de dinero.
- Cada que se hace una operación la cantidad de viviendas es modificada, por lo que siempre podrá ver su cantidad de propiedades actuales.

## Actualización de Datos.
- A excepción de la información estatica de la compañía, texto de botones y titulos, los cuales son texto quemado; todos los datos son guardados y llamados desde la base de datos MariaDB, por lo que la actualidad de los datos es segura.
