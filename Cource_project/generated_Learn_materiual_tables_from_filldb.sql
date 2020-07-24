#
# TABLE STRUCTURE FOR: answers_d
#
USE lr;

DROP TABLE IF EXISTS `answers_d`;

CREATE TABLE `answers_d` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ид_ответа',
  `answer_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'текст ответа',
  `answer_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ссылка на файл с ответом',
  `answer_hash` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'хэш ответа',
  `answer_is_true` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'флаг верный ответ на вопрос',
  `a_quest_id` int(10) unsigned DEFAULT NULL COMMENT 'ид вопроса к которому относится ответ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ответы на вопросы по Учебному материалу';

INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (1, 'Sunt delectus sint laboriosam id sit qui.', 'odit', 'non', 1, 1);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (2, 'Saepe unde eos laborum non repudiandae eaque et ullam.', 'accusantium', 'corporis', 0, 2);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (3, 'Expedita eius non libero iste fuga debitis dolore.', 'autem', 'quia', 1, 3);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (4, 'Atque eos et nobis rerum est.', 'voluptatum', 'sit', 0, 4);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (5, 'Vitae et saepe veritatis minima.', 'quia', 'consectetur', 0, 5);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (6, 'Itaque voluptatem necessitatibus alias eum illo.', 'tenetur', 'quis', 1, 6);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (7, 'Id aliquid saepe tempore dolore.', 'repudiandae', 'minus', 0, 7);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (8, 'Temporibus accusamus dignissimos hic occaecati qui et.', 'non', 'similique', 1, 8);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (9, 'Consequuntur recusandae modi ea est.', 'culpa', 'culpa', 1, 9);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (10, 'Aspernatur est est et deserunt est.', 'assumenda', 'qui', 1, 10);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (11, 'Rerum aliquid ut non pariatur iste laboriosam veritatis nihil.', 'possimus', 'fugiat', 1, 11);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (12, 'Ut voluptas in veritatis dolores.', 'labore', 'et', 0, 12);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (13, 'Minus similique est sint repellat debitis et explicabo velit.', 'animi', 'ex', 0, 13);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (14, 'Sit officia explicabo occaecati.', 'dicta', 'dolorem', 0, 14);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (15, 'Dignissimos id nulla sequi aspernatur delectus consequatur.', 'aut', 'excepturi', 0, 15);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (16, 'Eius fugiat rerum et.', 'earum', 'nesciunt', 0, 16);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (17, 'Et incidunt aut animi qui.', 'ratione', 'expedita', 0, 17);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (18, 'Ut at inventore qui fugit vitae consequatur.', 'architecto', 'iusto', 0, 18);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (19, 'Adipisci nostrum omnis tenetur beatae amet dolor non.', 'fugit', 'error', 1, 19);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (20, 'Autem voluptate praesentium molestiae unde dolores excepturi ea.', 'optio', 'illum', 1, 20);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (21, 'Dolorum et nam architecto amet cum dolore.', 'quos', 'minima', 0, 21);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (22, 'Iste quis minus unde cumque.', 'sapiente', 'esse', 0, 22);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (23, 'Minima sed natus repudiandae impedit.', 'nemo', 'laudantium', 1, 23);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (24, 'Blanditiis iure harum aliquid minima et ipsum.', 'accusamus', 'et', 1, 24);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (25, 'Accusamus quia nam blanditiis facilis incidunt nemo aut.', 'velit', 'recusandae', 0, 25);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (26, 'Eos qui delectus repellendus accusantium dolorem et ex.', 'tempore', 'et', 0, 26);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (27, 'Et magnam ullam reiciendis commodi occaecati consequatur voluptatibus.', 'perspiciatis', 'exercitationem', 1, 27);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (28, 'Doloribus aut amet necessitatibus vero.', 'assumenda', 'maxime', 0, 28);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (29, 'Dicta quia quidem aliquam dolorum alias est unde consectetur.', 'aspernatur', 'ut', 0, 29);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (30, 'Laboriosam id velit delectus illo.', 'atque', 'doloremque', 1, 30);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (31, 'Et expedita sapiente vel et iure ut.', 'dolorum', 'consequatur', 0, 31);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (32, 'Quae dicta qui suscipit non voluptatem quia non odio.', 'amet', 'corporis', 0, 32);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (33, 'Sequi mollitia distinctio ex similique sed dolore.', 'illo', 'dolor', 0, 33);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (34, 'Modi fuga enim qui.', 'pariatur', 'aut', 0, 34);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (35, 'Molestias suscipit deleniti officia voluptatum.', 'error', 'quasi', 1, 35);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (36, 'Distinctio vel quidem fugiat vel non in quisquam.', 'numquam', 'repellendus', 1, 36);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (37, 'Eligendi sunt odio porro.', 'laboriosam', 'recusandae', 0, 37);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (38, 'Praesentium doloremque accusamus fugit beatae.', 'voluptatem', 'quisquam', 1, 38);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (39, 'Debitis dolor dolore impedit rem voluptate corporis.', 'deserunt', 'quasi', 0, 39);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (40, 'Sed cupiditate vero repellendus quas asperiores eos.', 'nostrum', 'expedita', 1, 40);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (41, 'Neque qui nobis et velit quaerat.', 'voluptatem', 'animi', 1, 41);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (42, 'Minus quo atque necessitatibus.', 'aut', 'et', 1, 42);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (43, 'Excepturi inventore tempore qui est.', 'fugiat', 'occaecati', 1, 43);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (44, 'Voluptatem ipsum reprehenderit quos ea.', 'aut', 'sapiente', 1, 44);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (45, 'Maiores nesciunt blanditiis et sapiente.', 'dolore', 'ut', 0, 45);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (46, 'Aliquid rerum error ut qui.', 'enim', 'voluptate', 0, 46);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (47, 'Amet officia ad esse repudiandae.', 'et', 'amet', 0, 47);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (48, 'Aut unde expedita sint error odit neque quis.', 'quasi', 'recusandae', 0, 48);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (49, 'Est dolor voluptas eum sit voluptate aut sit.', 'est', 'labore', 0, 49);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (50, 'Aperiam odio vitae rerum dolor.', 'accusamus', 'nisi', 0, 50);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (51, 'Esse aut saepe quia quod.', 'dolore', 'ut', 0, 51);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (52, 'Et voluptatem enim quia ad.', 'est', 'quo', 0, 52);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (53, 'Corrupti minima inventore ipsum fugit aut.', 'quo', 'quisquam', 0, 53);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (54, 'Ut non unde pariatur eum fugiat eaque.', 'et', 'ea', 0, 54);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (55, 'Nam fuga corrupti ut iste.', 'et', 'illum', 1, 55);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (56, 'Error accusantium tenetur velit tempore veniam omnis enim voluptates.', 'minus', 'doloremque', 0, 56);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (57, 'Aut quia tempora deserunt alias quia.', 'debitis', 'incidunt', 1, 57);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (58, 'Laborum quo exercitationem voluptatem.', 'nihil', 'eum', 1, 58);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (59, 'Eligendi numquam hic omnis quo iste ratione.', 'aut', 'autem', 1, 59);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (60, 'Quo ducimus sint provident perferendis ex explicabo.', 'perspiciatis', 'ipsam', 1, 60);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (61, 'Est sed consequuntur distinctio rerum qui aut voluptatem.', 'culpa', 'illum', 1, 61);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (62, 'Ut ratione enim ipsa veritatis et voluptate delectus.', 'in', 'a', 0, 62);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (63, 'Eaque aut ipsam dolorum sed placeat rerum.', 'ea', 'quaerat', 1, 63);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (64, 'Labore fugiat asperiores dignissimos est dolore et tempore rem.', 'a', 'cum', 1, 64);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (65, 'Atque assumenda voluptas suscipit ea sit possimus doloribus.', 'aperiam', 'voluptatem', 1, 65);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (66, 'Nemo ipsum voluptatum voluptas quia qui ad voluptatum.', 'quo', 'incidunt', 1, 66);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (67, 'Aspernatur non nulla quod laudantium et ipsa deserunt impedit.', 'distinctio', 'placeat', 1, 67);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (68, 'Exercitationem quia totam inventore est.', 'sit', 'rem', 1, 68);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (69, 'Eveniet consequatur distinctio ut est voluptatibus vel eum.', 'ut', 'totam', 0, 69);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (70, 'Ut iusto voluptas eos beatae in pariatur odio.', 'velit', 'voluptas', 1, 70);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (71, 'Alias dicta quis officiis aut.', 'et', 'quos', 0, 71);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (72, 'Consequatur dignissimos aut incidunt et quis consequatur possimus.', 'ducimus', 'quod', 0, 72);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (73, 'Quo dolorem ex sit dolores.', 'numquam', 'est', 1, 73);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (74, 'Sed voluptates blanditiis in.', 'et', 'nulla', 1, 74);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (75, 'Beatae est nihil nesciunt magnam excepturi at itaque.', 'eum', 'deleniti', 0, 75);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (76, 'Autem aut architecto dolor labore.', 'ducimus', 'eaque', 0, 76);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (77, 'Quibusdam alias aut quod cum perspiciatis.', 'ea', 'autem', 1, 77);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (78, 'Voluptas atque rerum hic tempora dolore voluptatum cupiditate.', 'et', 'in', 0, 78);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (79, 'Est veniam ducimus repellendus doloribus mollitia dolor.', 'omnis', 'quo', 0, 79);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (80, 'Velit nemo voluptates illum asperiores ut aliquid adipisci.', 'et', 'aperiam', 0, 80);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (81, 'Consequuntur ipsa totam commodi consequatur.', 'labore', 'expedita', 0, 81);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (82, 'Voluptatibus similique similique voluptatem quidem et.', 'necessitatibus', 'laudantium', 1, 82);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (83, 'Vero dolor delectus vel quia.', 'voluptas', 'minus', 1, 83);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (84, 'Illum sint quam iure aut.', 'omnis', 'voluptas', 1, 84);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (85, 'Repellat nihil quasi molestiae sed error.', 'molestiae', 'fuga', 0, 85);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (86, 'Qui est officia et harum.', 'ullam', 'magnam', 1, 86);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (87, 'Et sunt optio nihil neque.', 'et', 'ullam', 0, 87);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (88, 'Aliquid sunt tenetur tempore dolores.', 'sunt', 'quaerat', 0, 88);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (89, 'Quia consequatur pariatur autem saepe quibusdam fugit tempora ipsa.', 'officia', 'explicabo', 0, 89);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (90, 'Iste temporibus fuga saepe nesciunt nesciunt veniam.', 'labore', 'dolores', 0, 90);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (91, 'Minima quas fugiat qui.', 'eligendi', 'delectus', 1, 91);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (92, 'Incidunt id sequi sapiente odit incidunt sint doloribus.', 'voluptas', 'est', 1, 92);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (93, 'Beatae voluptatem rerum aspernatur expedita voluptas.', 'veniam', 'corrupti', 1, 93);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (94, 'Quia soluta quia laboriosam laudantium.', 'assumenda', 'perspiciatis', 0, 94);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (95, 'Veritatis similique dolorem et eum consequuntur vel fugit.', 'temporibus', 'quaerat', 0, 95);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (96, 'Esse nihil ratione voluptas illo.', 'et', 'voluptas', 0, 96);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (97, 'Maiores odit quidem consequatur temporibus maxime.', 'exercitationem', 'ea', 1, 97);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (98, 'Voluptates ut ipsum aspernatur tenetur corrupti quidem minima.', 'sapiente', 'odio', 0, 98);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (99, 'Dolor repellendus inventore non cum.', 'occaecati', 'vel', 0, 99);
INSERT INTO `answers_d` (`id`, `answer_text`, `answer_file`, `answer_hash`, `answer_is_true`, `a_quest_id`) VALUES (100, 'Non et quibusdam quia odit ut.', 'omnis', 'et', 1, 100);


#
# TABLE STRUCTURE FOR: learn_materials_d
#

DROP TABLE IF EXISTS `learn_materials_d`;

CREATE TABLE `learn_materials_d` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ид материала',
  `lm_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название материала',
  `lm_learn_time` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'время на освоение материала',
  `lm_data_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ссылка на файл с материалами',
  `lm_predmet_id` int(10) unsigned DEFAULT NULL COMMENT 'ссылка на Таблицу дисциплины',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Учебные материалы по дисциплине';

INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (1, 'Voluptatem nam quia sed molestiae.', 6, 'nemo', 1);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (2, 'Accusantium enim iure cupiditate perferendis voluptatem.', 5, 'quisquam', 2);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (3, 'Dolore id est ab illo et velit.', 0, 'sed', 3);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (4, 'Doloribus vel reiciendis impedit eaque.', 4, 'ipsam', 4);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (5, 'Iusto suscipit qui aspernatur debitis fugiat.', 5, 'id', 5);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (6, 'Tempore autem dignissimos et.', 3, 'placeat', 1);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (7, 'Dolores laborum dolor earum.', 6, 'labore', 2);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (8, 'Aut optio ut cumque a sequi officiis dolores atque.', 0, 'in', 3);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (9, 'Cum neque dolor repellat voluptates officia magnam.', 6, 'consequatur', 4);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (10, 'Adipisci dolores nostrum aperiam debitis.', 2, 'eum', 5);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (11, 'Officiis distinctio illum in totam minima eius animi.', 0, 'quo', 1);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (12, 'Ea accusamus occaecati magni illo omnis quaerat.', 6, 'voluptatem', 2);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (13, 'Ad vel aut perferendis adipisci dolorem maxime.', 9, 'sit', 3);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (14, 'Occaecati dolorem sit aut qui laboriosam reiciendis optio.', 2, 'ipsam', 4);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (15, 'Enim sed mollitia qui non labore.', 1, 'eius', 5);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (16, 'Repellendus ipsam nemo quod eligendi quidem eum.', 8, 'qui', 1);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (17, 'Similique laudantium qui repudiandae officiis et ullam quae.', 2, 'nobis', 2);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (18, 'Qui tenetur odit sint odit non aut.', 9, 'repudiandae', 3);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (19, 'Excepturi molestias in dolor animi.', 5, 'fugiat', 4);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (20, 'Qui maiores distinctio iure excepturi mollitia minus.', 7, 'qui', 5);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (21, 'Voluptatem et perspiciatis suscipit consequatur ut.', 7, 'sint', 1);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (22, 'Et et qui non ratione.', 1, 'aut', 2);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (23, 'Modi voluptas et inventore excepturi assumenda dolores.', 2, 'quaerat', 3);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (24, 'Fugit in aut eum ratione.', 9, 'minus', 4);
INSERT INTO `learn_materials_d` (`id`, `lm_name`, `lm_learn_time`, `lm_data_file`, `lm_predmet_id`) VALUES (25, 'Aliquid excepturi corrupti tenetur.', 7, 'animi', 5);


#
# TABLE STRUCTURE FOR: predmets_d
#

DROP TABLE IF EXISTS `predmets_d`;

CREATE TABLE `predmets_d` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'идентификатор предмета',
  `predmet_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название предмета',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Дисциплины, предметы';

INSERT INTO `predmets_d` (`id`, `predmet_name`, `created_at`, `updated_at`) VALUES (1, 'A voluptate soluta alias omnis sit.', '2014-07-20 16:10:53', '2015-07-14 05:18:45');
INSERT INTO `predmets_d` (`id`, `predmet_name`, `created_at`, `updated_at`) VALUES (2, 'Quod voluptatem quis sed earum earum.', '2014-03-26 10:48:48', '2015-12-29 02:39:16');
INSERT INTO `predmets_d` (`id`, `predmet_name`, `created_at`, `updated_at`) VALUES (3, 'Minus quia omnis est dolore sed.', '2014-09-23 14:15:39', '2015-11-20 08:57:57');
INSERT INTO `predmets_d` (`id`, `predmet_name`, `created_at`, `updated_at`) VALUES (4, 'Ut voluptatibus fuga nobis iusto sed natus saepe.', '2014-11-19 15:06:41', '2015-08-31 15:19:07');
INSERT INTO `predmets_d` (`id`, `predmet_name`, `created_at`, `updated_at`) VALUES (5, 'Veritatis omnis qui saepe.', '2014-05-27 14:55:33', '2015-10-17 00:07:00');


#
# TABLE STRUCTURE FOR: questions_d
#

DROP TABLE IF EXISTS `questions_d`;

CREATE TABLE `questions_d` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ид_вопроса',
  `quest_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'текст вопроса',
  `quest_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ссылка на файл с картинкой вопросом',
  `quest_lm_id` int(10) unsigned DEFAULT NULL COMMENT 'ссылка на Учебный материал',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='вопросы по Учебному материалу';

INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (1, 'Dolorem est repellendus porro ea autem.', 'quo', 1, '2014-02-05 03:37:35', '2015-10-09 00:04:14');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (2, 'Officia quia minima dolores soluta.', 'earum', 2, '2014-05-29 18:05:06', '2015-11-26 21:53:59');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (3, 'Distinctio possimus quisquam aperiam qui nihil.', 'voluptate', 3, '2014-04-21 20:12:27', '2015-05-01 22:05:33');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (4, 'Voluptatem qui tenetur quae aut.', 'iusto', 4, '2014-02-09 23:20:27', '2015-03-21 12:41:43');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (5, 'Omnis repellat ut similique est.', 'autem', 5, '2014-02-04 19:15:06', '2015-10-07 16:11:11');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (6, 'Velit aliquid accusamus occaecati placeat aut dolores.', 'qui', 6, '2014-10-08 03:58:04', '2015-04-29 16:48:10');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (7, 'Sint et necessitatibus est blanditiis animi cum voluptas.', 'cupiditate', 7, '2014-08-25 09:28:53', '2015-06-23 22:18:15');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (8, 'Iure et maiores aspernatur consequatur aut facilis.', 'accusamus', 8, '2014-01-14 20:57:10', '2015-05-19 01:56:15');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (9, 'Nihil accusantium consectetur ex saepe ad minima et.', 'unde', 9, '2014-06-05 00:01:30', '2015-02-07 16:48:10');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (10, 'Neque quia vel quas autem qui sunt.', 'odio', 10, '2014-08-10 19:45:38', '2015-12-28 08:02:31');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (11, 'Natus sunt nesciunt adipisci et.', 'eos', 11, '2014-07-03 15:34:24', '2015-02-18 17:21:14');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (12, 'Saepe officia molestias sint non.', 'ut', 12, '2014-11-22 18:39:42', '2015-04-17 17:47:47');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (13, 'Rerum pariatur ipsam quae voluptates est molestiae.', 'laboriosam', 13, '2014-07-11 01:51:52', '2015-09-02 10:49:31');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (14, 'Libero explicabo dolorem amet doloribus.', 'reiciendis', 14, '2014-06-04 00:11:32', '2015-01-20 09:44:26');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (15, 'Aut sint numquam ad eos explicabo.', 'sed', 15, '2014-12-21 09:01:48', '2015-03-29 07:48:41');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (16, 'Dolorum aut similique libero enim vel est.', 'et', 16, '2014-10-11 23:06:17', '2015-05-04 09:59:37');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (17, 'Nisi iure aut reprehenderit sed non molestiae dolore.', 'placeat', 17, '2014-10-06 08:23:41', '2015-08-31 06:40:24');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (18, 'Doloremque enim dicta asperiores consectetur quia sed.', 'exercitationem', 18, '2014-04-05 13:34:27', '2015-09-16 20:36:07');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (19, 'Laboriosam similique dolor rerum facilis illo odit.', 'qui', 19, '2014-10-16 07:33:15', '2015-11-24 21:15:56');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (20, 'Distinctio libero iste quis molestias voluptates et sit voluptatum.', 'vitae', 20, '2014-12-13 22:27:03', '2015-06-23 12:35:46');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (21, 'Molestiae quaerat veniam aspernatur et est.', 'qui', 21, '2014-11-26 10:17:03', '2015-01-15 04:54:36');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (22, 'Cumque sint pariatur sint cum ipsa.', 'odio', 22, '2014-06-27 04:49:05', '2015-09-06 14:09:55');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (23, 'Quia eaque quam et unde aut officia aut.', 'quibusdam', 23, '2014-07-30 13:45:49', '2015-02-21 16:12:20');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (24, 'Autem cupiditate ut iusto doloribus quos.', 'iusto', 24, '2014-09-02 18:02:02', '2015-02-15 06:02:22');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (25, 'Aut doloremque quia quo tenetur.', 'commodi', 25, '2014-11-22 13:23:56', '2015-08-27 04:13:18');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (26, 'Vel laudantium voluptatem et et est quaerat.', 'animi', 1, '2014-11-13 23:04:08', '2015-08-11 05:51:37');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (27, 'Quia sit rerum occaecati in.', 'at', 2, '2014-04-17 15:24:53', '2015-05-09 06:42:59');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (28, 'Ex earum praesentium et omnis eum quis.', 'ratione', 3, '2014-02-10 02:58:25', '2015-01-29 16:21:30');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (29, 'Beatae cum aut minima ratione vitae quo vitae.', 'nesciunt', 4, '2014-10-20 03:15:54', '2015-09-17 03:25:36');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (30, 'Magnam incidunt qui velit iste adipisci inventore quibusdam dolor.', 'doloremque', 5, '2014-03-05 14:10:56', '2015-08-06 17:41:41');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (31, 'Qui recusandae quisquam quibusdam amet ratione at exercitationem.', 'quibusdam', 6, '2014-05-01 23:10:24', '2015-02-16 23:08:32');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (32, 'Corrupti sed sint ratione quidem iure unde et ipsam.', 'pariatur', 7, '2014-09-03 16:53:12', '2015-06-01 21:57:26');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (33, 'Ut voluptatum omnis quia vero nihil sint dolorem.', 'consequatur', 8, '2014-07-07 17:09:03', '2015-03-22 06:50:24');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (34, 'Voluptas iste sunt dolorem a dolores architecto magni impedit.', 'non', 9, '2014-08-20 10:58:39', '2015-03-25 20:57:32');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (35, 'Harum sunt cupiditate beatae sit eos commodi iure.', 'excepturi', 10, '2014-08-07 19:04:28', '2015-10-30 19:42:27');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (36, 'Explicabo repellat est et quibusdam sit beatae in.', 'nobis', 11, '2014-11-06 02:04:06', '2015-11-30 20:26:19');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (37, 'Ut deleniti minima error velit aut harum.', 'hic', 12, '2014-03-02 14:38:53', '2015-01-12 11:57:19');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (38, 'Dolorum est occaecati iusto placeat voluptas.', 'inventore', 13, '2014-01-09 14:05:45', '2015-01-13 11:44:09');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (39, 'Tempora inventore sapiente adipisci et.', 'rerum', 14, '2014-10-16 05:30:38', '2015-04-10 11:28:38');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (40, 'Et sit odio esse totam soluta voluptatibus.', 'accusamus', 15, '2014-02-19 09:05:09', '2015-09-16 08:27:15');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (41, 'Quis laborum commodi eius.', 'modi', 16, '2014-09-10 02:55:46', '2015-11-13 15:42:46');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (42, 'Rerum enim eius nesciunt perferendis veniam voluptas.', 'velit', 17, '2014-06-21 07:58:00', '2015-01-16 16:57:51');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (43, 'Necessitatibus molestiae ea veritatis fuga omnis illum.', 'ducimus', 18, '2014-02-03 04:25:17', '2015-09-25 04:11:47');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (44, 'Numquam reiciendis laudantium molestiae at quas.', 'aut', 19, '2014-06-04 02:34:03', '2015-11-07 11:59:47');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (45, 'Natus et sequi necessitatibus repudiandae commodi odit quod ut.', 'quia', 20, '2014-11-24 21:26:46', '2015-02-18 01:41:54');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (46, 'Ipsam quia modi molestiae rem cupiditate.', 'consequuntur', 21, '2014-05-05 17:35:50', '2015-11-19 22:37:03');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (47, 'Sunt quia sed et voluptate.', 'placeat', 22, '2014-03-21 14:55:37', '2015-07-04 08:42:59');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (48, 'Similique ut ipsam sequi.', 'omnis', 23, '2014-05-12 04:35:01', '2015-07-27 06:01:11');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (49, 'Perspiciatis blanditiis sed voluptatem et culpa nemo.', 'eos', 24, '2014-11-05 08:30:35', '2015-12-18 13:25:07');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (50, 'Ut qui nihil qui qui qui.', 'nam', 25, '2014-03-13 11:41:09', '2015-02-26 00:43:20');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (51, 'Ab doloribus quisquam sed rerum autem eum molestiae saepe.', 'eum', 1, '2014-01-19 04:09:40', '2015-01-16 12:01:20');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (52, 'Eveniet maxime ut cumque dolor magni voluptatem aliquam.', 'et', 2, '2014-04-17 08:09:31', '2015-01-03 09:47:48');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (53, 'Fugit non omnis sapiente minima quidem blanditiis.', 'voluptatem', 3, '2014-02-05 00:11:35', '2015-10-10 18:47:07');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (54, 'Cupiditate et delectus velit ipsam assumenda esse voluptatem.', 'ullam', 4, '2014-10-17 08:41:36', '2015-07-02 06:28:07');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (55, 'Nulla corrupti impedit in voluptas iusto.', 'illo', 5, '2014-12-25 17:56:00', '2015-04-27 04:35:19');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (56, 'Explicabo fuga fugit consequatur consequuntur qui.', 'maxime', 6, '2014-01-23 20:00:55', '2015-09-05 03:37:35');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (57, 'Cum dolores sunt iusto quia tempore.', 'assumenda', 7, '2014-09-04 13:22:24', '2015-01-04 14:51:22');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (58, 'Quisquam quia qui aut excepturi.', 'occaecati', 8, '2014-11-29 09:23:57', '2015-11-09 02:58:24');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (59, 'Ratione vero quisquam aut quo odio.', 'ipsam', 9, '2014-03-27 20:45:29', '2015-03-15 05:53:54');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (60, 'Quia earum nulla sapiente libero incidunt molestiae.', 'accusantium', 10, '2014-09-02 19:47:09', '2015-09-24 07:55:55');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (61, 'Cum ut voluptas et nulla.', 'ratione', 11, '2014-02-24 16:32:55', '2015-09-24 12:50:28');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (62, 'Quia et molestiae aliquam ut.', 'corrupti', 12, '2014-04-18 09:06:06', '2015-10-09 17:06:56');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (63, 'Perferendis vitae saepe aut iste necessitatibus.', 'quis', 13, '2014-03-03 03:49:52', '2015-01-03 04:54:46');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (64, 'Voluptatum vitae in est ad eligendi.', 'voluptatibus', 14, '2014-08-08 13:49:50', '2015-04-12 03:58:49');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (65, 'Est delectus ullam corporis rem ea sit qui.', 'aliquam', 15, '2014-03-09 05:38:34', '2015-04-08 23:58:01');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (66, 'Aut consequatur doloribus aliquid et maiores et aut magni.', 'consectetur', 16, '2014-12-23 19:16:59', '2015-12-20 01:04:30');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (67, 'Qui nihil animi et explicabo officia.', 'est', 17, '2014-04-03 02:04:34', '2015-03-24 13:29:29');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (68, 'Ut adipisci nostrum rerum aut.', 'et', 18, '2014-07-07 16:57:18', '2015-03-06 21:47:27');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (69, 'Aspernatur vel perferendis consequatur magnam autem minus recusandae pariatur.', 'omnis', 19, '2014-03-16 05:28:06', '2015-12-06 08:20:36');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (70, 'Saepe sint assumenda ullam laboriosam.', 'quia', 20, '2014-07-11 13:44:39', '2015-11-27 14:00:02');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (71, 'Hic iure in enim et assumenda.', 'in', 21, '2014-09-30 01:46:36', '2015-05-12 05:42:49');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (72, 'Aut libero aut et alias assumenda.', 'aut', 22, '2014-08-20 05:18:43', '2015-03-22 22:00:05');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (73, 'Necessitatibus laborum voluptate necessitatibus sequi minus iure.', 'itaque', 23, '2014-06-19 13:15:57', '2015-06-20 16:29:00');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (74, 'Quo laborum omnis ut aut dolores.', 'fugit', 24, '2014-05-28 05:23:41', '2015-11-05 22:34:57');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (75, 'Fuga qui enim rem quis ex rem cum.', 'aut', 25, '2014-02-16 09:29:47', '2015-04-09 16:12:34');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (76, 'Possimus distinctio dolor et consectetur similique accusantium dolorum.', 'ad', 1, '2014-03-06 11:53:37', '2015-02-13 10:49:04');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (77, 'Sunt mollitia qui qui officia est cum aliquam.', 'dicta', 2, '2014-06-02 02:25:45', '2015-02-10 16:34:56');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (78, 'Quam nobis architecto ut animi ut at totam.', 'qui', 3, '2014-01-21 19:41:11', '2015-04-19 02:30:10');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (79, 'Quos laboriosam voluptatibus sit fugit incidunt cum ut ea.', 'in', 4, '2014-02-17 04:35:04', '2015-06-18 12:30:11');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (80, 'Rerum officiis maiores in dicta veniam.', 'consequatur', 5, '2014-11-27 00:32:10', '2015-12-02 23:26:15');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (81, 'Vel culpa quasi aliquam quos.', 'neque', 6, '2014-12-24 17:08:24', '2015-07-09 02:08:55');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (82, 'Autem veritatis labore asperiores aspernatur mollitia voluptatem adipisci.', 'eum', 7, '2014-08-14 05:47:35', '2015-09-06 19:08:43');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (83, 'Blanditiis aliquam ut quo ratione.', 'itaque', 8, '2014-07-06 23:16:46', '2015-02-23 15:25:47');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (84, 'Sit quasi qui dolores voluptas.', 'veritatis', 9, '2014-01-03 22:05:44', '2015-07-15 05:07:52');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (85, 'Occaecati quo dicta commodi molestiae omnis.', 'beatae', 10, '2014-02-12 21:11:23', '2015-12-13 20:23:36');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (86, 'Vero expedita perspiciatis et temporibus hic nihil nostrum nulla.', 'incidunt', 11, '2014-11-06 01:42:22', '2015-10-04 23:22:08');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (87, 'Omnis quae debitis officia dolor atque.', 'fuga', 12, '2014-09-29 04:53:52', '2015-10-10 08:23:51');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (88, 'Libero unde id placeat incidunt iste voluptatem voluptatem.', 'illum', 13, '2014-04-11 07:17:09', '2015-12-28 00:42:24');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (89, 'Ut cum rerum optio est necessitatibus voluptatibus labore.', 'ut', 14, '2014-06-19 02:03:04', '2015-07-08 11:35:32');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (90, 'Eum unde minus totam omnis perferendis.', 'aut', 15, '2014-06-17 17:50:51', '2015-07-04 23:01:56');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (91, 'Temporibus voluptatem ut eveniet et.', 'fuga', 16, '2014-11-01 17:33:58', '2015-05-14 19:36:37');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (92, 'Voluptatibus delectus eveniet ut neque in mollitia similique.', 'consequatur', 17, '2014-06-26 22:33:50', '2015-09-16 01:33:53');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (93, 'Alias fugit quia et autem ducimus.', 'omnis', 18, '2014-02-19 11:38:35', '2015-12-09 05:00:13');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (94, 'Distinctio doloribus laboriosam sint.', 'possimus', 19, '2014-07-13 19:20:43', '2015-04-24 09:53:21');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (95, 'Iure sed quod sed eligendi.', 'et', 20, '2014-11-12 22:44:08', '2015-04-29 08:42:40');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (96, 'Odio vel adipisci et dolor.', 'sunt', 21, '2014-05-23 04:25:56', '2015-03-18 22:35:36');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (97, 'Suscipit aspernatur nemo voluptate facilis sint.', 'dolor', 22, '2014-11-02 13:19:48', '2015-02-03 23:24:53');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (98, 'Quaerat id quidem dolores eligendi ipsam expedita mollitia.', 'similique', 23, '2014-12-06 23:08:18', '2015-08-19 12:21:40');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (99, 'Totam vero sit aperiam dolor commodi debitis.', 'consequatur', 24, '2014-11-22 20:25:40', '2015-11-15 22:00:30');
INSERT INTO `questions_d` (`id`, `quest_text`, `quest_file`, `quest_lm_id`, `created_at`, `updated_at`) VALUES (100, 'Rerum fuga distinctio aliquid eaque maxime voluptas explicabo.', 'reiciendis', 25, '2014-06-26 18:28:22', '2015-01-25 14:17:07');


