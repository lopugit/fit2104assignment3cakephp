CREATE TABLE `categories` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(64) NOT NULL
);

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Gifts'),
(2, 'Flowers'),
(3, 'Accessories'),
(4, 'Cards'),
(5, 'Dresses'),
(6, 'Services');

CREATE TABLE `products` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `sale_price` decimal(9,2) NOT NULL,
  `country_of_origin` varchar(64) NOT NULL,
  `category_id` int(11) NOT NULL
);

INSERT INTO `products` (`id`, `name`, `sale_price`, `country_of_origin`, `category_id`) VALUES
(1, 'magnis dis parturient montes, nascetur', '390.50', 'United Kingdom', 1),
(2, 'suscipit nonummy. Fusce fermentum', '279.14', 'France', 2),
(3, 'fames ac turpis', '460.78', 'New Zealand', 4),
(4, 'Donec at arcu.', '394.65', 'New Zealand', 3),
(5, 'Proin nisl sem, consequat', '316.04', 'Belgium', 1),
(6, 'dignissim. Maecenas ornare', '151.04', 'New Zealand', 5),
(7, 'ac turpis egestas.', '324.24', 'New Zealand', 3),
(8, 'Vivamus euismod urna.', '107.61', 'Australia', 5),
(9, 'Ut sagittis lobortis mauris.', '291.05', 'Belgium', 2),
(10, 'urna. Vivamus molestie dapibus', '250.93', 'New Zealand', 5),
(11, 'erat. Etiam vestibulum massa', '307.74', 'Spain', 1),
(12, 'dui, in sodales elit', '116.84', 'United Kingdom', 2),
(13, 'suscipit nonummy. Fusce fermentum fermentum', '259.16', 'Spain', 1),
(14, 'eleifend vitae, erat. Vivamus', '394.44', 'France', 6),
(15, 'amet ante. Vivamus non', '123.10', 'France', 1),
(16, 'sed pede nec', '379.33', 'New Zealand', 1),
(17, 'est. Mauris eu turpis. Nulla', '217.65', 'France', 3),
(18, 'augue. Sed molestie. Sed id', '256.13', 'Spain', 4),
(19, 'quam. Curabitur vel', '175.03', 'India', 4),
(20, 'quis, tristique ac, eleifend vitae,', '321.34', 'Spain', 6),
(21, 'consectetuer adipiscing elit. Etiam laoreet,', '242.64', 'Belgium', 3),
(22, 'non, luctus sit', '110.35', 'Spain', 5),
(23, 'eu dui. Cum sociis', '350.40', 'United Kingdom', 3),
(24, 'tortor. Integer aliquam adipiscing lacus.', '386.55', 'France', 5),
(25, 'elit sed consequat', '414.85', 'New Zealand', 3),
(26, 'a felis ullamcorper viverra. Maecenas', '245.07', 'Belgium', 2),
(27, 'Nunc pulvinar arcu et', '251.88', 'New Zealand', 5),
(28, 'risus, at fringilla', '222.68', 'India', 5),
(29, 'dolor. Fusce mi lorem,', '439.71', 'France', 4),
(30, 'nisi. Aenean eget metus.', '202.46', 'Spain', 6),
(31, 'nulla magna, malesuada', '146.78', 'France', 1),
(32, 'elit pede, malesuada', '131.90', 'India', 6),
(33, 'magna, malesuada vel,', '449.96', 'Belgium', 4),
(34, 'neque sed dictum', '344.13', 'United Kingdom', 4),
(35, 'ipsum. Phasellus vitae', '327.55', 'New Zealand', 4),
(36, 'Sed eu eros.', '206.83', 'France', 3),
(37, 'ipsum. Donec sollicitudin adipiscing', '194.34', 'Australia', 4),
(38, 'non, egestas a, dui. Cras', '110.60', 'Australia', 4),
(39, 'eleifend nec, malesuada ut, sem.', '112.70', 'India', 1),
(40, 'Duis risus odio, auctor', '143.36', 'Belgium', 3),
(41, 'non leo. Vivamus nibh', '230.64', 'France', 1),
(42, 'mi lacinia mattis. Integer eu', '478.34', 'Spain', 2),
(43, 'adipiscing, enim mi tempor', '422.64', 'India', 4),
(44, 'arcu. Vestibulum ante ipsum primis', '122.54', 'Belgium', 3),
(45, 'sit amet, faucibus ut, nulla.', '294.89', 'France', 5),
(46, 'consectetuer mauris id sapien.', '217.02', 'Belgium', 5),
(47, 'in lobortis tellus justo sit', '450.93', 'New Zealand', 6),
(48, 'non, lobortis quis, pede.', '362.29', 'France', 2),
(49, 'aliquet magna a neque. Nullam', '168.67', 'Belgium', 2),
(50, 'lorem ut aliquam iaculis, lacus', '473.43', 'Spain', 4);

ALTER TABLE `products`
  ADD CONSTRAINT `fk_categories_products` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);