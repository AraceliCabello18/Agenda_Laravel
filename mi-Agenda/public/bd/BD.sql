
CREATE TABLE `t_categorias` (
    `id_categoria` int(11) NOT NULL,
    `nombre` varchar(255) DEFAULT NULL,
    `descripcion` text,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `t_contactos` (
    `id_contacto` int(11) NOT NULL,
    `id_categoria` int(11) NOT NULL,
    `nombre` varchar(245) DEFAULT NULL,
    `paterno` varchar(245) DEFAULT NULL,
    `materno` varchar(245) DEFAULT NULL,
    `telefono` varchar(145) DEFAULT NULL,
    `email` varchar(245) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE `t_categorias`
    ADD PRIMARY KEY (`id_categoria`);

ALTER TABLE `t_contactos`
    ADD PRIMARY KEY (`id_contacto`),
    ADD KEY `fkContactoCategoria` (`id_categoria`);

ALTER TABLE `t_categorias`
    MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `t_contactos`
    MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `t_contactos`
    ADD CONSTRAINT `fkContactoCategoria` FOREIGN KEY (`id_categoria`) REFERENCES `t_categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;