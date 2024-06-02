# Bancoin

## Diseño Conceptual

Bancoin es un banco digital que proporciona una plataforma para que los usuarios realicen transacciones financieras de manera segura y eficiente. Ofrece la posibilidad de iniciar sesión para usuarios existentes o de registrarse para nuevos usuarios.

## Funcionalidades

### Autenticación
- **Inicio de sesión:** Acceso seguro para usuarios registrados.
- **Registro:** Creación de una nueva cuenta para nuevos usuarios.

### Transacciones
- **Depósitos y Retiros:** Operaciones en dólares (USD), euros (EUR) o pesos colombianos (COP).
  - **Tasas de cambio:**
    - 1 USD = 4000 COP
    - 1 EUR = 4500 COP
  - **Monto mínimo:** 200 COP por transacción.
  - **Costo de transacción:**
    - Transacciones menores a 50,000 COP: costo de 100 COP.
    - Transacciones de 50,000 COP o más: se cobra el 1% del monto total.

### Historial
- Visualización de las **últimas 10 transacciones** realizadas.

### Políticas de Privacidad
- Información estática predefinida sobre la privacidad de los datos del usuario.

## Supuestos
- Todos los datos, excepto los botones y la información estática, se obtienen de la base de datos (BD).

## Notas Adicionales
- Las políticas de privacidad son datos quemados (hardcoded).
- Las transacciones y operaciones se registran y almacenan en la BD para su posterior visualización en el historial.

**todo lo explicitado en el texto puede ser tomado como supuesto**
