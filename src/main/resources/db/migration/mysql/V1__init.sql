CREATE TABLE `store2` (
`id` bigint(20) NOT NULL,
`name` varchar(255) NOT NULL,
`data_atualizacao` datetime NOT NULL,
`data_criacao` datetime NOT NULL,
`city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `empresa`
ADD PRIMARY KEY (`id`);
ALTER TABLE `store`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;


INSERT INTO `store` (`id`, `name`, `data_atualizacao`, `data_criacao`, `city`)
VALUES (NULL, '82198127000121', CURRENT_DATE(), CURRENT_DATE(), 'Store ADMIN');