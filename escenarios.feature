# Proyecto: CaféExpress - Módulo de Pedidos Online
# Autor: Grupo 8 / Sebastián Moza Paredes
# Versión: v1.0-tema4

Feature: Gestión de Pedidos y Catálogo en CaféExpress

  Scenario: HU-01 - Consultar el catálogo de productos
    Given que el cliente ingresa al sistema CaféExpress
    When accede al catálogo de productos
    Then el sistema muestra los productos disponibles

  Scenario: HU-02 - Buscar productos por nombre
    Given que el cliente se encuentra en el catálogo
    When escribe el nombre de un producto existente
    Then el sistema muestra los productos que coinciden con la búsqueda

  Scenario: HU-03 - Consultar precios y descripciones
    Given que el cliente visualiza el catálogo
    When selecciona un producto
    Then el sistema muestra su precio y descripción

  Scenario: HU-04 - Agregar productos al carrito
    Given que el cliente visualiza un producto disponible
    When selecciona la opción de agregar al carrito
    Then el sistema incorpora el producto al carrito

  Scenario: HU-05 - Modificar cantidades del carrito
    Given que el carrito contiene un producto
    When el cliente modifica su cantidad a un valor válido
    Then el sistema actualiza la cantidad del producto
    And recalcula el importe correspondiente

  Scenario: HU-06 - Eliminar productos del carrito
    Given que el carrito contiene al menos un producto
    When el cliente selecciona la opción de eliminar un producto
    Then el sistema retira el producto del carrito
    And actualiza el importe de la compra