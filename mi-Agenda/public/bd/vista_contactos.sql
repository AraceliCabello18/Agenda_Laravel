USE agenda_laravel;
CREATE OR REPLACE VIEW v_contactos AS
SELECT contactos.id_contacto AS id_contacto,
    categorias.id_categoria AS id_categoria,
    categorias.nombre AS nombre_categoria,
    contactos.paterno AS paterno,
    contactos.materno AS materno,
    contactos.nombre AS nombre,
    contactos.telefono AS telefono,
    contactos.email AS email
FROM t_contactos AS contactos
    INNER JOIN t_categorias AS categorias ON contactos.id_categoria = categorias.id_categoria;