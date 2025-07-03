-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-07-2025 a las 19:02:09
-- Versión del servidor: 5.7.24
-- Versión de PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academy_courses`
--

CREATE TABLE `academy_courses` (
  `id` varchar(191) NOT NULL,
  `author_id` varchar(191) NOT NULL,
  `thumbnail_url` varchar(191) DEFAULT NULL,
  `background_url` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `academy_courses`
--

INSERT INTO `academy_courses` (`id`, `author_id`, `thumbnail_url`, `background_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('490072d0-3d90-4d63-a622-a609d5994faf', 'f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', 'http://hub.stullerlandcommunity.com/storage/6e813dc6d7cb93fe57391cfdff7ba256b3bbac985fa80e0f640230d6d6639576.png', 'http://hub.stullerlandcommunity.com/storage/94c533bf04c92c53e02481319a0cd', '2025-06-27 09:08:19.281', '2025-06-27 09:08:19.281', NULL),
('5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', 'http://hub.stullerlandcommunity.com/storage/04c4fc4e954a73163e5ec624b68ee69c29ad6cd3e848d8672832595cf0f0d5d9.png', 'http://hub.stullerlandcommunity.com/storage/e0483586dd7f08f37f73c1326fc8c', '2025-06-27 09:08:19.281', '2025-06-27 09:08:19.281', NULL),
('639b1b9e-ca45-4f11-9031-90995a389ad1', 'f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', 'http://hub.stullerlandcommunity.com/storage/4a0ae5fc7a7b9e9fa0d1e3f4aadcdf733ea3b46f468048d526bdfdbd2d3e52d0.png', 'http://hub.stullerlandcommunity.com/storage/c5a293919a1f36cac4ef4b4123cb2', '2025-06-27 09:08:19.281', '2025-06-27 09:08:19.281', NULL),
('8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', 'http://hub.stullerlandcommunity.com/storage/b13931d2fa060da2674c19e7c704de9b9ab60654c55c84da9acc368d683cb40c.png', 'http://hub.stullerlandcommunity.com/storage/07467ecf2d3e4bf658c016e1567f8', '2025-06-27 09:08:19.281', '2025-06-27 09:08:19.281', NULL),
('91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', 'http://hub.stullerlandcommunity.com/storage/51fe446fce619a38b70e38c56dd2d0a4ac87caf8848015e42ca6ba272ded95e8.png', 'http://hub.stullerlandcommunity.com/storage/87d2cd46f75deff6908e4b4e5a914', '2025-06-27 09:08:19.281', '2025-06-27 09:08:19.281', NULL),
('c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', 'http://hub.stullerlandcommunity.com/storage/a64047192ee29b40563ac9f945dccde8f90a499079d79bb35bd95d1ac5458c77.png', NULL, '2025-06-27 09:08:19.281', '2025-06-27 09:08:19.281', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academy_enrollments`
--

CREATE TABLE `academy_enrollments` (
  `id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `course_id` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academy_lessons`
--

CREATE TABLE `academy_lessons` (
  `id` varchar(191) NOT NULL,
  `section_id` varchar(191) NOT NULL,
  `display_order` int(11) NOT NULL,
  `duration_seconds` int(11) NOT NULL,
  `thumbnail_url` varchar(191) DEFAULT NULL,
  `background_url` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `academy_lessons`
--

INSERT INTO `academy_lessons` (`id`, `section_id`, `display_order`, `duration_seconds`, `thumbnail_url`, `background_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('03964edf-89f9-488f-bcc9-362317d0504c', 'ae305717-c913-415f-86f6-e0b4be9a23a4', 1, 60, NULL, NULL, '2025-07-02 09:28:11.000', '2025-07-02 09:28:11.000', NULL),
('03be960f-a9d7-44bd-b501-ca969f071983', '9019223e-79da-44c9-92c4-102f4959af64', 9, 60, 'http://hub.stullerlandcommunity.com/storage/a343ebfd30c2267e4bbf95a9a52c5f9a97e82dc3fd6f23dc82352f88408ee0d7.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:34.395', NULL),
('03e1f8e8-dd8d-4e07-89e2-ace8bcc294f0', '4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 3, 60, 'http://hub.stullerlandcommunity.com/storage/714928f4acace94d83535ac3b4c7c2db7ac290580193aaa4d84eed9621733737.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:26.201', NULL),
('04746a5f-b82d-4b87-8b94-1d9776f17f87', 'c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 5, 600, 'http://hub.stullerlandcommunity.com/storage/49f55ff390d4da6d061653e9c5fdf5ac36dde857ddcd5225af2dabc95f9683b8.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:14:47.907', NULL),
('047c4af8-27cf-4e16-9257-3cca0e489b5a', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 1, 60, 'http://hub.stullerlandcommunity.com/storage/4120d5cf24b5223d0829c173d6aa0c7b17de035aaf2f15df3faee2f7371b49f5.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:43:39.835', NULL),
('05db43ce-17be-4cbe-9e57-818d0340e2a0', '46b66a58-615f-4758-a0af-9cf8534265b8', 2, 240, 'http://hub.stullerlandcommunity.com/storage/eb806b585812bd237fa54c7eeff45a54a01b0fc2ca5b492b25b7a17bcddf3f86.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:40.598', NULL),
('07ca5e3c-1497-468a-84c3-79d1b654f077', '80e71a41-c2cc-435e-aff9-4394bfd40899', 3, 660, 'http://hub.stullerlandcommunity.com/storage/915ba08afbc530ce22140ea53ae634df947fd705a1d65e5f88abc870af2d1075.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:09:49.282', NULL),
('08c9907a-a8fb-4782-a823-a97b5685e502', '178bd879-8547-42c0-bd54-d5f4a08d7138', 2, 60, 'http://hub.stullerlandcommunity.com/storage/7dbe790882e29a6e94b4aec4886c3a7a55b0506eefde0ff2d47a1d373df485bc.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:23.759', NULL),
('09fc66b7-6661-48df-8d50-58c42f930930', '5a3f35b6-fe18-4e24-9189-4e2972e1e212', 1, 60, 'http://hub.stullerlandcommunity.com/storage/c662b034c67df28b31f006e0ed45291d5f87d122f1f2b1644a597baef1b445b7.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:23:03.882', NULL),
('120f3525-8cd0-41ab-896b-fb75ae9d7575', '4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 2, 60, 'http://hub.stullerlandcommunity.com/storage/7e6b504abf425e174c83be00e7955def7e1f55b8b2143de386f295c0c9a1cc04.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:21.909', NULL),
('142866f3-8788-4c8e-8001-30870c67223c', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 8, 60, 'http://hub.stullerlandcommunity.com/storage/434fadcd1ec177f7ca084ba489871264b6316afa5e39b087ec2c65a7419162c7.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:20:54.259', NULL),
('169fc4bf-ab18-4e6d-84c5-020201df5bcc', 'f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 1, 60, 'http://hub.stullerlandcommunity.com/storage/a2298f42c8e7153dc6d423cac171e5ee060e5890e889911436b3061f53d16b39.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:18:59.521', NULL),
('1a8ffadd-a507-4830-ba26-d9677e3b7db4', 'c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 4, 300, 'http://hub.stullerlandcommunity.com/storage/9c9213b2480bc177a95ed89d27ae37b04adde4c53daa67e1dabae2476f120210.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:14:46.498', NULL),
('1b7d8fcd-2427-4539-b298-69065ffa5d50', '178bd879-8547-42c0-bd54-d5f4a08d7138', 3, 60, 'http://hub.stullerlandcommunity.com/storage/89f184d0e7b6b2520dfaacd897e430136cbe310856901bd086ee043b0fafd4a2.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:27.074', NULL),
('1b90b415-5ad9-4ac9-b232-27460f486cb7', '91dc634f-73e9-40cf-a02f-0cd1254973cd', 2, 60, 'http://hub.stullerlandcommunity.com/storage/b8f3bf37aba9d5fb4374367a76dd0ef8b0c405877056d558277ac074d69178d0.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:39.860', NULL),
('215db300-f68a-4b7b-9a3e-70b801858ea0', 'e82241f1-32d8-4fe0-aceb-cbfb78ff910d', 1, 60, 'http://hub.stullerlandcommunity.com/storage/bc6519da840780a9f55907f18e0b6016ddd8b450ffd939c574c7d14f9b47b1eb.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:07:53.198', NULL),
('24464379-ee99-4020-83d3-0f727e6efccb', '80e71a41-c2cc-435e-aff9-4394bfd40899', 4, 780, 'http://hub.stullerlandcommunity.com/storage/badf0c5d676f48ad4ad4a499a1f619f6a102a27daf30eeb2f91b6191e92862c1.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:11:11.475', NULL),
('246e13b5-9b3f-44bf-9bc8-ec63fdecacf8', '0ebd03b7-b904-4d94-9929-89792cfb28d5', 1, 60, 'http://hub.stullerlandcommunity.com/storage/e9519c3fa5b1d57d2f8781b6dfe22e4235c4edb76d5ec3e84c5d22fca72abc11.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:00.285', NULL),
('274689e0-4129-45c4-b0fe-84a0fb9ec1cd', '178bd879-8547-42c0-bd54-d5f4a08d7138', 5, 60, 'http://hub.stullerlandcommunity.com/storage/1d80ead7fa0bc7d31b09404c0e3a6576de63e8c0bb3b823f9cf35f230fa9e8fe.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:31.421', NULL),
('29efef21-b11f-40a1-b88c-fe021f2cbb6f', '5dece5c1-1dd8-4f6b-a688-1c5feadcd915', 2, 60, 'http://hub.stullerlandcommunity.com/storage/1f14562136a76ae47420a03ddbb5dbef0db66e7987e1c62f9ec61f2a176cc218.gif', '', '2025-07-02 09:40:44.000', '2025-07-02 09:40:44.000', NULL),
('2aba5ac1-b98c-4642-a4ff-efb4a094123d', '3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', 3, 60, 'http://hub.stullerlandcommunity.com/storage/bd0fe718c93d6135b70f202d2cc6e98576c326c8c77cdc7ce849700cd5b4ee3e.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:13.674', NULL),
('2bee491f-2299-484a-8299-d3ec4717c845', '8d90fcbc-4075-4131-a6a8-62870d39598e', 1, 60, 'http://hub.stullerlandcommunity.com/storage/f673dfe23484be92656727759589cfbd367991fcf2cfff0d57eb8cd8b72b9666.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:50.284', NULL),
('2e0f2114-5bbf-4e5e-ad83-3c64d64a910f', '9019223e-79da-44c9-92c4-102f4959af64', 3, 60, 'http://hub.stullerlandcommunity.com/storage/63d247bbdf38b4b6a8010d58dba3296c079e395df42e746a51d9723492ad33fc.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:21.144', NULL),
('2f22033a-fa75-48f5-8257-07a3d92c7ccf', '80e71a41-c2cc-435e-aff9-4394bfd40899', 7, 480, 'http://hub.stullerlandcommunity.com/storage/558374c6ce3225b71a64e03d8d05d739bb0472bf6692792ee7ae447c1d3b590a.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:10:21.061', NULL),
('2f9547f9-5daa-424b-a958-0856c2d3fbe0', '8fc35fa6-0398-4ee6-9765-efebb833a507', 103, 660, 'http://hub.stullerlandcommunity.com/storage/45ccfc6304cbb1fc117323e9a0e89c6d302baa07883b6e175bba6afd2e40e051.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('301d2457-eb1b-4764-963d-b308d480f57c', '8fc35fa6-0398-4ee6-9765-efebb833a507', 100, 780, 'http://hub.stullerlandcommunity.com/storage/a1af5d152616be3a74e1cba87f3986a24646883d870f632329417c4dfcc34af5.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('32a3b7f9-1f67-493d-894b-49ce09c8c6bf', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 5, 60, 'http://hub.stullerlandcommunity.com/storage/e05c77bc0b87b7d19ee05c9fb166de6f126b2611ab0f076f5bcf40a7f1939821.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:56.788', NULL),
('366513ab-d34e-45b4-a70d-6b711d3ad961', '178bd879-8547-42c0-bd54-d5f4a08d7138', 7, 60, 'http://hub.stullerlandcommunity.com/storage/f9ef222784ec386fd724839bd7e77bc24a9bbbbafe161ef21d8e165af789dff3.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:34.142', NULL),
('39244889-8f9e-4117-9089-ddd3c42e83da', '6d8de92d-22bb-469e-b8d6-a7643b726bd5', 1, 60, NULL, NULL, '2025-07-02 09:33:44.000', '2025-07-02 09:33:44.000', NULL),
('3d176832-1580-413d-8a84-e1c4afdd938c', 'f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 2, 60, 'http://hub.stullerlandcommunity.com/storage/61d2ee052b04e83c709ca751479919578b4e1cbce0a728c208cf442546327224.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:01.407', NULL),
('3fc1b525-f868-483e-9634-27bbc170c864', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 2, 360, 'http://hub.stullerlandcommunity.com/storage/4d12d00894867e4243b44b4a9c19d1e415c1529696fbc55c1de5c6134b2bae5c.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:12:00.441', NULL),
('4196cb8e-5ec4-4aeb-a854-6f2f0c7be6aa', '7758a6c0-6ffb-4a41-aaa1-0b7d5835941d', 1, 480, 'http://hub.stullerlandcommunity.com/storage/5711be7c6f1d1c4a8dfa0b43d3ba1dfad1a97f576ee85d3d4ee93c73ebcf47d1.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:07:39.995', NULL),
('422d3e58-36db-4d47-b81b-83cfcc46d26d', '65a35c6a-c947-4ed1-85a0-a9c0feb1363b', 2, 60, 'http://hub.stullerlandcommunity.com/storage/894dd819050dbb504f4ef1c7a7fd456c0fae374da7daf20868ee4f1c2fcd94f7.gif', NULL, '2025-07-02 09:23:29.000', '2025-07-02 09:23:29.000', NULL),
('44e31af8-f871-4052-9345-a4e642a48e49', '80e71a41-c2cc-435e-aff9-4394bfd40899', 2, 60, 'http://hub.stullerlandcommunity.com/storage/7b1580d0c35b4cce89da21351e0a353176bb9bf5dae9f543912ba5850c2ec9ab.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:09:59.431', NULL),
('4b5aa9c9-7fba-4952-bd91-da46f910b53d', 'c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 3, 300, 'http://hub.stullerlandcommunity.com/storage/50c08d34cf6ecf2b0b0e3c94c1b80084061de3edef0a393cc1f636b830ac177e.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:14:45.388', NULL),
('4c5d52f3-c20c-4d13-b740-ac73bdf005d5', 'ae305717-c913-415f-86f6-e0b4be9a23a4', 2, 60, NULL, NULL, '2025-07-02 09:28:11.000', '2025-07-02 09:28:11.000', NULL),
('4dc71444-78b6-4498-aa09-69a2120eaa7e', '9019223e-79da-44c9-92c4-102f4959af64', 7, 60, 'http://hub.stullerlandcommunity.com/storage/71643ebf255e4549acea7d0d517b20a4adeb62fc06f6d1d327f5ea39d05b5c70.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:29.855', NULL),
('4e95ac9e-a7d9-49f3-a7cd-40183386f7af', '80e71a41-c2cc-435e-aff9-4394bfd40899', 10, 60, 'http://hub.stullerlandcommunity.com/storage/16c39310dc9749b990185c8ff7dbbd017abd4c2603a32db9e1839c2db0a8a470.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:10:28.111', NULL),
('5001e0fa-65fe-4f87-9cf2-d426ce9d561c', '9019223e-79da-44c9-92c4-102f4959af64', 1, 60, 'http://hub.stullerlandcommunity.com/storage/8c8f600240105adbbec311f2b90c8c87208e5eaece878de817739f10ee08d0c7.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:06.170', NULL),
('50fb9c4a-734d-4f2d-bf1e-a0db06a062d7', '808d387d-76ac-4b65-bbec-f7b533956358', 1, 60, NULL, NULL, '2025-07-02 09:32:12.000', '2025-07-02 09:32:12.000', NULL),
('540ed2e2-828e-44ed-b140-7ac5cec863cb', '80e71a41-c2cc-435e-aff9-4394bfd40899', 9, 780, 'http://hub.stullerlandcommunity.com/storage/08b1174121c5f2278c72e2459081afd610ce03fb8bd93aa987d6c39cc6afa160.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:10:25.471', NULL),
('55526706-6e32-4867-9a46-c5ff149e09c9', '31db78b6-a1c2-4f5f-b00d-410636e3c0f1', 2, 60, NULL, NULL, '2025-07-02 09:00:11.000', '2025-07-02 09:00:11.000', NULL),
('5969e024-3df8-4770-a110-cd20dbe913eb', 'f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 3, 60, 'http://hub.stullerlandcommunity.com/storage/774e2324c80ea997ae8bef7ccafa1bab8842fc84e9626e9d5f17d60c9e0b55fa.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:03.918', NULL),
('5a2f72d5-1537-48c2-af1c-eaf55876ead1', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 3, 1560, 'http://hub.stullerlandcommunity.com/storage/54dcd2c8323d685a0b52b43d7ad6e83e7726d4f062e420213973312bb38e40b9.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:12:03.366', NULL),
('5ca4ef67-4011-453d-b87e-15ed0efa0121', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 6, 60, 'http://hub.stullerlandcommunity.com/storage/fa164d9ad6bae9f920301be59957eeeac1896073c54bf265ea20639f468e83e6.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:43:47.408', NULL),
('5cc71b07-cf8f-4f24-9ca0-fe350a7b45c2', '65a35c6a-c947-4ed1-85a0-a9c0feb1363b', 1, 60, 'http://hub.stullerlandcommunity.com/storage/cfb4d56126ecce66a46d880aa1ffa76d49979b33f803aa460445be1eab691a5a.gif', NULL, '2025-07-02 09:23:29.000', '2025-07-02 09:23:29.000', NULL),
('5d07b6e7-203a-4642-9f7b-074071ada45e', '80e71a41-c2cc-435e-aff9-4394bfd40899', 8, 720, 'http://hub.stullerlandcommunity.com/storage/130b5e5bf3db2adc4d66110727412ae89e1b95fc57057b45e35392ba5c0074cd.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:10:23.315', NULL),
('5e54ecd4-4d4b-4055-9a81-8316c5e48220', '5dece5c1-1dd8-4f6b-a688-1c5feadcd915', 1, 60, 'http://hub.stullerlandcommunity.com/storage/20bbfa7e1fd51710413c73692b19c80f72be489486746f8dc4d8e45f154daea5.gif', NULL, '2025-07-02 09:40:44.000', '2025-07-02 09:40:44.000', NULL),
('601524b5-2690-4911-8fe8-03b5207a7fa6', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 4, 60, 'http://hub.stullerlandcommunity.com/storage/249abf538963ccebe4b1ea78cc6aa9c07b2bea29aed99a550f9b77ea4de2d055.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:57.900', NULL),
('605f4d53-68f0-4188-b391-1065038259b9', '8fc35fa6-0398-4ee6-9765-efebb833a507', 112, 1500, 'http://hub.stullerlandcommunity.com/storage/2674c07947558d2672dc036f48704dfb2d1412e5d15dcb72740904f9a737fa7b.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('633772c5-9655-4405-8574-08fd2f58ae17', '178bd879-8547-42c0-bd54-d5f4a08d7138', 1, 60, 'http://hub.stullerlandcommunity.com/storage/ce31da1ab0f280dab4fb94da43be16afe44e631f849459413bb5de1f4a58a44b.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:21.137', NULL),
('6607d123-d320-41c8-8886-c843ef84a623', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 4, 60, 'http://hub.stullerlandcommunity.com/storage/756ceaf043b6cba8349e4f9dc1551bd9e56300095508dd0b01b8ec4c68ba8249.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:09.994', NULL),
('669ddcc9-d7ce-4ae6-a4b7-dd5ef1224e51', '9dcdab30-8f5e-4b1f-b26e-81c1afcfd2fd', 1, 60, 'http://hub.stullerlandcommunity.com/storage/30200253d1b0094c2a0c25843068c467f3febe910327ffa570b21c689bb179f1.gif', NULL, '2025-07-02 08:48:12.000', '2025-07-02 08:48:12.000', NULL),
('68fa298e-fcf2-4c4e-b25d-c66a207f9685', '703be787-656f-439c-93d6-39dbd309c425', 1, 60, 'http://hub.stullerlandcommunity.com/storage/6f0e982dc30f8f317a8ca48026edc36176c81bff5b3bfd01cf9ec5257d3da049.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:03.875', NULL),
('6c88b53d-af00-416a-945a-56c783f5d4b0', '8fc35fa6-0398-4ee6-9765-efebb833a507', 110, 660, 'http://hub.stullerlandcommunity.com/storage/4a164e313b0956d7c579b1d55aa9c5b8b1203dbc09ece3020d1d39c882f26f18.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('6e5199fa-64d7-4f81-9f06-016dc27e343b', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 6, 60, 'http://hub.stullerlandcommunity.com/storage/6b08ecf43790e333138a44e64e6313f8e40da5c10305d9212df0c93cb3e3a742.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:13.299', NULL),
('721b1ac7-b1af-474a-9136-a42e291e0c36', '178bd879-8547-42c0-bd54-d5f4a08d7138', 6, 60, 'http://hub.stullerlandcommunity.com/storage/1ec8764d83a547560d1c6d1f80170d6afa8b58a284bcda279e58abcb015f0663.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:32.671', NULL),
('751e7ba5-872d-4993-91d0-a8ef72ee8d08', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 2, 60, 'http://hub.stullerlandcommunity.com/storage/5563c1124d7d3e51c516aa35949f75f2fd2ebf6471f27ee0371a348a590efde8.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:53.593', NULL),
('76ee5fe7-9c2c-4fbc-a3d8-99c5cba4cc7c', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 2, 60, 'http://hub.stullerlandcommunity.com/storage/dd3effd96e1ec067366ef177650d9d8ed0b10a68c8f488c63a7e09c7e5cb0b8b.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:46.445', NULL),
('7e7fd5b6-1d2b-4efb-b766-4c975be3a311', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 4, 60, 'http://hub.stullerlandcommunity.com/storage/44833624521f486dea8dc6212a6b737b9b0b2c240154712b4060987ee99fde3c.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:51.471', NULL),
('82073095-08c2-45bc-8b8c-18540d8b767f', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 5, 60, 'http://hub.stullerlandcommunity.com/storage/2dc7229f45856815f03acce4f7ff4bcb14d6fb8fc481be86ac047eed44de9642.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:20:01.925', NULL),
('824e7150-c7f1-42c7-9038-1749728f3033', '8fc35fa6-0398-4ee6-9765-efebb833a507', 99, 660, 'http://hub.stullerlandcommunity.com/storage/9a737e9b76bcbcdba18321ac48791b1c6ac125e11857207d99d3099990d11444.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('83208928-a7b6-4b92-ba51-dc1ad97384fb', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 4, 60, 'http://hub.stullerlandcommunity.com/storage/7f9be8a38cd3ef5b808d58f5e3194c130f1b65931c4cd2573ff7fb3caf6eba00.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:43:44.995', NULL),
('8587fa42-d92e-44ca-a49c-0f3c5f33ae45', '8785de92-f262-49df-b494-407c84ed774e', 1, 60, 'http://hub.stullerlandcommunity.com/storage/5b1072850bb364e4aac7517d3d202ee06a0ab0f5055e56032a409fd12eaedf3c.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:27:20.399', NULL),
('87976141-319b-412e-ae4b-84c9991a0afd', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 6, 60, NULL, NULL, '2025-07-02 09:20:58.000', '2025-07-02 09:20:58.000', NULL),
('87f95f69-60eb-405f-8ddd-c8ac3da98a4d', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 5, 780, 'http://hub.stullerlandcommunity.com/storage/a53cf122eb8954403b2062fa6caefae66c8e73643bf518f5ec61aa6f30d43324.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:12:13.217', NULL),
('88e2c84a-6f72-4e0e-8cc3-20bbd168633f', '0ebd03b7-b904-4d94-9929-89792cfb28d5', 3, 60, 'http://hub.stullerlandcommunity.com/storage/42fe22eecd41ffba81968306f00bed69368020fbf6bbdccab7905070fe5ea57e.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:05.310', NULL),
('8ba461c7-d154-4b1c-a263-da5a7eac4419', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 4, 840, 'http://hub.stullerlandcommunity.com/storage/a27cefb738410454fc5187836b9b71c22d8fb909f5ffa39c068402098744cf7f.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:12:08.064', NULL),
('8c2c61b8-3fc0-4664-8ee0-15af1cd7d310', '9019223e-79da-44c9-92c4-102f4959af64', 6, 60, 'http://hub.stullerlandcommunity.com/storage/f47fc8255de88b1e7223039ea3fcaf1e751789f96f0e28b2d7a05a570c6a7c17.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:27.430', NULL),
('8cce7d20-b115-46cd-8e9c-231a498b3997', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 3, 60, 'http://hub.stullerlandcommunity.com/storage/7db90da8b2dd24e52603f8d382ccd3faef3f2c597018c4a7327f6db6f4fb399d.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:55.600', NULL),
('8d2f4be2-5d05-4083-a28b-d90017f7b053', 'c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 2, 600, 'http://hub.stullerlandcommunity.com/storage/4e89254fd9057cc699aa2dd6d87d1f4e9481f6973a17584c51c173cc81949216.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:14:43.343', NULL),
('8e317723-82cc-4781-a160-f4e45237f770', '7fa024be-a054-4a57-99a7-826573bc334e', 1, 60, NULL, NULL, '2025-07-02 09:44:32.000', '2025-07-02 09:44:32.000', NULL),
('92ed6d8c-418e-442e-8c28-d5baf6c532ba', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 9, 60, 'http://hub.stullerlandcommunity.com/storage/4ba305f44cb9a288fa9d79acb6a4cf4760d9231b7fcb7ea2315be3f9a7472689.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:18:05.227', NULL),
('93821c66-a083-4ad0-8876-5436aeb14d8d', 'c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 1, 1500, 'http://hub.stullerlandcommunity.com/storage/baa8740a80fe48b4b2e5c185dbf5c67720b5a3f8895da7847c511fb484de0742.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:14:40.599', NULL),
('96314727-3546-486f-bd3c-d0cc52a8d8c7', '9019223e-79da-44c9-92c4-102f4959af64', 8, 60, 'http://hub.stullerlandcommunity.com/storage/224063655c2a4973de4aa2c123ebec19bfc3d7299009b4fef6ec77b172314e78.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:33.023', NULL),
('9c988c29-32c9-46ee-b42d-cf3c2b434cca', 'f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 5, 60, 'http://hub.stullerlandcommunity.com/storage/2e2ca049e754a44640d5f3e4fe116acac85d4cd9a45120098f5fc6ef89f39887.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:07.639', NULL),
('9ed5848a-69a2-4d91-ab01-be2224c50293', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 5, 60, 'http://hub.stullerlandcommunity.com/storage/cfdf431ae67281e0c3972bba2f870c70c5ed75fc9bd51c445930321c632300da.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:43:46.088', NULL),
('9ee2cd46-7df4-45fa-8f99-dc9c46c9d83c', '9dcdab30-8f5e-4b1f-b26e-81c1afcfd2fd', 2, 60, 'http://hub.stullerlandcommunity.com/storage/e6347efe98609dfbc119cb0095ab2b28bb03c332769bb2d18294e35204665c5b.gif', NULL, '2025-07-02 08:48:12.000', '2025-07-02 08:56:50.612', NULL),
('9fbaefee-b08e-4056-b156-4bc308a65f15', '8fc35fa6-0398-4ee6-9765-efebb833a507', 106, 720, 'http://hub.stullerlandcommunity.com/storage/84f22760e8197319b159153a829f136bb5f37fc373b5c318836202eea49bbdc3.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('9fcdd7a0-4c39-4ff7-b125-600ddc4662ea', '8fc35fa6-0398-4ee6-9765-efebb833a507', 108, 840, 'http://hub.stullerlandcommunity.com/storage/882f95ac96d55b3cb9eb5ef55df5658ddc9bd9157253c767d0dbd973893f0ffa.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('a5bd4268-217d-4db5-8f78-d5b56bdc7569', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 7, 1200, 'http://hub.stullerlandcommunity.com/storage/f2c1f4d033cae3b3e74c181c4f3e49d2d388658af7d89b03bb97d90f73c7ab0a.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:13:30.697', NULL),
('a640b3b3-c25d-480a-9f2e-84412228c04b', '703cef2e-fe6d-44e7-8c6d-d66f1665dd87', 1, 60, 'http://hub.stullerlandcommunity.com/storage/51b9585d246170203f03177555b042b91842d6bf4f5eb7205f5bd4ada42f8060.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:48:09.609', NULL),
('a9a7a134-bd26-42ba-bad8-57037b189cc4', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 1, 60, 'http://hub.stullerlandcommunity.com/storage/ea648cce32b5bbcb171764edf59a8ebfce9bfc4be82e27b09c70cefbe67a2e43.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:41.539', NULL),
('aa90adf0-9114-4854-91ba-8e4447dd8740', '31db78b6-a1c2-4f5f-b00d-410636e3c0f1', 4, 60, NULL, NULL, '2025-07-02 09:00:11.000', '2025-07-02 09:00:11.000', NULL),
('ac7df671-2d9f-4c5b-b325-fd7c28f2e6ce', '91dc634f-73e9-40cf-a02f-0cd1254973cd', 3, 60, 'http://hub.stullerlandcommunity.com/storage/281b733d17d4f5f265c33370052576bcbae9ed104db3be61cd48476a0b4def8e.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:40.906', NULL),
('aff9e244-a408-4006-a7fb-9fc326ccfeb7', '31db78b6-a1c2-4f5f-b00d-410636e3c0f1', 1, 60, NULL, NULL, '2025-07-02 09:00:11.000', '2025-07-02 09:00:11.000', NULL),
('b07c52bf-e491-4640-87f6-53d29c2693f5', '178bd879-8547-42c0-bd54-d5f4a08d7138', 4, 60, 'http://hub.stullerlandcommunity.com/storage/b46a859bd68da6764cf4bcf07b5eb03d513c7e0590c38b7e6bbe9519f438cf90.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:16:28.989', NULL),
('b40b5a63-e74c-41e7-903a-7a78c4b9b0c2', '4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 4, 60, 'http://hub.stullerlandcommunity.com/storage/33989281284341016b24b937150c408867d28aca734111ded4179bb6c7059900.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:27.831', NULL),
('b65866bb-b89f-4394-8766-99e044465ff3', '80e71a41-c2cc-435e-aff9-4394bfd40899', 6, 60, 'http://hub.stullerlandcommunity.com/storage/51961c346bb884330825725487ad1f183ea7d21b0d771943b3cc0c2a133d547f.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:10:18.916', NULL),
('b65c0d8b-4876-4826-9576-c7b3209a21f5', '3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', 2, 60, 'http://hub.stullerlandcommunity.com/storage/db6d19510abe305a35600310c1b31db218791b6fe338fb6e3fb7fea62e904272.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:10.320', NULL),
('b67730d2-27e2-4393-93ba-b2c2a0b3b3e4', '46b66a58-615f-4758-a0af-9cf8534265b8', 1, 420, 'http://hub.stullerlandcommunity.com/storage/4279639ee0f0b02ca0395a8e7f0f634a2df17bb3a791fc9b4e876f5f9fea36c4.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:38.048', NULL),
('b7d60cae-a4b1-4d98-8676-6e7cf339d7c0', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 6, 720, 'http://hub.stullerlandcommunity.com/storage/b59e3e4b18d39ea7561054e6f0cce673ea5458416bd1b9830970e249a1405a94.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:13:26.754', NULL),
('b85dce88-8ac9-4c63-b31a-42fcbea31072', 'c6a3735f-ae74-4b20-b7a8-afb799da0d21', 2, 60, 'http://hub.stullerlandcommunity.com/storage/a9e5bbf36b871870b0e83ccc6d9628b466818bb05c1a41feee3b081ea12989d4.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:57.953', NULL),
('ba8f48cf-09c5-4c9c-95c2-a1220ab176a7', '31db78b6-a1c2-4f5f-b00d-410636e3c0f1', 3, 60, NULL, NULL, '2025-07-02 09:00:11.000', '2025-07-02 09:00:11.000', NULL),
('bade2f69-b01e-4529-a662-c122d1bd0653', '3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', 4, 60, 'http://hub.stullerlandcommunity.com/storage/639b92bdab307d7d876260e1fbcc4e622a1e763d07356e1bbda912d0ca62d75c.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:16.542', NULL),
('bdaecda7-2d89-4d55-929f-9154bcc897ce', 'f0fdd2f7-c8ed-435e-8a4e-181385659ccb', 1, 60, 'http://hub.stullerlandcommunity.com/storage/8f457f9d2f57754535d0713ee91ff1b8a69c5bd55e67f085e3b12b59611906e3.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 08:47:14.031', NULL),
('bdf4594f-b044-4a0b-923a-caa7f54d980e', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 8, 60, 'http://hub.stullerlandcommunity.com/storage/b5f17f8e5bf6d462242f75b04c9838fac06db7753b0a416da213d7dcbca0c37a.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:18:03.806', NULL),
('be800f06-f06a-4d7f-b133-bcc07501e8ea', 'be800f06-f06a-4d7f-b133-bcc07501e8ea', 1, 60, NULL, NULL, '2025-07-02 09:35:31.000', '2025-07-02 09:35:31.000', NULL),
('bf429931-fe7b-4fca-a356-1a87ee86de01', '8fc35fa6-0398-4ee6-9765-efebb833a507', 104, 660, 'http://hub.stullerlandcommunity.com/storage/c027b7805953314523bacded2d767bec37f182554ae8f426b3b332f5ffc18e0a.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('c101b5ca-7e39-4a66-a9f2-b7fe991795c1', '3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', 1, 60, 'http://hub.stullerlandcommunity.com/storage/05ea910fc760ef12c53aba76e44a0b22ca27d69c3b4cf8179784cfd101e0e9eb.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:07.552', NULL),
('c2dbd504-a8d8-4e9d-a88a-76b125dd12cf', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 2, 60, 'http://hub.stullerlandcommunity.com/storage/8dc206b9ea81c5ee1bf981ac9a1d5248316449b2a70f7675bcd1fbdead2f5fcd.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:43:42.186', NULL),
('c3fe20f7-f9db-4cf3-ab56-642c6d27b0d0', '8fc35fa6-0398-4ee6-9765-efebb833a507', 127, 960, 'http://hub.stullerlandcommunity.com/storage/ff21be823725ee098e8d25e8aa5b57083ee81b839b6f0bd653ca480f1882ce3a.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('c7dddb6a-5a6f-4627-99b5-db98de5aa7c5', 'c6a3735f-ae74-4b20-b7a8-afb799da0d21', 1, 60, 'http://hub.stullerlandcommunity.com/storage/d33c6dd92df6fbcf3d68848e975f0adc1c35bca48f7891a4dc01cf8f967be05f.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:08:56.487', NULL),
('c7ecde3c-7532-4efa-afb9-1f11ebd34112', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 3, 60, 'http://hub.stullerlandcommunity.com/storage/5e3d7f9271fa8cf7a1f9bc2711c1d2a61660c059ed8368a6f037d9d14b8c4aa1.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:43:43.873', NULL),
('c7ed54a5-256f-4868-85bf-97a628e77070', '4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 1, 60, 'http://hub.stullerlandcommunity.com/storage/89bc083f33971f057b6c4442bb5d6fde04e0733e411c9eadd65b9c113a0cfce7.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:20.838', NULL),
('c9d5e5ee-8f5b-4fc9-a502-68f612c24133', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 1, 60, 'http://hub.stullerlandcommunity.com/storage/ff0cfd08dab03a898d5f8a5acbb7868122dd1628063966bab3c9a0f5bb2b5180.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:02.066', NULL),
('cb6830bd-25d7-4ebb-a8db-fa961d7d30bf', 'f6d5dc3e-934f-438c-9459-1b67b88b9ade', 1, 60, 'http://hub.stullerlandcommunity.com/storage/58c4f3928b46af52abe82e304c95eea70575c5c9210d39cf413b6e85f41a75e9.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:47:30.614', NULL),
('cdc3c2c0-4b26-4f50-aec2-2743b519a62d', 'f0fdd2f7-c8ed-435e-8a4e-181385659ccb', 2, 60, 'http://hub.stullerlandcommunity.com/storage/bac2c1fec02ca07cb49b6755e98dc57ef16878ac5a6ebf311c6a927403693316.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 08:47:16.589', NULL),
('ce26232e-5c2f-4b3e-97f5-b9d21864d084', '80e71a41-c2cc-435e-aff9-4394bfd40899', 1, 840, 'http://hub.stullerlandcommunity.com/storage/93cb1d5df9b79a9cf4d3951e65d57726a8f841b2b31d219211fa7aeaead0977a.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:09:47.993', NULL),
('ce6c1855-8e39-4290-bed6-95ac0bf1e3c7', '8fc35fa6-0398-4ee6-9765-efebb833a507', 81, 1020, 'http://hub.stullerlandcommunity.com/storage/9106edf3a6e4238855241734309dc2afc3f2418ec427e6f1ca97b46ba833f397.png', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('d14a7e50-f446-4328-a315-d25b816bd25f', '9019223e-79da-44c9-92c4-102f4959af64', 5, 60, 'http://hub.stullerlandcommunity.com/storage/7fb5600e8588a1b48ae4cbbac33e0cbe5953f26b1af43d2b33f6d3d2247e0db5.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:26.157', NULL),
('d2ab72b5-3818-4909-a0a4-c6f3fdd36833', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 2, 60, 'http://hub.stullerlandcommunity.com/storage/0a970ce1ec20ef1fe1fd89be82db6b4e7ff1bf084ba42c9760f0d7aafe77e456.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:05.587', NULL),
('d325b57c-1948-4912-a90a-fe6487a7161d', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 8, 1140, 'http://hub.stullerlandcommunity.com/storage/100fdaa337b3b99875fad3a845356b381e1aea79501cf6c6e7a2d2a173d10d97.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:13:34.453', NULL),
('d722c4cd-6f93-44e0-af98-5eeecf34c50f', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 3, 60, 'http://hub.stullerlandcommunity.com/storage/1fd8077266771a74751cf7444605c3cc3fb09c1a305bde43ef52770d6b190894.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:48.548', NULL),
('d8d6e530-1d4c-4916-a574-80abeda51fc3', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 7, 60, 'http://hub.stullerlandcommunity.com/storage/4482028c108e2e52454a1587517d1692b3bf33e16d66826a3942cf571967f1e1.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:18:02.400', NULL),
('d8d9292c-29a8-413c-b085-774a4146ab33', '91dc634f-73e9-40cf-a02f-0cd1254973cd', 1, 60, 'http://hub.stullerlandcommunity.com/storage/3ebe6f0cf788d4a0eae139e47be961ccc6465dd0aa858829825e2905074ab18c.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:38.634', NULL),
('d9c8a6c4-368d-45e9-be23-5b05541c1b7a', '9019223e-79da-44c9-92c4-102f4959af64', 2, 60, 'http://hub.stullerlandcommunity.com/storage/86ae9712f2556143cd21cb8df4fb470d7c85b2e720e6351d8ec8af82dfaa8ecd.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:09.106', NULL),
('da0ab328-8aeb-4436-9e3a-e2deb5e7775e', 'f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 4, 60, 'http://hub.stullerlandcommunity.com/storage/b5799d7ec6c87a235bd0620be559294d2a8059cf4ba06b1ab36abc4bb7a47fa4.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:06.247', NULL),
('da5f065f-b08e-40e5-b6e8-a888933448f2', '53c78114-d1e1-4f7d-a2e5-3f6e0b7d36ad', 1, 60, 'http://hub.stullerlandcommunity.com/storage/315a334711190170e18a327ab6502ea8caf5b90059fd5a29eaa80549770b6784.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:48:42.562', NULL),
('de91d531-6b38-4ce8-9933-cdd2f303cb38', '80e71a41-c2cc-435e-aff9-4394bfd40899', 5, 1080, 'http://hub.stullerlandcommunity.com/storage/32ae367dd287555ea5db3018fc35bdd2d73930d4e8c29da2dc7030c89680d116.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:11:15.202', NULL),
('e082e1b4-035e-46b2-b902-1bc92c9841e4', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 1, 60, 'http://hub.stullerlandcommunity.com/storage/d4b8fb1a05f5e83ee9477371fc7d35c5a91b21efa66d64576fbda6338bf9849f.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:19:51.086', NULL),
('e1a48890-e2e5-4734-addd-55e241f381b1', '9019223e-79da-44c9-92c4-102f4959af64', 4, 60, 'http://hub.stullerlandcommunity.com/storage/8dd2c45f21f8dec975bb7b3fba95a189b27a70b1427a39d1edcff2c3edb027ae.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:49:24.628', NULL),
('e261ea3d-7047-4382-a663-f91a67a81474', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 10, 60, 'http://hub.stullerlandcommunity.com/storage/29ed9ad0e74668e2d0f118e3871e61ff602034ce66782e91ac7f85337bf0a1aa.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:13:46.150', NULL),
('e29a480d-3cda-4b57-b75b-3bdb67d153e5', '8785de92-f262-49df-b494-407c84ed774e', 2, 60, 'http://hub.stullerlandcommunity.com/storage/f312c605460e32d43cc49bde85377085612184ec91cd0716e74272ff7bca589e.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:27:22.611', NULL),
('e674dc2a-6e0c-463a-90af-c1654e880f50', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 3, 60, 'http://hub.stullerlandcommunity.com/storage/1b54f64716689c6b5b06488e584a1c9c25e0d7d9e3f6ad359a05381ce06e4019.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:07.506', NULL),
('e73b357e-f498-4ade-8af4-fef4d82198ef', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 9, 1320, 'http://hub.stullerlandcommunity.com/storage/d47d222132373cde89749f0c7ab1e0d07bbd567fe34ab05031a448f947846040.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:13:48.362', NULL),
('eacf36ec-7a0a-4964-b521-4a0b31ffc265', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 5, 60, 'http://hub.stullerlandcommunity.com/storage/c1beb3d50d119eaaa2c760cf220df33384246f4b224859a704a18d83dff94e1a.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:17:11.531', NULL),
('ec6134fa-9019-4869-ac29-6afe77eb2ffb', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 1, 600, 'http://hub.stullerlandcommunity.com/storage/c22f9a7d9652dcb5ca04581b4ab9ef269aa03e7d3e4902f42e3095d9abf147c9.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:11:54.101', NULL),
('ef6d8cd4-921d-4eff-b052-30675fdb0c22', 'e82241f1-32d8-4fe0-aceb-cbfb78ff910d', 2, 120, 'http://hub.stullerlandcommunity.com/storage/a19d07894462c1a8a7558befe14735fd542712b4384a0e1e2e40a2a7c1272fa8.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:07:54.730', NULL),
('f11b91ec-ae9e-4467-9e39-1392ce9a1fac', '8fc35fa6-0398-4ee6-9765-efebb833a507', 128, 60, 'http://hub.stullerlandcommunity.com/storage/19ae99e6ddbca386a5dcde2538b47c99b32c4c999d5d4544dc16e170d8403eda.gif', NULL, '2025-06-27 09:08:19.340', '2025-06-27 09:08:19.340', NULL),
('f41a657c-77ec-4769-8bdf-efa85c746536', 'eeb0c527-6a4a-4810-890b-6f05a5e3de0d', 1, 60, 'http://hub.stullerlandcommunity.com/storage/ef6bccba9b139ac8aa872237f7c68eb825aeae2a47f8ec903476d47cc63b3e60.gif', NULL, '2025-06-27 09:08:19.340', '2025-07-02 08:47:00.772', NULL),
('f54fbb7a-9eba-4715-a8b4-f3974a46b4a3', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 7, 60, 'http://hub.stullerlandcommunity.com/storage/3ed69bfc04a228686db58214c8341d0150e62ad1c42543fb90d0dddd595f14e2.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:20:50.227', NULL),
('f90bf601-56dd-4a71-b34a-0acec6c0406c', '0ebd03b7-b904-4d94-9929-89792cfb28d5', 2, 60, 'http://hub.stullerlandcommunity.com/storage/e2a4329302a0fb13dd1d8b66e9e26a7128d95cb07001865582e5e26a369764f4.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:50:02.224', NULL),
('fa742262-97a0-45d4-b485-a260b039964e', '604a7e9d-a7f8-43fd-9419-388b15c3b4c6', 1, 60, NULL, NULL, '2025-07-02 09:37:42.000', '2025-07-02 09:37:42.000', NULL),
('feae3344-8f98-4740-88de-282528ce077c', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 6, 60, 'http://hub.stullerlandcommunity.com/storage/1a88c163d7ec99723437c7ad083dae5af0ba35fd8253b9996d35bdd12f9b43ae.png', NULL, '2025-06-27 09:08:19.340', '2025-07-02 09:18:01.001', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academy_progress`
--

CREATE TABLE `academy_progress` (
  `id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `lesson_id` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academy_sections`
--

CREATE TABLE `academy_sections` (
  `id` varchar(191) NOT NULL,
  `course_id` varchar(191) NOT NULL,
  `thumbnail_url` varchar(191) DEFAULT NULL,
  `background_url` varchar(191) DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `academy_sections`
--

INSERT INTO `academy_sections` (`id`, `course_id`, `thumbnail_url`, `background_url`, `display_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
('07fc34d6-b494-46d8-91b0-6a948bd00cf7', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/5828ba53bf2f704bee270e0fcd6b78a61f89bde53bf7a97cd2de4847bd78c10b.png', 'http://hub.stullerlandcommunity.com/storage/d0247bbaceae054852c063607ebddc83e4827013e0e26433be2c8c2169584333.png', 9, '2025-06-27 09:08:19.311', '2025-07-02 08:43:57.355', NULL),
('0ebd03b7-b904-4d94-9929-89792cfb28d5', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/d2f9e0038d2b692dbdc9be2df51894f4bd1b9b6b05fec4bbe4611b503b03ea5f.png', 'http://hub.stullerlandcommunity.com/storage/3b4e331cb8b56c9c0da8f5f7ee62f43708cd4e59c0c597114ce7430634bbd084.png', 6, '2025-06-27 09:08:19.311', '2025-07-02 08:46:16.874', NULL),
('0f0f069b-30e4-45b7-9215-1db86c7f3234', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/31b55039770d2a3dc16c5e32cacb74e6612998563676cccb5deb4be411c4c91c.png', 'http://hub.stullerlandcommunity.com/storage/de7e03c1b75d427e4db57cb648dfd2fde6cbea264db6bfbd67fc491c0445acac.png', 6, '2025-06-27 09:08:19.311', '2025-07-02 08:44:45.512', NULL),
('12cdcc90-4aa4-4d91-8042-59cf8e13f51e', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/22bd596f23098321eebc50464333db718a808b95a081eb1ac2d2a303d50e55f4.png', 'http://hub.stullerlandcommunity.com/storage/bbd98845b207199118d7317eae021855c03eeb0b67d6fe9e7dd62098ff9d9f64.png', 8, '2025-06-27 09:08:19.311', '2025-07-02 08:44:52.101', NULL),
('178bd879-8547-42c0-bd54-d5f4a08d7138', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/29aa741c610eaea2058b11e09ab02903d3c72f37e3831c71ec9ea821a2a2bd41.png', 'http://hub.stullerlandcommunity.com/storage/0f7308ae2a229712ff0eec000909aca0b6864e632cabe0e4fc2865357b3f71ca.png', 2, '2025-06-27 09:08:19.311', '2025-07-02 08:35:49.630', NULL),
('28cdba22-ec79-456a-8e3b-52df3cbef053', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/ed61a9334bb147d73eeaeb1d51b86c14eb47262e75d5699c8b07577dd18dd0ff.png', 'http://hub.stullerlandcommunity.com/storage/ec9deeb8d0451c26477d0f9bbf31d7f4611e91964f23c950e9500a487561a76e.png', 9, '2025-06-27 09:08:19.311', '2025-07-02 08:44:55.615', NULL),
('31db78b6-a1c2-4f5f-b00d-410636e3c0f1', '490072d0-3d90-4d63-a622-a609d5994faf', 'http://hub.stullerlandcommunity.com/storage/de22f4c5582ba2885480034ec65a8162de45c8819812c90002492dec915b97dd.png', NULL, 7, '2025-06-27 09:08:19.311', '2025-07-02 08:22:18.798', NULL),
('32fd7e1d-2b1f-41e6-a516-7176794808ce', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/5af04d82d4e70785ba5c42ddf4fbe76333b693c647995e9058e35f106757386d.png', 'http://hub.stullerlandcommunity.com/storage/845f98fd12a060fd1458cad38c10cb0dd7c2d714289b94922373921635be3023.png', 8, '2025-06-27 09:08:19.311', '2025-07-02 08:43:04.364', NULL),
('376781e4-4c01-456f-993a-1f0b3dcfcc29', '490072d0-3d90-4d63-a622-a609d5994faf', 'http://hub.stullerlandcommunity.com/storage/4e47ad92ac321792facfbfacc9dbd281ccb45a647dc0ec72242cb8d5ed6a63c0.png', NULL, 8, '2025-06-27 09:08:19.311', '2025-07-02 08:22:21.170', NULL),
('3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/6ccb6f3c7b9acdc9628a2c1d3a22d03c4a35b37bd8d53a39ceaa9ed6530f6950.png', 'http://hub.stullerlandcommunity.com/storage/d68fa29172d666da77e3f766d2ec5c1c51fcd95b7bea6dbce730d7c5ff5cd1ca.png', 3, '2025-06-27 09:08:19.311', '2025-07-02 08:24:47.672', NULL),
('46b66a58-615f-4758-a0af-9cf8534265b8', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/9a4570cc267bb7a8106d3546bf30b879b83aa26cd25094baa733f35cb93b087d.png', 'http://hub.stullerlandcommunity.com/storage/271aca7dc3640320c250243399dd7f6aa0bf20bc8bdd7677692ed338a44f3f30.png', 4, '2025-06-27 09:08:19.311', '2025-07-02 08:24:55.700', NULL),
('4a6f472a-dfb5-4c0d-9f75-b42207a71d59', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/e3466bd6e09191df3ec683074337cc5c938566b77087c48de8904fa4d31224e0.png', 'http://hub.stullerlandcommunity.com/storage/166af66e736ca8b68b9824190c91bfd9b09fc6bb61b8f9de7ed17da3a8a0485c.png', 4, '2025-06-27 09:08:19.311', '2025-07-02 08:35:55.176', NULL),
('4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/d457cfe2a9dd19948dd7242baae8a37a80e70dbe9ef3641e76b7eb7a44caa4b5.png', 'http://hub.stullerlandcommunity.com/storage/4e8ecf21ed9e76625f6dc236bb636961fe2fb5a20b3209ddbc43b64b4fb344e0.png', 7, '2025-06-27 09:08:19.311', '2025-07-02 08:46:19.360', NULL),
('53c78114-d1e1-4f7d-a2e5-3f6e0b7d36ad', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', NULL, 'http://hub.stullerlandcommunity.com/storage/6276621691459f56f6985eda5a3e3148dc5205a78a40651f6eaef434f510bae1.png', 4, '2025-06-27 09:08:19.311', '2025-07-02 08:46:10.346', NULL),
('5801d2be-9fa2-4283-8dd6-85f5c511e868', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/fcf9c9276ed08a1e4644dba23222fa6471d2228356674a22f2925d30b379d541.png', 'http://hub.stullerlandcommunity.com/storage/0da0bb3c4cd95a2ccddd6413b2141451a68d6d23430638c72aa5cab0278db7b8.png', 9, '2025-06-27 09:08:19.311', '2025-07-02 09:46:47.011', NULL),
('5a3f35b6-fe18-4e24-9189-4e2972e1e212', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/b84a5f1348e4da17deeac5f87ed03984a22e10a1e1c92bcd18e81ed08fced99c.png', 'http://hub.stullerlandcommunity.com/storage/fe1e65ec333df90502588bacbfa5aec1c116587466076ae6a927cc9a54a59f62.png', 1, '2025-06-27 09:08:19.311', '2025-07-02 08:41:57.449', NULL),
('5d46ce62-9259-413f-b81e-009db36cb339', '490072d0-3d90-4d63-a622-a609d5994faf', 'http://hub.stullerlandcommunity.com/storage/94b25dc153d18f089b1a17b57a10f69671122a1f2b26c723e22d549df6bdb79b.png', NULL, 5, '2025-06-27 09:08:19.311', '2025-07-02 08:22:12.976', NULL),
('5d8c0787-814c-4130-b4b4-5abe0a65587a', '490072d0-3d90-4d63-a622-a609d5994faf', 'http://hub.stullerlandcommunity.com/storage/e2a3c301612ce7c71575d2c0b81fd6663d6b94efba605f7c0c68ea4fe31ae9c6.png', 'http://hub.stullerlandcommunity.com/storage/c6803bb07e68ad13b5d2ee8a93bbcb38065604c6eac10ca5fec7654f21e3f9cc.png', 4, '2025-06-27 09:08:19.311', '2025-07-02 08:22:10.104', NULL),
('5dece5c1-1dd8-4f6b-a688-1c5feadcd915', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/6a4320497fe86c65ea156c76335ffab0fd7a0b97c46478d06a66c0ba4571d070.png', 'http://hub.stullerlandcommunity.com/storage/79b399584a2350ff9cfa521d460eec2202cb62838cfab02c913f9361adf610f1.png', 2, '2025-06-27 09:08:19.311', '2025-07-02 08:44:36.995', NULL),
('5ff227a1-d8a0-4ba5-bf73-11cef34572cb', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/78174f0c15512dc8892196a53a19b413d06eb2e46606a9f3f692f71da6643e03.png', 'http://hub.stullerlandcommunity.com/storage/79366e4bf67f511114786aa3bc884d835eb4984efeb5330f6103f6c49bb050c1.png', 3, '2025-06-27 09:08:19.311', '2025-07-02 08:44:38.704', NULL),
('604a7e9d-a7f8-43fd-9419-388b15c3b4c6', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/f1464cfdf4260ff68869796add106f189c5a3db6fa044356e7e4e3ed57c453dc.png', 'http://hub.stullerlandcommunity.com/storage/3e1b90cb6179ca76641ff6fc2cb3fe1053c7cfb6f96f518444306f2b55af5976.png', 1, '2025-06-27 09:08:19.311', '2025-07-02 08:44:33.623', NULL),
('65a35c6a-c947-4ed1-85a0-a9c0feb1363b', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/020f57e47e8c0a2f6fbf30479721f2511682c7069dd6b3b4a88b6ab0798bb1ff.png', 'http://hub.stullerlandcommunity.com/storage/567f942f81172b6117f77ee6b6ef12b5110bf703483b1054465805a0491e6089.png', 2, '2025-06-27 09:08:19.311', '2025-07-02 08:42:23.569', NULL),
('6821bdec-a2d0-4f6b-aae0-4f79f7001290', '490072d0-3d90-4d63-a622-a609d5994faf', NULL, NULL, 6, '2025-06-27 09:08:19.311', '2025-07-02 08:32:01.330', NULL),
('6c5926be-3da5-43bc-a71e-ecce0493b16e', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/c2c5e46b1647897262df665824b4ddd6d3cbf978d7bd40d8cd847eb7a1c47e45.png', 'http://hub.stullerlandcommunity.com/storage/68bb2b213da77607ffe0acf13e655618fcdeb2186eea02a02ece848cc90c4dc5.png', 7, '2025-06-27 09:08:19.311', '2025-07-02 08:34:49.811', NULL),
('6d8de92d-22bb-469e-b8d6-a7643b726bd5', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/ac1f0f1dd91a46f59e16230b25db5572027a2a131c7445319db82af77aa8ca5a.png', 'http://hub.stullerlandcommunity.com/storage/1408f4215d4490cf919e821098691a1167ee8995ce5ab331ce59381f00c7eaff.png', 6, '2025-06-27 09:08:19.311', '2025-07-02 08:43:32.263', NULL),
('6eea11df-6a4f-4661-88eb-911f5f9e0305', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/8bb55741b7d6e1adf47cf0858fe6e64b1fdc003f9927951a51bb3eaa930ef227.png', 'http://hub.stullerlandcommunity.com/storage/f1879a15c3f8a87c499b75c19d8a8b141b96d767c6883c64846cd01b45c3e065.png', 6, '2025-06-27 09:08:19.311', '2025-07-02 08:35:59.542', NULL),
('703be787-656f-439c-93d6-39dbd309c425', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/f531aec8081049f972d0ecb5861901ab1eddde5f7e1b72063d82ce08db7e1196.png', 'http://hub.stullerlandcommunity.com/storage/2722fec04dd6d4534cde5a2e9a51e4dc8b74c9ceea489837a3aa97c442b137ed.png', 1, '2025-06-27 09:08:19.311', '2025-07-02 08:35:45.704', NULL),
('703cef2e-fe6d-44e7-8c6d-d66f1665dd87', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/91c422c9a7531ddde80dbe842a85afe729aa65b4ad3dab42771e7a10c6c2e6f7.png', 'http://hub.stullerlandcommunity.com/storage/e291b80b02422006e1fcfefd6b7b7841a2629fd07d97bd946f9c21bbf22d6e17.png', 2, '2025-06-27 09:08:19.311', '2025-07-02 08:46:02.977', NULL),
('7758a6c0-6ffb-4a41-aaa1-0b7d5835941d', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/c4bab843126bc1dfd82a5cf0ac6387c87544f771b42a2ba343a5c869c3213464.png', 'http://hub.stullerlandcommunity.com/storage/54632bd176aa358908f5e28a76638e507c78055c3c202c44a84202ada470716a.png', 1, '2025-06-27 09:08:19.311', '2025-07-02 08:24:24.125', NULL),
('7fa024be-a054-4a57-99a7-826573bc334e', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/d7d4e1067a4546ba9822a8cec0fce53de3150aa20a6cca13ca136c35c971994a.png', 'http://hub.stullerlandcommunity.com/storage/f7b39217c54b090e3d7eda2b05d8c82bbf39ef354dc674fb812f55c638728add.png', 4, '2025-06-27 09:08:19.311', '2025-07-02 08:44:41.806', NULL),
('808d387d-76ac-4b65-bbec-f7b533956358', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/21981f1c3e6eb723454eaf7ffe3302c4122199f83f80280cc09086d6491ad523.png', 'http://hub.stullerlandcommunity.com/storage/1a4b8570c896d1ced53d06d30d56856066c1dc69db34f1745329eff88dfb0f7c.png', 5, '2025-06-27 09:08:19.311', '2025-07-02 08:43:02.246', NULL),
('80e71a41-c2cc-435e-aff9-4394bfd40899', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/589e4758c6468c87d9d9bf7684e4c70f368806b2dc82d92a6628cf6d5d36f78d.png', 'http://hub.stullerlandcommunity.com/storage/7e8b7fd4ac8c63e523e87d1cbf7ec702a71fc1f4208b38b3a8e4691dc86ff6e0.png', 6, '2025-06-27 09:08:19.311', '2025-07-02 08:34:34.643', NULL),
('8785de92-f262-49df-b494-407c84ed774e', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/d02e23eaff8ac1f0c6eae36d90fa26adb3fbd3ee8a0c7713d2de4668f0437e3d.png', NULL, 3, '2025-06-27 09:08:19.311', '2025-07-02 08:42:32.670', NULL),
('8d90fcbc-4075-4131-a6a8-62870d39598e', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/ef823a70fcf3621e9b829cf51ba29a643d3109ca943f9c2631df6bd6f2e243bf.png', 'http://hub.stullerlandcommunity.com/storage/f602ffc3c610351ce8b2b3633304cdbaddaa8dae2675b11e824f13871a9c67a9.png', 9, '2025-06-27 09:08:19.311', '2025-07-02 08:46:22.834', NULL),
('8fc35fa6-0398-4ee6-9765-efebb833a507', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/0333cb3f9677db4045a59a421e40193c134a79ee979fd4b2f111445bb01552e7.png', 'http://hub.stullerlandcommunity.com/storage/57b39528ed3f2a79e2345355b9b28abaa594e28a4798c595ceb29b99b195b9a1.png', 8, '2025-06-27 09:08:19.311', '2025-07-02 08:34:46.564', NULL),
('9019223e-79da-44c9-92c4-102f4959af64', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/9bde2600c51694747641d31d32403be5161428aaf89f15457138efaad03f7931.png', 'http://hub.stullerlandcommunity.com/storage/83f3d823b9cfca968d76b2d84a1d5acefe2ece04f72549c859c4eb79843b0748.png', 5, '2025-06-27 09:08:19.311', '2025-07-02 08:46:14.490', NULL),
('91dc634f-73e9-40cf-a02f-0cd1254973cd', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/95939593f233d9c98ab6322c24c06fe710ee4d61354c6c2d0dcbb5ce4e4b86f8.png', 'http://hub.stullerlandcommunity.com/storage/18e96a01b320ad7aef0b26d7c8278d887ded67621dacf63e725064b6793ee022.png', 8, '2025-06-27 09:08:19.311', '2025-07-02 08:46:20.866', NULL),
('9dcdab30-8f5e-4b1f-b26e-81c1afcfd2fd', '490072d0-3d90-4d63-a622-a609d5994faf', 'http://hub.stullerlandcommunity.com/storage/44d1e7cc3300a4f993da8b8bf949e427e39bbc27c6c9bf92f5849c90aca1b0eb.png', 'http://hub.stullerlandcommunity.com/storage/a140961a6e00c12266aa6bed817da9184bc00e248711f1e8a207ede83649c0a6.png', 3, '2025-06-27 09:08:19.311', '2025-07-02 08:22:06.580', NULL),
('ae305717-c913-415f-86f6-e0b4be9a23a4', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/1f18e7870357f4284ec09032c9320466a9459a38cfc5c1de1b5a0d96f773dff0.png', 'http://hub.stullerlandcommunity.com/storage/eba85f58d70ea7eea921eee86558d24601b1877c516ee4542e1a0bd5d6209b24.png', 4, '2025-06-27 09:08:19.311', '2025-07-02 08:42:58.701', NULL),
('b737ad58-5a3c-42f4-bf7d-6240934feb4c', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/f455ff252d549cd5cfb7886d3ab82e1ef165d38d183d9b8eee4a3a59e3a73a11.png', 'http://hub.stullerlandcommunity.com/storage/9b130ef0840c4da9b6cf1cdfd8982c1011c5acca241629a3c695b3ba2b880082.png', 5, '2025-06-27 09:08:19.311', '2025-07-02 08:44:43.293', NULL),
('bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/9db8dfc3d7376939af37e1a3232a65b999e5b7ebec05bcb59418e370ff769ee3.png', 'http://hub.stullerlandcommunity.com/storage/483f09e767ef1fc9d0cfd3f529a1f90c94685a8e2c305e67b297367466b009de.png', 7, '2025-06-27 09:08:19.311', '2025-07-02 08:36:02.022', NULL),
('be358e10-2d8b-41f4-9fcf-1f050775c931', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/7dbd1f15765d04b98295010de034f0e5336636856e6579c1d93006cc8d831c23.png', 'http://hub.stullerlandcommunity.com/storage/264269059d49b2b8e8b2ce352df8fde6ae4b0d3c5b7c6f15cb1c00069ace0133.png', 10, '2025-06-27 09:08:19.311', '2025-07-02 08:43:59.608', NULL),
('be800f06-f06a-4d7f-b133-bcc07501e8ea', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'http://hub.stullerlandcommunity.com/storage/c2abb7390fe617e647ecf2598110b436ace04bc269107622b93c21e3970c9997.png', 'http://hub.stullerlandcommunity.com/storage/6db3283ffe23bc70bbc5882d77098e3e94e3c56cb43e5904bd7ee0580286d0c7.png', 7, '2025-06-27 09:08:19.311', '2025-07-02 08:43:39.725', NULL),
('c0967d22-25a5-40fe-bbb8-2da6c0ed6216', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/1e19a6f131cf378bf457d1511276af8c8900cba2d8fc966c0350651571751f2c.png', 'http://hub.stullerlandcommunity.com/storage/bf35df98b40f9a894f8608d8e166aa712bab9c1672dcec9d85850e8dd680dc29.png', 3, '2025-06-27 09:08:19.311', '2025-07-02 08:35:52.195', NULL),
('c45cb73f-2ed8-44e3-ac2e-956f87b4e667', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/9af953e1365c5f54639be371aa881fbfd0eef667893cf9c23480aff2257c5a86.png', 'http://hub.stullerlandcommunity.com/storage/f734127b2554fc2dd2f109fca308ba82ce4e98474e17e7003a8df503acf7b714.png', 10, '2025-06-27 09:08:19.311', '2025-07-02 09:46:43.428', NULL),
('c6a3735f-ae74-4b20-b7a8-afb799da0d21', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/6d857ec86c6ee29626a7b16ff5c2279024597b22457fbe6e9a2de55c53b3f0b2.png', 'http://hub.stullerlandcommunity.com/storage/259c0afe64ebcee78f53b865e740f1de7c9c117aeaf5376fb25e34f95fc527df.png', 5, '2025-06-27 09:08:19.311', '2025-07-02 08:25:00.766', NULL),
('ceca39f5-1e72-4f25-8f58-307b61e16129', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/6c92e9cc0177dec3c6438c72f7fa9a4e7384f0556e9a4157e293f9cfe33b56a1.png', 'http://hub.stullerlandcommunity.com/storage/8f1dbdb4bbb8e4ca3df4891be5ac5acf14ed8613894abe6f30a5d7a58fe7cdbd.png', 3, '2025-06-27 09:08:19.311', '2025-07-02 08:46:07.759', NULL),
('e82241f1-32d8-4fe0-aceb-cbfb78ff910d', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'http://hub.stullerlandcommunity.com/storage/3a3476b532f0bdf3c720e57b075e33c272946b748110521435697c228cf5b738.png', 'http://hub.stullerlandcommunity.com/storage/7b760a7a4be3a1f40056352bc68ca52a0cba63f339733b74df57a0ba2f587a64.png', 2, '2025-06-27 09:08:19.311', '2025-07-02 08:24:31.182', NULL),
('eeb0c527-6a4a-4810-890b-6f05a5e3de0d', '490072d0-3d90-4d63-a622-a609d5994faf', 'http://hub.stullerlandcommunity.com/storage/c34150f6f14a0295620c3cbc869a2f4e0df0371325776e07345f2ba95a0feb1c.png', 'http://hub.stullerlandcommunity.com/storage/8b407a4fdea8756a5bf0c8e13f0cacb79c3569fc43849a9af023f62334d5bf2d.png', 1, '2025-06-27 09:08:19.311', '2025-07-02 08:22:00.569', NULL),
('f0fdd2f7-c8ed-435e-8a4e-181385659ccb', '490072d0-3d90-4d63-a622-a609d5994faf', NULL, 'http://hub.stullerlandcommunity.com/storage/ef5d1e4d0908d48d4320565eedc44362e49bd21fa644e1059ed7d09f238e9c25.png', 2, '2025-06-27 09:08:19.311', '2025-07-02 08:22:04.369', NULL),
('f6d5dc3e-934f-438c-9459-1b67b88b9ade', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'http://hub.stullerlandcommunity.com/storage/a9116cd848ad87b43b0033c97386eba5d9203cbf3533e1ef9e203b65e9881431.png', 'http://hub.stullerlandcommunity.com/storage/9f5193781b7fbce490d266440cfd4dd332c3e42d165389dc36dcba49357f258f.png', 1, '2025-06-27 09:08:19.311', '2025-07-02 08:46:00.083', NULL),
('f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'http://hub.stullerlandcommunity.com/storage/6e0cbf286d7014bad96f54417a14a520f55debf363cc1d2b9297502e1e9560a6.png', 'http://hub.stullerlandcommunity.com/storage/26cd2a08ecf080b9189422b4ae8269120c8be147e948dd3717e195c06dbff1fb.png', 5, '2025-06-27 09:08:19.311', '2025-07-02 08:35:56.645', NULL),
('fe47c44d-8dd5-4acc-84ab-619c7720c184', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'http://hub.stullerlandcommunity.com/storage/5a26d14613f8c54cdf52584d800bd9ee767fa684505000ff13c4c3c8e0f030c3.png', 'http://hub.stullerlandcommunity.com/storage/68ce1cb7f86feacbde20a050708ceba08e10865f659f6bc7df6d23ab73c22030.png', 7, '2025-06-27 09:08:19.311', '2025-07-02 08:44:50.753', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_bots`
--

CREATE TABLE `assistant_bots` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `role` text NOT NULL,
  `task` text NOT NULL,
  `avatar_url` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_bot_skills`
--

CREATE TABLE `assistant_bot_skills` (
  `id` varchar(191) NOT NULL,
  `bot_id` varchar(191) NOT NULL,
  `skill_id` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_messages`
--

CREATE TABLE `assistant_messages` (
  `id` varchar(191) NOT NULL,
  `bot_id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `type_id` varchar(191) NOT NULL,
  `role` varchar(50) NOT NULL,
  `content` text,
  `skill_call_id` varchar(191) DEFAULT NULL,
  `skill_call_parameters` json DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_message_types`
--

CREATE TABLE `assistant_message_types` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_parameter_types`
--

CREATE TABLE `assistant_parameter_types` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_skills`
--

CREATE TABLE `assistant_skills` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistant_skill_parameters`
--

CREATE TABLE `assistant_skill_parameters` (
  `id` varchar(191) NOT NULL,
  `skill_id` varchar(191) NOT NULL,
  `type_id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_roles`
--

CREATE TABLE `auth_roles` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_roles`
--

INSERT INTO `auth_roles` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('aaaa', 'admin_major', '2025-07-05 11:15:20.000', '2025-07-25 11:15:20.000', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_role_permissions`
--

CREATE TABLE `auth_role_permissions` (
  `id` varchar(191) NOT NULL,
  `role_id` varchar(191) NOT NULL,
  `permission_id` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_sessions`
--

CREATE TABLE `auth_sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `access_token` varchar(191) NOT NULL,
  `refresh_token` varchar(191) NOT NULL,
  `access_token_expires_at` datetime(3) NOT NULL,
  `refresh_token_expires_at` datetime(3) NOT NULL,
  `revoked_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_users`
--

CREATE TABLE `auth_users` (
  `id` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `avatar_url` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_users`
--

INSERT INTO `auth_users` (`id`, `code`, `name`, `is_active`, `avatar_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('009b4f0a-8e5b-4a15-91b6-043b4ce23b52', '282', 'salazar cortes rusell gustavo', 0, 'https://hub.stullerlandcommunity.com/employees/282.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('00dcc0af-e126-47d3-9351-bf59b98d8953', '3280', 'solis izquierdo guadalupe elvira', 1, 'https://hub.stullerlandcommunity.com/employees/3280.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('00f59288-0fa8-45ee-a4fc-f2c75db4ac79', '3082', 'gonzalez gutierrez gloria de los angeles', 0, 'https://hub.stullerlandcommunity.com/employees/3082.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('016c6230-26b6-4218-83c3-e1ab66241bcc', '3059', 'rodriguez gonzalez jorge alberto', 1, 'https://hub.stullerlandcommunity.com/employees/3059.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('017ac320-a3d0-4d5a-b231-cf1f028e9f84', '2304', 'diaz barradas mayola', 1, 'https://hub.stullerlandcommunity.com/employees/2304.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('01dedbe5-8676-44b9-a114-2b634c379cf4', '3238', 'cordova escobedo diana laura', 0, 'https://hub.stullerlandcommunity.com/employees/3238.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('024b38ce-98d1-4c37-9792-1375369d3a3c', '3270', 'tuz xul doris abril', 0, 'https://hub.stullerlandcommunity.com/employees/3270.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0276cbae-dd44-4ba5-9796-d2ad05722978', '1278', 'canul chin rogelio', 1, 'https://hub.stullerlandcommunity.com/employees/1278.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('02c79818-f441-4b3d-a215-5abbada56d7f', '2228', 'flores koyoc gaspar alberto', 0, 'https://hub.stullerlandcommunity.com/employees/2228.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('030d6f08-1722-4c6f-9542-8da842de0f92', '2519', 'euan canche julio asuncion', 1, 'https://hub.stullerlandcommunity.com/employees/2519.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('032054a0-5e48-41b5-a431-4b57924fbc2e', '2384', 'camara bello montserrat carolina', 1, 'https://hub.stullerlandcommunity.com/employees/2384.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('03f0bc43-5508-41d2-8c84-4bddc29f2fed', '3074', 'pech molina lorena lizette', 0, 'https://hub.stullerlandcommunity.com/employees/3074.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('03f91c5e-d793-435a-9105-47ce9062d5c8', '3245', 'may cruz margarita', 1, 'https://hub.stullerlandcommunity.com/employees/3245.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('04007f42-a6d6-42a8-98a5-e4e1d5f13b35', '3061', 'canul canul esther noemi', 0, 'https://hub.stullerlandcommunity.com/employees/3061.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0410c419-0aeb-40f5-90a7-bac7711f588d', '3173', 'moo barrera carlos ivan', 0, 'https://hub.stullerlandcommunity.com/employees/3173.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0410f673-1db2-438c-8397-3805df88640b', '3397', 'canul canul adriana marisol', 0, 'https://hub.stullerlandcommunity.com/employees/3397.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('043328ff-09b8-418d-8abe-726f2cdcf9fa', '3156', 'tovar  jenny anahi', 1, 'https://hub.stullerlandcommunity.com/employees/3156.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('045beca8-27ae-4eae-b895-2fb2e9986183', '3056', 'chan cruz arturo ruben', 0, 'https://hub.stullerlandcommunity.com/employees/3056.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('04b519a4-6260-4ee0-9e96-f9b0fa4dca11', '3257', 'canul martin maria margarita', 0, 'https://hub.stullerlandcommunity.com/employees/3257.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('04bff53b-6adc-400b-aa70-76267febcb79', '3199', 'alonzo balam jose juan', 1, 'https://hub.stullerlandcommunity.com/employees/3199.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0526b376-8cc5-4e84-81d1-64e8e70cb410', '2790', 'flores martinez iddar andrey', 0, 'https://hub.stullerlandcommunity.com/employees/2790.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('062aa054-8101-432c-af38-01c807756dc4', '2785', 'palma sauri maria angelica', 0, 'https://hub.stullerlandcommunity.com/employees/2785.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0650009b-29de-4738-8f55-511786018b62', '2988', 'yam canche jose ricardo', 0, 'https://hub.stullerlandcommunity.com/employees/2988.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('067733e5-f7b1-4d21-b6d8-6cc87a07b753', '2749', 'sulu mex daniel de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2749.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('06ab771c-1aa5-4cc4-9483-5cdd690fdb5f', '2774', 'poot pech julia rosaura', 0, 'https://hub.stullerlandcommunity.com/employees/2774.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('07117c49-f074-4b25-966d-80204e5c8136', '3393', 'mena che jeimy vianey', 0, 'https://hub.stullerlandcommunity.com/employees/3393.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('071573fc-f5bf-4e70-8b97-fe37d13ecbdf', '3143', 'heredia santiago fatima yamily', 0, 'https://hub.stullerlandcommunity.com/employees/3143.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('07218696-cd6c-42c6-836c-ce536bdba1c5', '1462', 'puch gongora luis alberto', 1, 'https://hub.stullerlandcommunity.com/employees/1462.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('077082f3-6629-410a-a4d6-ac3251ea1af8', '3017', 'caamal lopez dulce maria', 0, 'https://hub.stullerlandcommunity.com/employees/3017.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('07c9f3fc-1b12-479e-90b2-b33fcc51cb87', '2969', 'borges uc ángel gustavo', 0, 'https://hub.stullerlandcommunity.com/employees/2969.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('07e69ad8-eb84-43e0-90ed-e58b0bde2324', '2312', 'hernandez cham lorena guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2312.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('083ded4b-33b1-4122-99e8-5bb22fb33dcd', '3473', 'fernandez couoh martin gabriel', 1, 'https://hub.stullerlandcommunity.com/employees/3473.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('085be2c1-38dc-4310-b5b2-74d710b3684f', '2518', 'chavez medina reyes del rocio', 0, 'https://hub.stullerlandcommunity.com/employees/2518.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('08cf1b1e-755f-4f86-abe8-b0ca5c1c3293', '3419', 'gonzalez chan denis josue', 1, 'https://hub.stullerlandcommunity.com/employees/3419.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0909ec42-1f4d-42b4-b2ac-6184fa8a1467', '3048', 'koyoc chac silvia marlene', 0, 'https://hub.stullerlandcommunity.com/employees/3048.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('092610c0-fa88-42fe-9f42-f7de99406196', '2866', 'cauich ek erika marisol', 0, 'https://hub.stullerlandcommunity.com/employees/2866.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('09501a8e-856d-4e76-b890-6559066b564f', '3395', 'pino bencomo carlos adrian', 1, 'https://hub.stullerlandcommunity.com/employees/3395.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('098698e2-a483-4cb6-9f94-f61097a71fd8', '2330', 'canche moo jose maria', 0, 'https://hub.stullerlandcommunity.com/employees/2330.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('09a0fc6b-44bf-4b64-b1bd-19259841ae2a', '2055', 'uc dzul maria jose', 1, 'https://hub.stullerlandcommunity.com/employees/2055.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('09d6d6d2-ea1a-4e60-87b8-fe5039bb1ebd', '3336', 'medina ceballos samantha del jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3336.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0a1ef683-42fb-477d-a167-3380e63d89ad', '2881', 'pech noriega enrique gabriel', 0, 'https://hub.stullerlandcommunity.com/employees/2881.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0a1facd8-2018-4ea8-bb6e-78e16fe01f64', '3391', 'pacheco pool brayan de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3391.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0a5c40be-3e4e-468c-b0b3-2949441f62b1', '2768', 'gonzalez balam jesus antonio', 0, 'https://hub.stullerlandcommunity.com/employees/2768.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0a5d2d0b-6834-4921-ac35-7786f43d41e0', '2852', 'novelo canche mauricia', 1, 'https://hub.stullerlandcommunity.com/employees/2852.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0a8d33a3-eaa7-48aa-9718-98519debe767', '3160', 'chac chan jose alexander', 1, 'https://hub.stullerlandcommunity.com/employees/3160.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0ac96104-be93-4c43-ac33-86a004f2d004', '2933', 'pacheco puc bibiana guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2933.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0b5e3f21-e84b-4a7e-bd3c-9993c4aef7a2', '2967', 'ambrocio reyes aracely', 0, 'https://hub.stullerlandcommunity.com/employees/2967.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0bd3a7ab-524e-4c58-badb-3d7b76e6834f', '3255', 'cruz franco luisa fernanda', 0, 'https://hub.stullerlandcommunity.com/employees/3255.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0c617ab9-5f2a-4762-9281-26790a915f23', '3185', 'tun poot julieta marisol', 0, 'https://hub.stullerlandcommunity.com/employees/3185.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0c69b098-9f27-40ff-894e-7565ca751a7a', '2904', 'chac chuc danilu', 0, 'https://hub.stullerlandcommunity.com/employees/2904.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0c88c234-bbc5-40d2-b1ac-f002c6d4d55e', '3235', 'alba konstantonis alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3235.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0dc5ca0c-fb1a-4918-b4bf-c0df7836b32c', '3215', 'garcia canche julio cesar', 1, 'https://hub.stullerlandcommunity.com/employees/3215.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0e009097-5572-401d-bcda-571da06da00f', '3050', 'sanchez canul johan aldair', 0, 'https://hub.stullerlandcommunity.com/employees/3050.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0e28682f-3f4e-4199-b253-9081bbe14adc', '2950', 'tun poot carlos enrique', 0, 'https://hub.stullerlandcommunity.com/employees/2950.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0e2d198a-4b0e-4027-96fc-174f2b5c1bcd', '2642', 'ek koyoc gloria ivet', 1, 'https://hub.stullerlandcommunity.com/employees/2642.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0e797ef3-3aca-466a-bcb8-7b73b2d8627f', '351', 'canto solis elbeth oswaldo', 1, 'https://hub.stullerlandcommunity.com/employees/351.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0fc0bf75-9dfe-4dfa-969d-28205bba5c41', '2922', 'pacheco carvajal yovanna carolina', 0, 'https://hub.stullerlandcommunity.com/employees/2922.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('0fc36576-5d4c-4358-bc3c-14ed337cd5dc', '2635', 'martinez uicab yanely de los angeles', 0, 'https://hub.stullerlandcommunity.com/employees/2635.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1000b30f-35e4-4343-8686-813ac730b7b9', '3433', 'cuxim tuz carlos enrique', 0, 'https://hub.stullerlandcommunity.com/employees/3433.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('105e0e03-baad-4ea5-b395-234ec5b65869', '2887', 'ventura lopez jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2887.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('111b1429-0210-4522-b97b-0c536b82474c', '1765', 'castillo gonzalez williams omar', 0, 'https://hub.stullerlandcommunity.com/employees/1765.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('111fdc50-5291-4e65-98e3-e8ad345927ed', '2728', 'kollok tun angel emanuel', 0, 'https://hub.stullerlandcommunity.com/employees/2728.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('11d609e6-4da5-4dd4-b8e1-97ecbf5c1ba3', '3154', 'balam cambranis jose maria', 0, 'https://hub.stullerlandcommunity.com/employees/3154.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('11d8a44f-f815-414f-9cd9-e41aee334677', '3321', 'pech balam josue ricardo de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3321.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('11ef38de-14bd-4d4b-9e27-4f06ce712b24', '2443', 'tun chan cristian omar', 1, 'https://hub.stullerlandcommunity.com/employees/2443.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('11f036ae-3475-48fd-ba40-d18b0c651cdf', '2819', 'cauich cocom adriana paola', 0, 'https://hub.stullerlandcommunity.com/employees/2819.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('121dd0ac-a358-466d-8963-4ad2b8506d21', '1927', 'castillo chuc gloria del rosario', 1, 'https://hub.stullerlandcommunity.com/employees/1927.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('124cc86c-0525-4d6a-9658-bf9e10042c86', '2810', 'canepa rodriguez isuri merari', 0, 'https://hub.stullerlandcommunity.com/employees/2810.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('12b63873-360f-4603-aed0-de91ec16310d', '2409', 'kantun may eugenia guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2409.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('12d4be12-7eb9-4998-9641-c76683df3d4b', '3002', 'koyoc koyoc maria yovana', 0, 'https://hub.stullerlandcommunity.com/employees/3002.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1369c459-4560-41a1-87f7-03ba68e19a57', '2845', 'ceballos poot reina guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2845.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('144b3e85-6081-4362-b4b4-f50c89f7a2b8', '1486', 'vega cuy lizbeth cecilia', 1, 'https://hub.stullerlandcommunity.com/employees/1486.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('144d81b9-8c36-4df1-91d2-f67d9823def0', '2856', 'ek chac maria guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2856.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('145990c2-7fba-4e78-8fa0-a71e28d264d6', '3220', 'gonzalez pech eliesi yulissa', 0, 'https://hub.stullerlandcommunity.com/employees/3220.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('14703bef-2d93-4f59-88ce-fd4b6cc85efd', '959', 'pech caamal felipe neri', 1, 'https://hub.stullerlandcommunity.com/employees/959.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('14784695-d421-4fd4-85f2-0726b5775711', '3372', 'millan chan vladimir ivan', 0, 'https://hub.stullerlandcommunity.com/employees/3372.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('14d63b5a-784a-4587-b938-b6c767ab1879', '3119', 'huh can maria del rosario', 0, 'https://hub.stullerlandcommunity.com/employees/3119.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1545d6dc-6de9-422f-b415-ae8d571527eb', '2976', 'dzul coob candelaria', 0, 'https://hub.stullerlandcommunity.com/employees/2976.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('159c1927-c356-47f7-915c-e812aeb13f23', '2917', 'sonda ake rebeca isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2917.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('15d2cfa5-75a9-4dc3-a69f-ae5fbd17bd5a', '3098', 'may negroe alberto eleazar', 0, 'https://hub.stullerlandcommunity.com/employees/3098.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1606e993-0078-4e32-b7ef-d2380911556d', '2841', 'canche baas marlene esther', 0, 'https://hub.stullerlandcommunity.com/employees/2841.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('161dd446-2ec9-445c-8267-ea9d5a706a76', '2972', 'koh catzin fernanda yareth', 1, 'https://hub.stullerlandcommunity.com/employees/2972.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('167b05e8-7a07-4321-9233-7d5b958c1c84', '3282', 'pech soberanis guadalupe de natividad', 0, 'https://hub.stullerlandcommunity.com/employees/3282.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('169434c5-2453-4035-9c8c-49e474b9e93f', '2732', 'canche canul jesus adrian', 1, 'https://hub.stullerlandcommunity.com/employees/2732.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('16e52a86-8700-4d68-8810-56ec81f245a7', '2428', 'matu sanchez nallely guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2428.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('17138e11-6fb6-44a8-a456-f968fd08f854', '3398', 'novelo pech diego jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3398.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('17425979-407a-4cab-8b3f-04c710dd73f5', '2777', 'noh pat eloisa iveth', 0, 'https://hub.stullerlandcommunity.com/employees/2777.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('174e081e-ef5a-4cdc-84cc-fa36777e48b6', '3487', 'carrillo valle brian giovanni', 1, 'https://hub.stullerlandcommunity.com/employees/3487.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('17924f00-00f2-49ab-b816-44eb8cb96089', '3081', 'chi lopez zahyre anahi', 0, 'https://hub.stullerlandcommunity.com/employees/3081.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('17a16836-1230-46e7-8f86-b641592c0280', '3006', 'aldana abnal sandra ines', 1, 'https://hub.stullerlandcommunity.com/employees/3006.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('181ec770-2798-405c-a4af-44cd7964e5d9', '3026', 'uc chi maria guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3026.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('18577ebb-11b7-4a75-bd04-19d893261a6d', '3078', 'rosado pech diana yamily', 1, 'https://hub.stullerlandcommunity.com/employees/3078.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1862980f-12d9-4576-bd3d-154b316b026e', '3023', 'chay chuc yureli', 0, 'https://hub.stullerlandcommunity.com/employees/3023.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('18751c8c-9472-4df4-b277-a64b51982969', '3083', 'melendez gonzalez ingrid cristina', 0, 'https://hub.stullerlandcommunity.com/employees/3083.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('19357d5c-49e5-4da6-a1a2-75de2b1e15c5', '2907', 'chuc chan lucia yamily', 1, 'https://hub.stullerlandcommunity.com/employees/2907.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1aa4fc56-b205-42e5-ad7e-87b6bad39eb5', '2851', 'koyoc cob reyna estefany', 0, 'https://hub.stullerlandcommunity.com/employees/2851.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1acf34bb-1261-4d8e-a0c1-316bdb455ec1', '612', 'dzul tun bernardo silverio', 1, 'https://hub.stullerlandcommunity.com/employees/612.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1ae3fe63-36cc-49ef-aa93-877948d868f3', '3354', 'bacab flores aaron alejandro', 1, 'https://hub.stullerlandcommunity.com/employees/3354.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1bce532e-10d2-4b0f-b185-47fe1656230e', '3400', 'dzul eb veronica de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3400.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1be11296-c8b0-4e36-bd32-d1a0800a8ea6', '2412', 'noh canto carlos alberto', 0, 'https://hub.stullerlandcommunity.com/employees/2412.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1cf40ea7-f2e9-4e0d-882a-d0849930ee3d', '3303', 'puga estrada cyntia andrea', 0, 'https://hub.stullerlandcommunity.com/employees/3303.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1d385a1b-b9ad-49cd-8db8-6177e1deb3a5', '2736', 'naal gomez erik omar', 0, 'https://hub.stullerlandcommunity.com/employees/2736.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1d4d35e6-def5-48b2-ad86-e9c24a16eb84', '3319', 'cordero chan jose humberto', 1, 'https://hub.stullerlandcommunity.com/employees/3319.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1dbc4950-7b81-4460-9a7d-c4239e9afc01', '3136', 'hau ek maria sofia', 0, 'https://hub.stullerlandcommunity.com/employees/3136.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1e0e4e8b-aa8b-4a7d-8819-ed32978825f3', '3462', 'xool can wilberth manuel', 1, 'https://hub.stullerlandcommunity.com/employees/3462.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1e150e88-61be-4fad-ae14-4cbbf26b7b75', '3266', 'martinez dominguez francisco', 1, 'https://hub.stullerlandcommunity.com/employees/3266.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1e1ffcdb-e290-4201-917f-e60deb77eedd', '2931', 'beltran ek russell de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2931.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1e2895fb-93d3-4c12-be7b-bc721092bf69', '3088', 'montejo peraza carlos francisco', 1, 'https://hub.stullerlandcommunity.com/employees/3088.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1e39c779-6a18-4c1a-b204-e2f52a7fd71f', '2212', 'canche hau omar esteban', 1, 'https://hub.stullerlandcommunity.com/employees/2212.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1f333c04-d73d-4450-beec-014b88391c10', '2854', 'ake dzul ligia guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2854.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('1f825296-1b04-4f7c-a258-a48935bb504a', '2719', 'vargas zamudio julio manuel', 0, 'https://hub.stullerlandcommunity.com/employees/2719.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('20505ba3-6562-441c-8f37-3552bd917365', '2596', 'ek kantun jose bartolo', 1, 'https://hub.stullerlandcommunity.com/employees/2596.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('20809288-df53-4022-9145-155032989f8d', '3356', 'pamplona lara marcos eleazar', 0, 'https://hub.stullerlandcommunity.com/employees/3356.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('20dc880d-c454-4dbe-84dc-af873ab201e6', '3178', 'rosado vargas marco uriel', 0, 'https://hub.stullerlandcommunity.com/employees/3178.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('212bfc0f-7f58-40b6-b9e2-5b4189e0773c', '3339', 'chan tun jose santiago', 1, 'https://hub.stullerlandcommunity.com/employees/3339.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('216cf068-37e5-4cca-b0bc-85d619ea5bd8', '2921', 'alonzo balam yesica carolina', 1, 'https://hub.stullerlandcommunity.com/employees/2921.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('217b9010-44c8-4673-9163-45af87b617aa', '3206', 'ventura cahum carolina guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3206.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('230f0d55-69ac-41c4-8be4-bbfb992b5cd9', '2639', 'ake chab alma lucia', 0, 'https://hub.stullerlandcommunity.com/employees/2639.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('23ade44d-8d88-4a97-b6d2-ad688dbd392d', '2705', 'tinal tinal marcos santiago', 0, 'https://hub.stullerlandcommunity.com/employees/2705.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2408c2fe-dbfb-4133-b4ea-8105384afad5', '2896', 'couoh catzin rosa leticia', 1, 'https://hub.stullerlandcommunity.com/employees/2896.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('240e0e0c-2b10-4205-a1fc-3410e2a2b4f5', '2902', 'alcocer moo lilian elizabeth', 1, 'https://hub.stullerlandcommunity.com/employees/2902.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2459dc1a-5a2a-42b0-af6c-6bec577be19f', '2301', 'manrique arcila maria jose', 1, 'https://hub.stullerlandcommunity.com/employees/2301.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('246b51bf-139e-458d-b849-51a9d8cde4be', '2804', 'caballero valencia susana isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2804.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('24773ae0-273b-469c-9227-f43615c3004c', '2470', 'huchin diaz diego humberto', 1, 'https://hub.stullerlandcommunity.com/employees/2470.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('25095a8a-3a3f-4816-a140-28c2e19c680f', '2434', 'garcia ake georgina amayancy', 1, 'https://hub.stullerlandcommunity.com/employees/2434.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('254490b2-5843-49f2-88e3-4c13b66971f4', '3025', 'arceo cutz angelica josefina', 0, 'https://hub.stullerlandcommunity.com/employees/3025.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('255dd773-07b8-4954-9c5b-4cf4e1404088', '3024', 'tinal uitz rosalinda', 1, 'https://hub.stullerlandcommunity.com/employees/3024.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('259c41bc-3aad-428e-b49d-20393e08c728', '3162', 'garcia alvarado dominga', 1, 'https://hub.stullerlandcommunity.com/employees/3162.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('25fa7769-4d92-4010-991b-e8667a61c0e4', '3169', 'canche hinojosa rosiyo', 0, 'https://hub.stullerlandcommunity.com/employees/3169.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2629fac2-2bd1-4399-820e-c44ec81a14bc', '2956', 'valdez rodriguez saul omar', 0, 'https://hub.stullerlandcommunity.com/employees/2956.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('26585041-4acf-488a-b1bc-cd56bc67baa6', '2963', 'poot xool katia gasely', 0, 'https://hub.stullerlandcommunity.com/employees/2963.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('267e4379-acc8-4dc5-95d9-0ac115f7faa9', '3281', 'ballote aguilar luis joel', 0, 'https://hub.stullerlandcommunity.com/employees/3281.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('26804b11-2da2-4f1d-88a5-00629e069b1a', '3296', 'pino herrera hector lizandro', 0, 'https://hub.stullerlandcommunity.com/employees/3296.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('26a49b47-3216-48f4-84c8-b2219efc78ec', '3211', 'sanchez solis graciela guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3211.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('26a7c429-b52f-470b-96b7-6593ac24e4fc', '2640', 'poot hinojosa mariana iveth', 0, 'https://hub.stullerlandcommunity.com/employees/2640.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('26cb8d59-da4c-4a11-87d6-0bf02b9aa52b', '1607', 'tun tun edgar ricardo', 1, 'https://hub.stullerlandcommunity.com/employees/1607.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2709cbb4-0d2f-45db-b76d-e5984b049600', '3193', 'poot moo geny del jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3193.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('270e02c5-7e42-4452-af5f-1938e04de6b9', '3289', 'toledo hernandez juan carlos', 0, 'https://hub.stullerlandcommunity.com/employees/3289.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('272ca418-a667-4b01-84fd-66035a65f331', '2906', 'beltran ek blanca ivett', 0, 'https://hub.stullerlandcommunity.com/employees/2906.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2753ff53-505c-442a-9689-7164b8b3476b', '2944', 'coj hernandez maría guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2944.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('27be84ee-7eff-4185-9bda-04fcdf3d93cc', '2758', 'poot coba octavio josue', 1, 'https://hub.stullerlandcommunity.com/employees/2758.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('27c839d6-fe3d-44b4-9a6d-78d96c0358c7', '3256', 'ciau tah evelyn verenise', 1, 'https://hub.stullerlandcommunity.com/employees/3256.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('27e5d7e2-f178-4fd5-ad59-b42eeccef2b9', '3394', 'zamudio cahuich leivy', 0, 'https://hub.stullerlandcommunity.com/employees/3394.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('27fce143-abea-486f-aa29-e2aaceb6ded6', '2807', 'polanco canul maria cristina', 0, 'https://hub.stullerlandcommunity.com/employees/2807.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2804dada-c203-4f00-ad65-f49a2f7c6c93', '3268', 'alvarado moreno karla', 0, 'https://hub.stullerlandcommunity.com/employees/3268.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2887b787-6fa8-47f3-b19d-adbfc5d6ac50', '717', 'cervantes carballo jose alberto', 0, 'https://hub.stullerlandcommunity.com/employees/717.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('288d1fb1-f95f-46e6-87a9-2d34e4f50125', '2720', 'canto dzul penelope eunice', 0, 'https://hub.stullerlandcommunity.com/employees/2720.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('29098312-d253-4b82-9282-b80319690d0b', '495', 'pacheco poot jose federico', 1, 'https://hub.stullerlandcommunity.com/employees/495.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('298cdbea-4a33-4ca0-9d87-8f2d85a5c8a7', '3208', 'carrillo zapata liset arely', 1, 'https://hub.stullerlandcommunity.com/employees/3208.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2a58948c-6c00-40b5-9d02-954fe1360911', '2158', 'catzin dzib jose alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/2158.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2a6d2d79-309a-4764-94c9-0d618c4f9657', '3285', 'ramos sanchez aram vladimir', 0, 'https://hub.stullerlandcommunity.com/employees/3285.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2aab7c7a-07f4-4d43-9e1c-79b3b8f7d955', '2824', 'guerra chan jose antonio', 1, 'https://hub.stullerlandcommunity.com/employees/2824.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2af486e7-f1a8-4ddc-aed1-4f82a23ee528', '3112', 'briceño cupul estefania guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3112.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2b1716c8-0f03-4626-91ed-ee98ea2196ef', '2629', 'valencia cauich laura isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2629.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2b2bcc3a-f487-4cf1-909d-2371f108ff50', '3475', 'quintal canche wendy maria', 1, 'https://hub.stullerlandcommunity.com/employees/3475.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2b478674-095a-4ccd-9c09-618f6c2d4792', '2912', 'tinal tinal maria rebeca', 1, 'https://hub.stullerlandcommunity.com/employees/2912.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2b50f9a5-76e1-4d6a-a349-0a177dd9791a', '3385', 'pech dzul johan antony', 0, 'https://hub.stullerlandcommunity.com/employees/3385.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2bc221a1-da04-4ee9-b751-a37b39fa9169', '2781', 'jaramillo ruiz angie marcella', 0, 'https://hub.stullerlandcommunity.com/employees/2781.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2c046305-a02d-4b63-8863-2223f3652363', '2134', 'catzin canul nelvi veronica', 0, 'https://hub.stullerlandcommunity.com/employees/2134.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2c6f95f9-ba14-4504-8fd4-b6a50e70208c', '3325', 'may uc jesus francisco', 0, 'https://hub.stullerlandcommunity.com/employees/3325.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2c7213ea-a402-4877-9531-e3806e0dd8ac', '1907', 'canul chuc jose santiago', 0, 'https://hub.stullerlandcommunity.com/employees/1907.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2d0c127a-6df2-479e-a198-9fb3d231ec24', '3404', 'cauich mukul jose ricardo', 1, 'https://hub.stullerlandcommunity.com/employees/3404.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2d17e3d3-d205-4ed4-bd4c-d0e519701d72', '3278', 'canul canul manuel jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3278.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2deff562-ef27-4001-9589-483ca949c471', '2034', 'canche can daniel andres', 1, 'https://hub.stullerlandcommunity.com/employees/2034.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2e5cf582-b9d7-4877-9f72-09d5ef74e128', '3481', 'zapata isidro kathia xiomara', 0, 'https://hub.stullerlandcommunity.com/employees/3481.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2e746425-07ba-49ac-abc8-f384ba5b4e0d', '3240', 'bacab caamal luis miguel', 0, 'https://hub.stullerlandcommunity.com/employees/3240.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2eefc8c5-5a22-4a47-bc49-f4419d5a203b', '2980', 'caamal yah lucio reynaldo', 0, 'https://hub.stullerlandcommunity.com/employees/2980.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2eefe1d5-8145-4649-ab59-0a9fe6f74d6c', '3163', 'selvan ruiz rocio', 1, 'https://hub.stullerlandcommunity.com/employees/3163.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2f48593a-68c4-4b86-a773-5e37fdab5da3', '1355', 'chan noh esteban', 0, 'https://hub.stullerlandcommunity.com/employees/1355.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2f7e7b9a-27bd-4a51-8e3d-008438e18220', '3051', 'cauich ceh jesus isaias', 1, 'https://hub.stullerlandcommunity.com/employees/3051.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2fa4c25d-9cea-4f97-916e-399b605a13a0', '3407', 'lopez cruz perla marina', 0, 'https://hub.stullerlandcommunity.com/employees/3407.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2fa67a5a-89b6-4b22-9bb9-44c0e58bf1a8', '3430', 'gordillo arguello zaida yovana', 1, 'https://hub.stullerlandcommunity.com/employees/3430.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('2fab6d18-c12d-406b-a38e-62db8660270e', '3464', 'perera sanchez fatima patricia', 0, 'https://hub.stullerlandcommunity.com/employees/3464.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('303ce4a9-85a9-4955-8e8c-db54e839ce09', '2905', 'chac chuc maria jacqueline', 0, 'https://hub.stullerlandcommunity.com/employees/2905.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('30dd0620-9a8c-4ec8-9d14-2cb44f1ea6e5', '3480', 'matos canche jose francisco', 0, 'https://hub.stullerlandcommunity.com/employees/3480.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('311eeb4c-6113-4ba5-8526-41208914e6f9', '3012', 'bacab ku teresa de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3012.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('312a1d05-1a8b-4425-b6e4-9daf503f104a', '3274', 'aguayo may kayly violeta', 0, 'https://hub.stullerlandcommunity.com/employees/3274.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('31a0ced8-ab26-4c17-a227-33b2c63101fa', '2713', 'pech poot maria lorena', 1, 'https://hub.stullerlandcommunity.com/employees/2713.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('31a194a9-87c3-42b0-bc1a-9c0e0cfd9478', '2830', 'caceres chan fatima isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2830.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('322998ef-5b69-43c8-8b40-6c1336fd2d68', '3279', 'garcia casango erika', 1, 'https://hub.stullerlandcommunity.com/employees/3279.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('323fe76d-b8fe-48b3-bade-5b9ef2429554', '383', 'uc vega andy geysler', 1, 'https://hub.stullerlandcommunity.com/employees/383.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('324088d8-2138-42c1-87b1-83fc7bd31b9d', '3027', 'chac koyoc ana leticia', 1, 'https://hub.stullerlandcommunity.com/employees/3027.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3266678c-2412-4219-a059-f041d21125cf', '3066', 'vidal lopez jazmin', 0, 'https://hub.stullerlandcommunity.com/employees/3066.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('328d79dc-5002-4268-bcf2-ffa1cc1e0399', '2578', 'dzib martin elmy lucina', 1, 'https://hub.stullerlandcommunity.com/employees/2578.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('32de91cd-aa0b-416f-a9b3-0c80646e4152', '3228', 'pech parra carlos arturo', 1, 'https://hub.stullerlandcommunity.com/employees/3228.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('332b6344-9a7d-43e8-b1bf-dfc1ebddbfe4', '3213', 'trejo gonzalez josefina', 0, 'https://hub.stullerlandcommunity.com/employees/3213.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3355567a-5258-428b-9d0b-5b3a6754a2c8', '2926', 'koyoc herrera karina guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2926.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3357b87b-c1b9-4c59-b26b-5b408f6dfadc', '3432', 'barcelo alfaro eladio concepcion', 1, 'https://hub.stullerlandcommunity.com/employees/3432.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('33c5af44-cbbf-41b3-936d-50b8addb82f6', '3306', 'chan yam sara maria', 1, 'https://hub.stullerlandcommunity.com/employees/3306.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('33fa4f62-5739-4d13-931b-edbcef982fa9', '2979', 'ek pat luis betulio', 0, 'https://hub.stullerlandcommunity.com/employees/2979.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('34f44814-48cf-49be-ae5c-333fc18f91d1', '3273', 'medina meneses daniela yamili', 1, 'https://hub.stullerlandcommunity.com/employees/3273.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('34fc080c-11e9-4602-bfba-d08a720df56c', '1844', 'huchin aban olga maria', 1, 'https://hub.stullerlandcommunity.com/employees/1844.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3536eb9d-f0aa-48c1-ad23-446904d2fe9d', '3359', 'ruiz iturriaga everth', 1, 'https://hub.stullerlandcommunity.com/employees/3359.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3595f917-60b8-4432-8af5-14024a915aa8', '3070', 'santiago mendoza aldo javier', 1, 'https://hub.stullerlandcommunity.com/employees/3070.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('35ac15dd-37c0-46ca-9bea-4556fe2a4fb4', '2697', 'tzuc cua desideria', 0, 'https://hub.stullerlandcommunity.com/employees/2697.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('35ca663d-4d56-416d-9927-fcd54d289eaa', '3328', 'canul canul mirna sofia', 1, 'https://hub.stullerlandcommunity.com/employees/3328.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('35eacc03-6e6e-4fd0-8556-bc5559754f3f', '2766', 'moreno cen fatima del carmen', 0, 'https://hub.stullerlandcommunity.com/employees/2766.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3634599f-8234-4171-aaeb-79ef096f19b3', '3202', 'ventura cahum veronica del rocio', 0, 'https://hub.stullerlandcommunity.com/employees/3202.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('36675a7c-bb9b-4c98-9e9c-1cbccebf8598', '2962', 'peña castro wilma nayeli', 1, 'https://hub.stullerlandcommunity.com/employees/2962.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3693dbc4-632b-4817-9f1c-0e9bbe05fbb6', '3371', 'uribe novelo diana carolina', 1, 'https://hub.stullerlandcommunity.com/employees/3371.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('36d78376-2d63-4255-8b3b-95203dba1016', '3312', 'caballero cardos daniel ernesto', 0, 'https://hub.stullerlandcommunity.com/employees/3312.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3700b447-cde2-49ea-a322-52f98e2af251', '3239', 'aragon vera alba mariela', 1, 'https://hub.stullerlandcommunity.com/employees/3239.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3720fde7-3780-4e13-812a-dc9885a9f7f6', '2993', 'pacheco magaña genny guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2993.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3834e466-9b89-46b7-970c-1f08c4d3ed71', '152', 'hernandez rodriguez jacinto', 1, 'https://hub.stullerlandcommunity.com/employees/152.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('38413b4b-e4d8-4a90-937a-a4be4d1e078b', '3309', 'pech moo audy mariana', 0, 'https://hub.stullerlandcommunity.com/employees/3309.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('384f1ab6-6b6e-4a97-b874-81276275bd54', '3414', 'queb ake juan cristobal', 1, 'https://hub.stullerlandcommunity.com/employees/3414.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('389e7158-ce99-4e73-8135-a3c764c0bc39', '2894', 'poot baas lleymi noeli', 0, 'https://hub.stullerlandcommunity.com/employees/2894.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('394c2a9d-ed4b-4b64-bbb9-bbc304970f78', '1758', 'ancona flores maria ivonne', 0, 'https://hub.stullerlandcommunity.com/employees/1758.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('39c79850-bebd-499e-9dd9-f7793c1261c1', '3413', 'borges ku hiromi alelis', 0, 'https://hub.stullerlandcommunity.com/employees/3413.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3a626469-fc2c-463d-9b37-fbcf653af1eb', '1730', 'chan mena maria juanita santos', 1, 'https://hub.stullerlandcommunity.com/employees/1730.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3abd6d9c-d285-4284-b55e-4c55045457d7', '2744', 'cauich koyoc daniela sarai', 0, 'https://hub.stullerlandcommunity.com/employees/2744.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3acc8dae-293d-4574-adcc-2c885cd47c43', '2829', 'chan lopez erika noemi', 1, 'https://hub.stullerlandcommunity.com/employees/2829.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3b37f3d2-0204-4507-923f-9814ba3b0c23', '2825', 'martinez jimenez aibelio', 0, 'https://hub.stullerlandcommunity.com/employees/2825.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3b59655a-0f20-47b0-bda4-8294ae6dae05', '2138', 'poot cua maria virginia', 0, 'https://hub.stullerlandcommunity.com/employees/2138.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3bbdb345-abae-4486-965d-1c4db9fecffe', '3340', 'cancino perez maritere', 1, 'https://hub.stullerlandcommunity.com/employees/3340.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3bcbfe09-cd49-4cb1-82ed-5fcd310d6d6d', '3103', 'canche ojeda kevin del carmen', 0, 'https://hub.stullerlandcommunity.com/employees/3103.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3bd908c1-84fc-4c4f-91ef-edc2d58eecdd', '2645', 'novelo canche maria isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2645.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3bf31751-382a-485e-a63c-c1a74a99b90e', '3443', 'pech canche roxana', 1, 'https://hub.stullerlandcommunity.com/employees/3443.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3bfc99e4-e144-419d-b3b0-e1ef06194aa2', '3418', 'arias lizarraga ricardo jose', 1, 'https://hub.stullerlandcommunity.com/employees/3418.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3c39e43a-d7ea-4686-bf1a-a52a275eae03', '3145', 'herrera naal angel gabriel', 1, 'https://hub.stullerlandcommunity.com/employees/3145.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3c945bab-aaf3-4e29-bb08-f90f2bc42032', '3254', 'koyoc koyoc jesus manuel', 0, 'https://hub.stullerlandcommunity.com/employees/3254.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3d4b61b6-05d5-4a2d-b742-c48d35695fb2', '3378', 'canul canche yael isai', 1, 'https://hub.stullerlandcommunity.com/employees/3378.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3d5dc15d-614e-4677-9659-b4008e8d6905', '2943', 'canul canul nayeli isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2943.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3d6e9e8b-8aba-4c38-9050-a027a05257ae', '3064', 'ucan ramirez laura del rocio', 1, 'https://hub.stullerlandcommunity.com/employees/3064.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3d7ec565-396f-4993-8457-96ca65121580', '3137', 'castro can geovany antonio', 1, 'https://hub.stullerlandcommunity.com/employees/3137.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3d9194c8-30f8-4fce-94ee-6d80cd24c3b7', '3122', 'koyoc manzon beatriz asuncion', 0, 'https://hub.stullerlandcommunity.com/employees/3122.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3d9b6deb-3711-41e9-a5c4-87e6eb6df0cf', '2850', 'flores flores erick alejandro', 1, 'https://hub.stullerlandcommunity.com/employees/2850.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3daf9e5b-f959-4a37-8489-d02da0a3484c', '3009', 'uicab flores jose fernando', 0, 'https://hub.stullerlandcommunity.com/employees/3009.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3dbb2613-9a98-4943-a674-981eb8bc7eee', '3444', 'sulu hu andres', 1, 'https://hub.stullerlandcommunity.com/employees/3444.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3e119c97-7e1b-4b48-9fb5-6796d14b8f1a', '2565', 'canche novelo manuela de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/2565.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3e991b08-398f-4a38-a0c7-d63d47ada5d4', '3332', 'ek ek maria del cielo', 1, 'https://hub.stullerlandcommunity.com/employees/3332.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3ea6d696-a4ef-4c74-acb8-089d28b1e153', '3052', 'ek baas elsy marlene', 1, 'https://hub.stullerlandcommunity.com/employees/3052.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3ee2c4b7-25c1-44f3-b14c-983c00bf51d3', '3450', 'pech pech maria belem', 1, 'https://hub.stullerlandcommunity.com/employees/3450.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3f0d35f7-6a73-4f9c-8777-026a39b1e694', '2704', 'cruz gomez laura delia', 0, 'https://hub.stullerlandcommunity.com/employees/2704.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3f73ee77-3d5e-4350-a410-61b16225e549', '3403', 'cocom ku mario alberto', 1, 'https://hub.stullerlandcommunity.com/employees/3403.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('3fc9ea84-9eef-4023-85df-33e745c08794', '2874', 'pacheco urtecho jonathan josafat', 1, 'https://hub.stullerlandcommunity.com/employees/2874.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('40209262-4e39-429c-93bd-3c463053f2b3', '2729', 'huchim uicab yuleimi adriana', 0, 'https://hub.stullerlandcommunity.com/employees/2729.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4035028e-99e4-4901-99b8-8a208a2f0c63', '2756', 'martinez sosa guillermo rafael', 0, 'https://hub.stullerlandcommunity.com/employees/2756.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('40e2f3c0-282c-4905-aac6-852560c05a36', '3212', 'euan pool carlos norberto', 0, 'https://hub.stullerlandcommunity.com/employees/3212.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('414cf0b5-b82a-4f1a-8aad-e00a72626ef0', '3176', 'may hinojosa maria concepcion', 0, 'https://hub.stullerlandcommunity.com/employees/3176.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('417bed99-8a2e-4984-bc57-9f95a4722a30', '3222', 'cauich koh angel gustavo', 0, 'https://hub.stullerlandcommunity.com/employees/3222.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('418d022e-d6d4-4cff-a96d-24056e9d1ae6', '3054', 'baas moo angelo alexander', 0, 'https://hub.stullerlandcommunity.com/employees/3054.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('41aff7fd-ed90-41e0-a5ba-d56835dc58a6', '1788', 'chan mena jose alfonso', 1, 'https://hub.stullerlandcommunity.com/employees/1788.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('41d1fb22-8ebd-484f-bf53-bb2c5d449700', '2273', 'fernandez lainez miguel alberto', 0, 'https://hub.stullerlandcommunity.com/employees/2273.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('423c7d82-7ed8-45c9-a3f3-6e819d98d78e', '3035', 'can castro daniela beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3035.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('426f9568-6470-4b70-bc04-999c05d8fbae', '2816', 'canche hinojosa blanca aracely', 1, 'https://hub.stullerlandcommunity.com/employees/2816.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('429ee166-9705-4222-a20a-e6b470ca62db', '2985', 'cortes cauich greisy daniela', 0, 'https://hub.stullerlandcommunity.com/employees/2985.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('42b9f4f2-116b-4215-9097-b4ae6688c9b4', '3415', 'yerves martinez reyna guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3415.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('42c7428f-1902-475b-b5a0-9485cf2d384b', '3300', 'ek canche carlos angel', 1, 'https://hub.stullerlandcommunity.com/employees/3300.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('42f266b1-e909-4b3c-b336-344b5a34c83b', '3209', 'rivero noh reyna marideli', 0, 'https://hub.stullerlandcommunity.com/employees/3209.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL);
INSERT INTO `auth_users` (`id`, `code`, `name`, `is_active`, `avatar_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('42f2a959-c7e7-4d7e-bbc1-05cb6c7ef768', '3129', 'ake coob maria rocely', 0, 'https://hub.stullerlandcommunity.com/employees/3129.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('431bcfb4-8e61-412d-a0b7-36fb39e91b6e', '2580', 'poot koyoc rita maria', 0, 'https://hub.stullerlandcommunity.com/employees/2580.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4328522b-dd72-4d8b-8b74-eda3faa06c2c', '3150', 'romo mejia yakin', 1, 'https://hub.stullerlandcommunity.com/employees/3150.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('436416f9-9696-46bb-9267-6a8083415efa', '2426', 'maas tun martha patricia', 1, 'https://hub.stullerlandcommunity.com/employees/2426.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4395ebaa-d90e-410d-aba2-a62995aad71d', '2263', 'varguez martin norman amir', 0, 'https://hub.stullerlandcommunity.com/employees/2263.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4412fa78-c52b-435b-a697-ae36b45be1dd', '2930', 'chan medina victor jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2930.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('441e8ad0-ea73-4600-80b7-ebeedda6e553', '3324', 'canche can carlos de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3324.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4431e688-a9ef-4c4d-912b-0ef22f0c13e8', '2268', 'valencia varguez joana del carmen', 1, 'https://hub.stullerlandcommunity.com/employees/2268.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('44391799-80f7-4114-82e8-0d81397ef91e', '1142', 'perez herrera lidia dominga', 1, 'https://hub.stullerlandcommunity.com/employees/1142.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('443f9422-466d-4d35-877b-73beeb36538b', '3484', 'ek canul arely jazmin', 1, 'https://hub.stullerlandcommunity.com/employees/3484.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4491e7ba-5915-4129-9c9b-07e1fcbd8f2f', '2462', 'herrera mian gustavo manuel', 1, 'https://hub.stullerlandcommunity.com/employees/2462.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('44a3a7d6-f57c-48d4-949a-04f90e622a5d', '3374', 'hernandez sanchez denis gabriel', 0, 'https://hub.stullerlandcommunity.com/employees/3374.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('44ccaf7e-7a67-4de9-a57c-1a6f817c4874', '2909', 'tepal tepal jorge jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2909.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('44e3df74-5198-4420-897f-dde34c4a0124', '3125', 'perez estrella carlos alfonso', 0, 'https://hub.stullerlandcommunity.com/employees/3125.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4526347a-bb26-4fa3-9c8b-b18d097c3e7d', '2978', 'santos cohuo daniel alexis', 0, 'https://hub.stullerlandcommunity.com/employees/2978.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('45c8d723-ef26-40ae-abd6-a88b8e049857', '385', 'gongora camara azael alexsander', 1, 'https://hub.stullerlandcommunity.com/employees/385.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('462afc31-3a42-43a7-b787-7b4efe494e12', '1742', 'figueroa gomez olga lilia', 1, 'https://hub.stullerlandcommunity.com/employees/1742.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4747fe52-a5c5-4921-9795-9d2ddaa67554', '2823', 'magaña poot filiberto', 0, 'https://hub.stullerlandcommunity.com/employees/2823.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('474fe615-145d-4744-a996-06956c6d7ff2', '273', 'canul koyoc wili ismael', 1, 'https://hub.stullerlandcommunity.com/employees/273.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('476744a7-2d96-45bb-aa6c-5e5b353115d3', '3267', 'ciau tah alan mauricio', 1, 'https://hub.stullerlandcommunity.com/employees/3267.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4769e5ab-6b83-47c9-9479-3464b186ec6f', '3028', 'can ek hector alejandro', 1, 'https://hub.stullerlandcommunity.com/employees/3028.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('479aef68-7e2a-4a38-a966-0a567cbfca6f', '3283', 'ku moo victor adalberto', 1, 'https://hub.stullerlandcommunity.com/employees/3283.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('47dee6e5-2ad8-499e-b538-d3e4cbaa93c7', '3424', 'uc balam guadalupe concepcion', 1, 'https://hub.stullerlandcommunity.com/employees/3424.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4871e1f5-6937-4428-b94d-18b868f242df', '3095', 'garcia brito anahi asuncion', 0, 'https://hub.stullerlandcommunity.com/employees/3095.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('48c80467-ee86-4e27-8fc5-481f116f2c57', '3440', 'ek chac nayle roseli', 1, 'https://hub.stullerlandcommunity.com/employees/3440.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('48d938a8-e1e1-48a3-bf01-e7c5038780fd', '3386', 'may chi jonny emanuel', 1, 'https://hub.stullerlandcommunity.com/employees/3386.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('48e2fa7d-ff39-49ee-9694-120a1583563e', '3343', 'solache trejo daniel abraham', 0, 'https://hub.stullerlandcommunity.com/employees/3343.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('495235b5-beb6-4a6f-b8c6-e469299fa3ab', '2481', 'tun vela maria fernanda', 0, 'https://hub.stullerlandcommunity.com/employees/2481.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4a2a5756-3d9b-4866-9187-475c732b1416', '3091', 'hau montejo rosario beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3091.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4a46c9bf-8235-48c9-8078-7214844bf6b5', '3123', 'cauich novelo jose sebastian', 0, 'https://hub.stullerlandcommunity.com/employees/3123.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4ac46ccb-d2c7-4b63-8d06-9ee6f52eea37', '3142', 'araujo uc harubi jaquelin', 0, 'https://hub.stullerlandcommunity.com/employees/3142.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4acbc792-dcd0-4d6d-9fbf-7248fd154ad0', '2876', 'mateos morales norma lorena', 0, 'https://hub.stullerlandcommunity.com/employees/2876.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4acf2cc7-093a-4187-9e32-f591773dd44f', '2022', 'medina aldana arlett eugenia', 1, 'https://hub.stullerlandcommunity.com/employees/2022.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4b2fd295-0883-4b62-aa3b-22901047ea2f', '3135', 'ek chan juan jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3135.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4bbf448b-1dcf-428d-8989-fc860f795806', '3076', 'canche canche maria paula', 1, 'https://hub.stullerlandcommunity.com/employees/3076.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4bdc891f-8613-4de0-9f35-e2505aeeaadc', '2890', 'canul noh guillermo alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/2890.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4bff9ae3-9389-4788-89d1-d00b305d2c67', '3333', 'heredia gonzalez guadalupe del socorro', 0, 'https://hub.stullerlandcommunity.com/employees/3333.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4c31579e-9e5f-45ba-b52e-0596e79ab7ab', '2681', 'hernandez palomino sofia', 0, 'https://hub.stullerlandcommunity.com/employees/2681.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4c6cfab5-2c32-43ef-8aa4-b673f14b5d56', '3305', 'montero sumarraga weiler ezequiel', 0, 'https://hub.stullerlandcommunity.com/employees/3305.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4c76e5eb-4ff3-4f73-b530-684fde91aaca', '3370', 'mena che jimmy gael', 1, 'https://hub.stullerlandcommunity.com/employees/3370.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4cb3e3c0-5ee8-4080-8713-a9648116766e', '2934', 'canche hinojosa maría rosalía', 0, 'https://hub.stullerlandcommunity.com/employees/2934.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4d021014-a55d-4959-a337-c16a455805ea', '2974', 'moo poot deyvi alexander', 0, 'https://hub.stullerlandcommunity.com/employees/2974.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4d3a205c-fe74-4184-9388-8f6c638e917d', '3310', 'vazquez soberanis cesar rolando', 0, 'https://hub.stullerlandcommunity.com/employees/3310.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4d43405d-1a9b-422e-b450-624fe94eb737', '3106', 'canul koyoc guillermo', 0, 'https://hub.stullerlandcommunity.com/employees/3106.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4d5347a1-66a1-4a1d-8136-8392910ebd43', '3431', 'millan mena angelica de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3431.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4d5b67ce-34a2-411d-9f08-3c83b0105ee1', '2710', 'pech poot maria peregrina', 1, 'https://hub.stullerlandcommunity.com/employees/2710.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4d64756f-51f7-414e-a1ce-2e4e2c422160', '2161', 'cauich poot julio zesar', 0, 'https://hub.stullerlandcommunity.com/employees/2161.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4dcfbb19-fd0a-4f6e-8fdf-e57db12a6617', '3155', 'juan diego angelina', 1, 'https://hub.stullerlandcommunity.com/employees/3155.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4e04f8a1-3e49-41ac-8eb4-cbcda624a43a', '2761', 'abrajan chigo dalila', 0, 'https://hub.stullerlandcommunity.com/employees/2761.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4e1952da-e34b-4cf9-8e72-b14a9ba91111', '3350', 'can hoil rangel lizandro', 1, 'https://hub.stullerlandcommunity.com/employees/3350.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4e3d25a8-f8f5-43ad-b665-a93efba307d0', '3072', 'hinojosa canche jesus alberto', 1, 'https://hub.stullerlandcommunity.com/employees/3072.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4ed5e327-fe40-49f3-a7a5-b4391f123377', '3246', 'canul poot geydi susana', 0, 'https://hub.stullerlandcommunity.com/employees/3246.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4f007f81-f275-4f12-81fb-8e7f193c867c', '2464', 'yam canche miguel angel', 1, 'https://hub.stullerlandcommunity.com/employees/2464.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('4f0d5ff6-d458-4a4a-80dc-2c98624cd0c8', '2986', 'quintal canche maria iraida', 0, 'https://hub.stullerlandcommunity.com/employees/2986.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('506f95e6-131b-4e98-b5c4-74c101d854dc', '3470', 'canche koyoc virginia margarita', 1, 'https://hub.stullerlandcommunity.com/employees/3470.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('50712315-d0f0-489a-83db-f58be922a3d3', '3458', 'yam ek angel alberto', 1, 'https://hub.stullerlandcommunity.com/employees/3458.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('508dde65-adce-46f1-b1d9-5e5df6e95560', '2424', 'cumi chim tehelma noemy', 0, 'https://hub.stullerlandcommunity.com/employees/2424.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('50ddcde5-b6ad-4b75-b0bd-592b7f7157c1', '1408', 'tun mena juan carlos', 1, 'https://hub.stullerlandcommunity.com/employees/1408.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5140145d-6af1-4d1b-8a2b-0a285461ab1e', '242', 'alperte garcia juan', 1, 'https://hub.stullerlandcommunity.com/employees/242.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5152cea6-c126-450c-a15c-8c9e9e3d603e', '3108', 'paredes baas marvy isabel', 1, 'https://hub.stullerlandcommunity.com/employees/3108.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5158f10c-53be-4690-9b5a-bfcd685b8e56', '3436', 'duarte tah judith andrea', 1, 'https://hub.stullerlandcommunity.com/employees/3436.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('515bac05-773d-416b-9e93-dba26648043a', '3004', 'koyoc chuc luisa maria de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3004.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('521b2e0b-35e4-410f-a4d8-019aa9d01bd2', '2913', 'varguez polanco carlos alexander', 0, 'https://hub.stullerlandcommunity.com/employees/2913.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('52728307-e983-4e9c-a74e-c2b50965b224', '2760', 'chi novelo yobana', 0, 'https://hub.stullerlandcommunity.com/employees/2760.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('52a17483-5d65-4756-a614-bcac850d4f27', '2106', 'lopez sanchez casandra', 0, 'https://hub.stullerlandcommunity.com/employees/2106.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('52b5eab2-4bf4-4886-bf4b-e8de10ebc9a2', '3236', 'maldonado cauich arely isamary', 0, 'https://hub.stullerlandcommunity.com/employees/3236.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('531333f8-0aa3-4963-8582-71f38a7fde72', '3298', 'poot ek yolanda beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3298.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('53273077-bc78-444e-a4bc-99a50577a4ec', '2765', 'peraza castro diego antonio', 0, 'https://hub.stullerlandcommunity.com/employees/2765.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5368e986-53af-4bb2-adcb-d73be1276728', '3304', 'baas piste thayli marisol', 0, 'https://hub.stullerlandcommunity.com/employees/3304.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('536d1a2f-36a1-42d2-8482-9a34ad8fc422', '3383', 'martinez ventura michelle stephani', 0, 'https://hub.stullerlandcommunity.com/employees/3383.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('53867f5e-3314-4fdf-8b43-25ac991b6b1d', '2664', 'chan aguilar mercedes asuncion', 0, 'https://hub.stullerlandcommunity.com/employees/2664.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('53873721-1ac1-48d8-8d9f-47dc2e2c2bc2', '2662', 'ek kantun jose gaspar', 0, 'https://hub.stullerlandcommunity.com/employees/2662.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('53f0955f-a0c6-4588-8ea7-b5a3afa7c9d5', '3015', 'ek ek rodrigo ismael', 1, 'https://hub.stullerlandcommunity.com/employees/3015.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('548b2927-374f-4010-ba25-c8724d98c346', '2879', 'lopez sanchez maria del rosario', 0, 'https://hub.stullerlandcommunity.com/employees/2879.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('54d2f180-dfb2-46b4-88a9-02a8683998c2', '3229', 'santana rodriguez antonio leonel', 0, 'https://hub.stullerlandcommunity.com/employees/3229.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('550041b0-3125-463f-8760-f6abd9916f5d', '2940', 'chuc ek jesus virgilio', 0, 'https://hub.stullerlandcommunity.com/employees/2940.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5547f457-d76d-4978-aeb1-d69528ac194e', '2971', 'martin chacon dafne lilian', 0, 'https://hub.stullerlandcommunity.com/employees/2971.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('554962a4-5e27-45db-b73e-111875255323', '3465', 'canul segovia alondra hirujary', 1, 'https://hub.stullerlandcommunity.com/employees/3465.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('55514c97-6155-4aeb-83f1-3204c5bdc8ab', '1725', 'nic medina jorge isaac', 0, 'https://hub.stullerlandcommunity.com/employees/1725.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('55df229a-4f85-4580-a849-655446b89a9f', '3271', 'tinal canul claudia', 0, 'https://hub.stullerlandcommunity.com/employees/3271.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('560249bb-1970-4b9f-9198-d34571d4666d', '2452', 'chacon tep karla carolina', 1, 'https://hub.stullerlandcommunity.com/employees/2452.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5610d1d6-a24b-4dba-be9b-3920321cfa13', '2996', 'martin dzib gilari johana', 0, 'https://hub.stullerlandcommunity.com/employees/2996.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('565d73f6-2d22-48bc-8ec2-95378c708a60', '2923', 'chacon varguez rosa maria', 0, 'https://hub.stullerlandcommunity.com/employees/2923.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5690e3dd-411f-4b25-b938-297499db423e', '2951', 'tinal poot maria reina azucena', 0, 'https://hub.stullerlandcommunity.com/employees/2951.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('569c8a31-da49-46e8-ad69-47a9ad4e5ae4', '308', 'escalante pool joel neftali', 1, 'https://hub.stullerlandcommunity.com/employees/308.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('56b68445-302b-4309-87a5-309d5d7ed1c1', '3402', 'may aguayo dianely viridiana', 1, 'https://hub.stullerlandcommunity.com/employees/3402.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('573e4ffc-6cba-4294-b5f0-61557ee0ffbd', '2843', 'canche chac victor oswaldo', 1, 'https://hub.stullerlandcommunity.com/employees/2843.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5752b695-6d54-43cc-bf6c-b6e80d0375b5', '2385', 'osorio benitez miguel angel', 1, 'https://hub.stullerlandcommunity.com/employees/2385.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5796dc7d-c02d-48cd-8243-23768c29df23', '3031', 'koyoc ek maria jesica', 0, 'https://hub.stullerlandcommunity.com/employees/3031.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('579b1fc3-53d6-43c8-9997-5d37d2a8e8cf', '2977', 'sosa damas diana laura', 0, 'https://hub.stullerlandcommunity.com/employees/2977.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('57a38079-e8c2-41bc-b011-30745ec2f2d3', '2065', 'ruiz centella rosa margarita', 1, 'https://hub.stullerlandcommunity.com/employees/2065.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('57b6e073-07fd-4a9c-89f4-2cff835cdbb9', '3406', 'balan arismendi astrid itzel', 1, 'https://hub.stullerlandcommunity.com/employees/3406.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('57cfbde3-685c-4867-a38d-3ddad8d62458', '3165', 'montes rosado pedro juda', 0, 'https://hub.stullerlandcommunity.com/employees/3165.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('57e2a29a-3fe6-4643-bdb5-9ca1cef0fc69', '3416', 'hoil canul edwin de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3416.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('57f5879b-6ece-4e54-b77f-dcf13bdb46f7', '1589', 'burgos millan luisa magdalena', 1, 'https://hub.stullerlandcommunity.com/employees/1589.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('583c64c0-e807-4fd0-8bf3-e69d398915ea', '2838', 'pat ku jose marcelo', 0, 'https://hub.stullerlandcommunity.com/employees/2838.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5889110e-91d2-4fc2-a9a2-c5b9dd75bf60', '2869', 'nahuat huchim nayely ofelia', 0, 'https://hub.stullerlandcommunity.com/employees/2869.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5916bf11-09a0-496d-bb82-7a3ae8da2d10', '3207', 'chacon albornoz yazmin teresita', 0, 'https://hub.stullerlandcommunity.com/employees/3207.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('593d9475-88da-43f9-acee-8d09d3fbd9f7', '2745', 'tinal canul inocencia', 0, 'https://hub.stullerlandcommunity.com/employees/2745.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('593fc2dc-6feb-47ec-b240-58625c9e44c5', '3411', 'cano vazquez gabriela alejandra', 1, 'https://hub.stullerlandcommunity.com/employees/3411.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5954c250-a103-485d-9d1d-5f1f0ac4306f', '2284', 'poot tinal angel rafael', 1, 'https://hub.stullerlandcommunity.com/employees/2284.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('59fa69ae-9b98-4da7-a09d-ae0db6dbc756', '3437', 'toloza tun jesus manuel', 1, 'https://hub.stullerlandcommunity.com/employees/3437.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5a034f59-7551-4484-aedd-4decad3877cf', '2872', 'may rodriguez karime isabel', 1, 'https://hub.stullerlandcommunity.com/employees/2872.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5a5676fb-6e49-463c-b623-bf993a0d53da', '2528', 'camara alvarez javier arturo', 0, 'https://hub.stullerlandcommunity.com/employees/2528.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5a9d3b53-3a8c-4991-b3ea-69ace1a9c4d2', '2715', 'cen can reina maricela', 0, 'https://hub.stullerlandcommunity.com/employees/2715.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5abc5eb1-0b48-4a12-bb8c-57ae061b99b0', '2858', 'loeza cauich evelyn yaneth', 0, 'https://hub.stullerlandcommunity.com/employees/2858.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5ac6d22a-6ae0-4aac-bfc0-37f5647baf13', '3080', 'quintal uuh maria amabilia', 0, 'https://hub.stullerlandcommunity.com/employees/3080.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5ac6f775-d089-4730-9967-c53c0b402bae', '3275', 'franco baas leydi del socorro', 0, 'https://hub.stullerlandcommunity.com/employees/3275.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5b10d9e5-1188-4384-b1eb-a2c0be8ac2dc', '2780', 'balam chuil ileana guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2780.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5b4e082d-93bb-4c52-af95-6a0608d6762a', '2861', 'pool poot heyserth ivett', 0, 'https://hub.stullerlandcommunity.com/employees/2861.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5b7173fc-80f2-41e5-9cc9-56659fa5981f', '2987', 'ocaña huchim liliana elizabeth', 0, 'https://hub.stullerlandcommunity.com/employees/2987.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5b88fdbb-4708-4d73-a7ac-020fa1b89300', '2844', 'chin chin maria victoria', 1, 'https://hub.stullerlandcommunity.com/employees/2844.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5b9e49c4-2d67-467c-91a9-3a04175bc36d', '3314', 'palomo mex mariana lizett', 1, 'https://hub.stullerlandcommunity.com/employees/3314.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5bce3289-e796-40b3-8bef-3b74c90f52cc', '3085', 'lopez chale genny beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3085.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5bece6fe-b5c8-4a79-ac34-925981e82b4e', '2753', 'chan may melisa alejandra', 0, 'https://hub.stullerlandcommunity.com/employees/2753.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5c3481e8-4567-4d46-8b23-9177a6a587b1', '280', 'moo ek ricardo roman', 0, 'https://hub.stullerlandcommunity.com/employees/280.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5c6c1d8f-e5b9-467c-a8af-584f20fe8cfe', '2351', 'varguez martin yesica areli', 1, 'https://hub.stullerlandcommunity.com/employees/2351.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5c6d19dc-b4c2-45a9-b17c-860ba24327af', '3446', 'escalante guzman yulyana guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3446.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5cf5fd3e-f926-43ed-85f0-cc3cdd4bf2bc', '3033', 'kuk quiab maria luisa', 1, 'https://hub.stullerlandcommunity.com/employees/3033.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5cf91bec-a17d-41b0-8214-b501a0d8c105', '2973', 'cauich cen stephania bernardina', 0, 'https://hub.stullerlandcommunity.com/employees/2973.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5d25792f-c65f-4c1a-b399-c81c89f4f0d1', '3284', 'sarabia sonda yaritza dexiree', 1, 'https://hub.stullerlandcommunity.com/employees/3284.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5d819c8a-1927-411f-8614-40778744f10b', '3016', 'can medina carlos gerardo', 1, 'https://hub.stullerlandcommunity.com/employees/3016.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5de318b6-94ca-4410-8e01-19a4cd81ab54', '489', 'gongora naal salim', 0, 'https://hub.stullerlandcommunity.com/employees/489.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5ded8021-66f3-46bf-888f-e1442b52ccf8', '3363', 'quintal martin maria gabriela', 1, 'https://hub.stullerlandcommunity.com/employees/3363.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5e009633-e13e-4d1d-90df-17299d5701a9', '3092', 'medina vazquez silvia beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3092.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5e0a1886-2a3d-4483-8e94-0e6b1aa24d35', '2803', 'tzec uc maria victoria', 0, 'https://hub.stullerlandcommunity.com/employees/2803.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5e72fdb0-a3cc-49c5-93f7-abeeb656e05c', '72', 'magaña ku luciana', 0, 'https://hub.stullerlandcommunity.com/employees/72.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5e956d36-1436-4d41-93c9-c657bab82808', '2671', 'martin dzul angel sebastian', 0, 'https://hub.stullerlandcommunity.com/employees/2671.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5e9f2355-d093-4a6e-961d-920666fd1ef9', '3253', 'may poot mariana ines', 1, 'https://hub.stullerlandcommunity.com/employees/3253.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5f046a20-e8e1-4b14-acb0-0dd8e1e8fdab', '3439', 'cua aguallo maria elena de la cruz', 0, 'https://hub.stullerlandcommunity.com/employees/3439.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5f445976-4ea4-414a-992e-b94136e5c0c2', '3417', 'rodriguez medina bryan', 0, 'https://hub.stullerlandcommunity.com/employees/3417.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5f6c40aa-1b6e-4726-b9bc-c74899537a0b', '2788', 'pat caamal jayson macrino', 1, 'https://hub.stullerlandcommunity.com/employees/2788.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5f81abfc-00cc-42c6-b534-8bbce92de7ef', '3469', 'tuz loeza hector eduardo', 1, 'https://hub.stullerlandcommunity.com/employees/3469.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('5ff88123-b648-4eba-9dbb-190d0ddc2734', '3377', 'pech uc rommel emanuel', 1, 'https://hub.stullerlandcommunity.com/employees/3377.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('604ba173-bcfd-4c0b-b018-7aeeee617451', '3131', 'pat herrera emili sayuri', 0, 'https://hub.stullerlandcommunity.com/employees/3131.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('61575237-e696-4549-a78f-e611ded9bbda', '2595', 'ku tinal maria sofia', 1, 'https://hub.stullerlandcommunity.com/employees/2595.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('619b4fe7-c4f8-4d5c-af7a-cd9b65862911', '2490', 'arismendi toh reyna karina', 1, 'https://hub.stullerlandcommunity.com/employees/2490.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('619dddf3-417f-4417-92ac-d7f9a42d2123', '3299', 'poot poot carlos adrian', 0, 'https://hub.stullerlandcommunity.com/employees/3299.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6266cde5-8088-488f-9703-651f510f445f', '2748', 'canche hu noe benjamin', 1, 'https://hub.stullerlandcommunity.com/employees/2748.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('62cd0f7a-aa12-4500-86f6-0d75bbd98f08', '3276', 'chan pech sandra yaneth', 1, 'https://hub.stullerlandcommunity.com/employees/3276.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('638e78cd-e0d3-4677-9bc9-e41afa244099', '2258', 'sanchez balcazar juan jose', 1, 'https://hub.stullerlandcommunity.com/employees/2258.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('63e6fb55-366c-41d8-8864-11d22c05fb49', '3218', 'flores iwit omar amado', 0, 'https://hub.stullerlandcommunity.com/employees/3218.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('63e94afc-a899-46cc-bef7-53baaf23295c', '2676', 'may gonzalez martha adriana', 1, 'https://hub.stullerlandcommunity.com/employees/2676.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('64e54f35-8e50-4c49-9ebc-a79181503adb', '2794', 'rosales magaña glenys roxana', 0, 'https://hub.stullerlandcommunity.com/employees/2794.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('652987b3-87fb-4a50-a791-46014f03f68a', '2888', 'casanova canul carla beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/2888.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('654fd853-bfde-4c1c-9c22-6a749fd765d5', '3096', 'chi lima claudia beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3096.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('65abcfe3-8e32-4b89-9ee3-465e8d5d79c6', '3047', 'pech hau haziel isai', 0, 'https://hub.stullerlandcommunity.com/employees/3047.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('65b6efa1-0bcf-4cbb-a5f7-1edb7037824c', '3387', 'benito guevara rigel humberto', 1, 'https://hub.stullerlandcommunity.com/employees/3387.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('65c137d4-0194-4dd2-9c40-3c12423bd261', '3251', 'rejon ramirez eduardo', 0, 'https://hub.stullerlandcommunity.com/employees/3251.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('65c4d00a-8b0b-422f-a00e-5cf9440e9d34', '1918', 'dzib ek carlos jesus', 1, 'https://hub.stullerlandcommunity.com/employees/1918.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('66341ba8-138c-4de2-a08a-b94d9c7984e0', '2783', 'canul cob teresa', 0, 'https://hub.stullerlandcommunity.com/employees/2783.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('66acbf5f-67a4-4365-9de4-f0c06a2d6c57', '3486', 'melchor victoriano eunice beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3486.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('66d88b7f-ac07-40ea-b6b3-87021d9132cf', '3134', 'moo tun luis gerardo', 0, 'https://hub.stullerlandcommunity.com/employees/3134.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('675156ab-b202-43fe-a766-a59287198235', '3323', 'carrillo aviles naomi noemi', 1, 'https://hub.stullerlandcommunity.com/employees/3323.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('675de7d4-f3a7-4709-b380-f9af36e377c0', '2757', 'baas cruz jael gerardo', 0, 'https://hub.stullerlandcommunity.com/employees/2757.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6773d6f6-ab06-42ab-bc57-be75ef295b01', '2482', 'canul cauich miguel eleazar', 1, 'https://hub.stullerlandcommunity.com/employees/2482.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('679bf24e-fbeb-45c8-b7f4-9b7aa8b05662', '332', 'palma castillo julio cesar', 1, 'https://hub.stullerlandcommunity.com/employees/332.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('679e74f9-6fcf-4310-a586-a8680b993455', '3485', 'may cetina angel adrian', 1, 'https://hub.stullerlandcommunity.com/employees/3485.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('684ee151-e09b-4933-b4d9-88f289460ff4', '2089', 'echeverria montejo lorena ileana', 1, 'https://hub.stullerlandcommunity.com/employees/2089.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('68856442-2cc4-41a2-bac7-04a35076fff9', '3327', 'canche koyoc eduardo alexsander', 1, 'https://hub.stullerlandcommunity.com/employees/3327.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('690b26e2-60be-43e1-9fa7-050daa2789a0', '2796', 'tamayo chi diana isela', 0, 'https://hub.stullerlandcommunity.com/employees/2796.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('690de8b0-14bf-4128-a77b-7e14daf1eb06', '3191', 'comi martin jairo miguel angel', 0, 'https://hub.stullerlandcommunity.com/employees/3191.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6a1b2013-fb53-4f85-b561-f441b4b616fe', '2743', 'sanchez naal jaberth ivan', 0, 'https://hub.stullerlandcommunity.com/employees/2743.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6a6325b3-357d-4e14-ad4f-f4bb36122008', '2919', 'polanco uc ana patricia', 0, 'https://hub.stullerlandcommunity.com/employees/2919.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6ac36f5a-574b-496f-8ff1-9f9bbfdb3c4f', '2724', 'koh colli maria alexandra', 1, 'https://hub.stullerlandcommunity.com/employees/2724.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6acb2ec9-14e6-4c61-9751-e403b5c4bbd5', '3045', 'tun pech joani yazmin', 1, 'https://hub.stullerlandcommunity.com/employees/3045.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6b205b74-238f-4950-ae62-cd37ed93bfc9', '3272', 'tun tun keily aracely', 0, 'https://hub.stullerlandcommunity.com/employees/3272.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6b2a4cf4-a991-446c-aa1a-26c8eca23ea7', '3140', 'poot cauich claudia yezenia', 1, 'https://hub.stullerlandcommunity.com/employees/3140.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6b529157-f361-49d3-8655-c36990a32503', '2862', 'uribe pech blanca estela', 0, 'https://hub.stullerlandcommunity.com/employees/2862.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6b5e6656-d35e-468e-b749-b813aef6d678', '463', 'may chan mario rene', 1, 'https://hub.stullerlandcommunity.com/employees/463.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6b793bb1-298f-4e44-9a43-3d79952f2996', '2895', 'rodriguez hernandez irma', 0, 'https://hub.stullerlandcommunity.com/employees/2895.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6b8c2a2c-a5c3-4421-9d9b-27d9d12d48b4', '3456', 'martinez chuil camila guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3456.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6c62811b-ae66-457a-ac2e-66a8bbf0bb73', '3003', 'uc molina mayra gabriela', 1, 'https://hub.stullerlandcommunity.com/employees/3003.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6c6647e8-71fd-470a-a465-db5d0ad6c779', '3225', 'dzib zuñiga heber ezequiel', 1, 'https://hub.stullerlandcommunity.com/employees/3225.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6c796159-2f44-4303-ae1a-455b608dac09', '3482', 'franco rodriguez orlando javier', 1, 'https://hub.stullerlandcommunity.com/employees/3482.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6cd9cba1-1ae8-4b75-9fcd-8ced6c18e552', '3344', 'keb caamal cinthia guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3344.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6d6df6ba-33c0-482a-bd61-fd1eec6c2ba0', '3295', 'catzin dzib pablo manuel', 0, 'https://hub.stullerlandcommunity.com/employees/3295.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6d71588e-419c-42df-960e-ba92baed22ba', '3410', 'laines velazquez misael', 0, 'https://hub.stullerlandcommunity.com/employees/3410.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6d937a4f-69de-40c5-909e-7727e9ea926b', '3058', 'bacab puch natalia carolina', 1, 'https://hub.stullerlandcommunity.com/employees/3058.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6da037f9-c31e-42e8-b20a-70201412cf14', '2512', 'sarabia canche gloria virginia', 0, 'https://hub.stullerlandcommunity.com/employees/2512.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6da11301-3665-441e-b18b-0410e18a4a40', '3116', 'koyoc uc dulce yazmin', 0, 'https://hub.stullerlandcommunity.com/employees/3116.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6da5e8ce-d3ad-46af-b94b-fe1d015f7afc', '1382', 'ruiz gomez georgina isabel', 0, 'https://hub.stullerlandcommunity.com/employees/1382.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6daf8e99-00f7-4af1-bcf0-ce33e6e8c5a8', '3445', 'parra zapata ximena marisol', 0, 'https://hub.stullerlandcommunity.com/employees/3445.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6e7e6c76-dc8a-4d90-a95c-bfc82de545a2', '3242', 'braga sanchez jose francisco', 0, 'https://hub.stullerlandcommunity.com/employees/3242.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6ea348ae-1442-4466-b709-c440d44d9ef1', '3138', 'cauich uc adriana esther', 1, 'https://hub.stullerlandcommunity.com/employees/3138.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6ece3e5d-97f2-44b2-97f7-419fb94ba861', '2726', 'rodriguez ek brando', 0, 'https://hub.stullerlandcommunity.com/employees/2726.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6ed7ea80-e9d8-49a7-8418-20692ebe12ca', '3428', 'noh ortiz asael', 1, 'https://hub.stullerlandcommunity.com/employees/3428.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6ee755e3-4e6f-4a6d-a3b4-82cf20480bc8', '1794', 'yama lopez gloria lorena', 0, 'https://hub.stullerlandcommunity.com/employees/1794.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('6f21da90-3f98-49b1-926c-ee77dd168a79', '2945', 'moo poot maria elena', 0, 'https://hub.stullerlandcommunity.com/employees/2945.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7032bc3d-b6d7-410e-9c3b-765347edfcfc', '2721', 'najera caballero eduardo adrian', 0, 'https://hub.stullerlandcommunity.com/employees/2721.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('703d8b83-063d-4b01-be53-a93deca45398', '3412', 'pool sima carlos manuel', 0, 'https://hub.stullerlandcommunity.com/employees/3412.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7052d38d-2940-4679-a969-817bbb490c5c', '2998', 'canul canul jaime francisco', 0, 'https://hub.stullerlandcommunity.com/employees/2998.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('70b97266-570d-4fd5-93cf-d17d6e9de4c3', '3159', 'caballero tzab ericka guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3159.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('710ce863-f7b4-4762-bc90-3bf47dbd54a4', '3001', 'ku hoil glesvy marisol', 0, 'https://hub.stullerlandcommunity.com/employees/3001.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('715180fe-e114-445f-8794-883dbecc3a70', '2240', 'euan ku jose eduardo', 0, 'https://hub.stullerlandcommunity.com/employees/2240.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('71804361-cde2-4dc9-8893-7470c2a89ba0', '3358', 'may martin jose edwin', 1, 'https://hub.stullerlandcommunity.com/employees/3358.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7193ef27-d49a-433c-8aeb-94f8a41e076a', '2663', 'koyoc canche bernardina del rosario', 0, 'https://hub.stullerlandcommunity.com/employees/2663.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('72319789-60c7-4ba1-a575-d5a4189ba2a1', '3089', 'alonzo cuxim maria beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3089.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('72c12a3d-bab1-4a20-b43a-217eadb4ae91', '2767', 'uicab uicab andrea margarita', 0, 'https://hub.stullerlandcommunity.com/employees/2767.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('72ef6a92-ce79-40fb-a0a1-969bdc2d40dc', '2709', 'moo ortiz maria guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2709.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('73f82f36-b66e-42eb-8aac-905cab9d2feb', '973', 'canul canto guillermo', 1, 'https://hub.stullerlandcommunity.com/employees/973.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7406e217-8cd8-497e-aadc-53e7eaa3ad4e', '2914', 'ku dzib mirna del socorro', 1, 'https://hub.stullerlandcommunity.com/employees/2914.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('74114de0-31d5-4e7f-85a6-04d3ae0ab35d', '3144', 'garcia canche monica beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3144.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('74e7b8de-a52f-4f62-96a5-23a93707201d', '1469', 'cetzal tun ricardo adrian', 1, 'https://hub.stullerlandcommunity.com/employees/1469.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('74ec02a2-a9b4-4269-ba39-b1c22dc73f26', '2797', 'ortiz torres anabel', 0, 'https://hub.stullerlandcommunity.com/employees/2797.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7583c6cb-a7d4-41c8-b570-1210fae464c3', '2908', 'chi ake maría arlene', 0, 'https://hub.stullerlandcommunity.com/employees/2908.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('75ae0c87-27d9-4eca-9b38-66db66761c4b', '3071', 'canul ek jose samuel', 1, 'https://hub.stullerlandcommunity.com/employees/3071.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7602703f-9f6c-4439-b0a8-00c0d2a79401', '2577', 'carvajal zetina stefi vianey', 0, 'https://hub.stullerlandcommunity.com/employees/2577.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('76c857cd-880d-48b9-b031-e21072dd1917', '578', 'haas pech martin', 0, 'https://hub.stullerlandcommunity.com/employees/578.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('773163a6-1434-465a-87b3-ad1a6f7ea8fd', '3262', 'ek pat maria florencia', 0, 'https://hub.stullerlandcommunity.com/employees/3262.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('776037f5-048e-4308-a750-7139300db0ac', '3248', 'can chan keila zaret', 1, 'https://hub.stullerlandcommunity.com/employees/3248.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('77abc497-b48b-42bb-a695-f663072eb992', '286', 'santiago chan rudy jesus', 1, 'https://hub.stullerlandcommunity.com/employees/286.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('77f4879d-70e1-4465-96e5-6e8fcf25958c', '3243', 'kantun pech jhovana anahi', 1, 'https://hub.stullerlandcommunity.com/employees/3243.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7838a053-1786-4c82-ae37-90e1e3b50b83', '324', 'medina negrete david', 1, 'https://hub.stullerlandcommunity.com/employees/324.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7882c33d-093e-48c5-9d3c-d8007cb8cd64', '3366', 'sanchez gonzalez jose pastor', 1, 'https://hub.stullerlandcommunity.com/employees/3366.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7913dca1-f658-48bd-b4dc-0fc2b98e0b08', '2773', 'villanueva polanco griselda esther', 0, 'https://hub.stullerlandcommunity.com/employees/2773.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('79176f23-24c9-4a34-bc3c-c0f708266afc', '2900', 'gomez polanco brianda arahil', 0, 'https://hub.stullerlandcommunity.com/employees/2900.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('791f4994-f296-4f2f-9c2a-424320dff1c0', '3463', 'iñiguez caro harold gabriel', 0, 'https://hub.stullerlandcommunity.com/employees/3463.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('79225122-5155-4f2d-8ee5-fc7495625704', '2750', 'mata sacramento karina lizeth', 0, 'https://hub.stullerlandcommunity.com/employees/2750.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('793cbc38-3498-4909-8239-2158b76053d5', '3039', 'herrera canul maria ines', 1, 'https://hub.stullerlandcommunity.com/employees/3039.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('793f1c98-3b52-4f0f-a88e-0251fe3a51f7', '2561', 'pech jimenez yuyibeth', 0, 'https://hub.stullerlandcommunity.com/employees/2561.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7990389d-5f82-4f62-9f73-a1f7af19ca79', '3130', 'pech cuxin miguel angel', 0, 'https://hub.stullerlandcommunity.com/employees/3130.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('79930841-c860-4330-9eb9-4ca1065bcaa3', '2885', 'ventura cruz maria alejandra', 0, 'https://hub.stullerlandcommunity.com/employees/2885.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('79a1ea8f-2c3c-4ba5-86d8-603eabc631d9', '3347', 'cua martin lilia del carmen', 1, 'https://hub.stullerlandcommunity.com/employees/3347.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7a84e123-f4bc-489d-b4df-2fd376ec10af', '2003', 'catzin cauich tiburcio', 1, 'https://hub.stullerlandcommunity.com/employees/2003.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7a9148f2-1177-4000-823a-895af9fa7973', '2840', 'chan chuc wilder alexander', 0, 'https://hub.stullerlandcommunity.com/employees/2840.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7ac22182-a1de-498f-82f1-ab20d43355e3', '2779', 'montejo vazquez manuel', 0, 'https://hub.stullerlandcommunity.com/employees/2779.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7ac57dd1-cac0-465e-bf6d-fd8bbdf82988', '2380', 'canul ortega jose feliciano', 1, 'https://hub.stullerlandcommunity.com/employees/2380.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7ae6c002-a4a9-4d50-bb01-3ded948490e5', '3315', 'canul poot tairi isabel', 1, 'https://hub.stullerlandcommunity.com/employees/3315.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7af8967a-bd77-4ed6-87a1-078aca68b21b', '3005', 'vergara campos andrea jaquelin', 1, 'https://hub.stullerlandcommunity.com/employees/3005.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7c03750a-eb17-449d-b92b-d1044f13e183', '1920', 'chavez nieves tania josefina', 1, 'https://hub.stullerlandcommunity.com/employees/1920.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7c319769-5f4b-4b0d-bdf3-f2ee665043d4', '1772', 'chac molina juan bautista', 0, 'https://hub.stullerlandcommunity.com/employees/1772.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7c9e3af7-2def-40b7-ba45-b4466b90154a', '3474', 'valenzuela ocampo juan', 1, 'https://hub.stullerlandcommunity.com/employees/3474.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7cef707c-c9e2-4774-85ed-a7a607e5fb67', '3369', 'coba manrique angela esther', 0, 'https://hub.stullerlandcommunity.com/employees/3369.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7d156e5c-6afd-477f-92bb-6ae9e5948860', '2746', 'varguez flores shirly ariane', 0, 'https://hub.stullerlandcommunity.com/employees/2746.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7d32f6f3-753b-4ccf-820d-d786b0129fff', '2975', 'nah palacios jorge emmanuel', 0, 'https://hub.stullerlandcommunity.com/employees/2975.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7d4bfc43-fef1-4390-8480-48761ffe0849', '2939', 'martin canto brenda ayde', 0, 'https://hub.stullerlandcommunity.com/employees/2939.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7d840a41-f6c7-4589-9076-01c19e825f9e', '3259', 'martin paredes merly del socorro', 0, 'https://hub.stullerlandcommunity.com/employees/3259.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7e6bfbe2-8fab-421f-b3ff-aeecade63fe4', '3422', 'mendoza alvarez kiara estefania', 1, 'https://hub.stullerlandcommunity.com/employees/3422.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7ef86093-1f25-4dff-8e98-676782f8927e', '3073', 'pasos ferreyro gerson jahzeel', 1, 'https://hub.stullerlandcommunity.com/employees/3073.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7f88e61b-1b24-44bb-adbb-9a5915bb1bf9', '3113', 'landero perez abigail', 0, 'https://hub.stullerlandcommunity.com/employees/3113.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7fac9b6f-704c-4227-b9f7-396781d6afba', '2669', 'pacheco magaña reina yazmin', 0, 'https://hub.stullerlandcommunity.com/employees/2669.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7fb672b9-45ab-41b5-89a4-e0245188fa3b', '3260', 'canche may monica beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3260.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('7fb7b256-caa0-48ed-9980-9195c1934c63', '470', 'lopez guillermo alexander', 0, 'https://hub.stullerlandcommunity.com/employees/470.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8014f009-744a-479c-887d-878847763c01', '3288', 'chale pool lesly guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3288.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('805b744e-ebcf-46ca-aee5-a1c092ba0e18', '3468', 'gongora cocom amairani guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3468.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('80ae67e7-f360-4280-8e0d-db8d665a093e', '3068', 'sulu che mariana guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3068.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('816c446c-dee8-4a96-adbb-5992234f33ea', '3426', 'ojeda dzul maria graciela', 0, 'https://hub.stullerlandcommunity.com/employees/3426.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('822c6b9b-9429-477e-904a-7da8c1eaaaf8', '3345', 'borgez dzul jose alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3345.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('82406d90-217f-4be8-972f-5b6a17238848', '2181', 'canul pacheco mirza evangelina', 1, 'https://hub.stullerlandcommunity.com/employees/2181.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL);
INSERT INTO `auth_users` (`id`, `code`, `name`, `is_active`, `avatar_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('8282ffb4-0f3a-4516-912b-4db3de26c193', '2863', 'loeza cauich cesar orlando', 0, 'https://hub.stullerlandcommunity.com/employees/2863.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('83abb28b-3243-4cf8-bfca-fcd714fb99ad', '2418', 'castilla pacheco kevin alexis', 0, 'https://hub.stullerlandcommunity.com/employees/2418.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('84125917-9abd-43ee-95c8-f0c2cc94a47c', '3401', 'magaña lopez irene alejandra', 0, 'https://hub.stullerlandcommunity.com/employees/3401.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('84335bd6-178e-4908-a2b8-5ce51d038280', '3322', 'canche novelo andrea isabel', 1, 'https://hub.stullerlandcommunity.com/employees/3322.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8445ecbd-4c60-4f3d-8f00-c3afd7d361b3', '3447', 'alayera dzib ernesto alberto', 0, 'https://hub.stullerlandcommunity.com/employees/3447.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('84675d07-9e19-4799-9804-fc3ba07561b3', '3019', 'narvaez cruz juliza victoria', 0, 'https://hub.stullerlandcommunity.com/employees/3019.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('846e8406-273b-495c-842a-bb44029b11a3', '3302', 'tinal flores maria beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3302.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('848af907-3925-4527-a3dc-31e1aeeded8a', '3172', 'eguan ramirez karen amayrany', 0, 'https://hub.stullerlandcommunity.com/employees/3172.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('84923d7a-b45c-4b9b-93ec-40f489b02d68', '1675', 'magaña tzec maria alicia', 0, 'https://hub.stullerlandcommunity.com/employees/1675.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('85b03ff1-8f4c-4472-b44f-735ce0d9c580', '3087', 'diaz manzano melanie carolina', 0, 'https://hub.stullerlandcommunity.com/employees/3087.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8611236d-7f92-411e-8914-529734c2bada', '2471', 'gamboa andrade juan carlos', 1, 'https://hub.stullerlandcommunity.com/employees/2471.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8645abc4-ffc5-43a6-924e-6edb1b6b82e6', '2303', 'flores tzuc selmy alondra', 1, 'https://hub.stullerlandcommunity.com/employees/2303.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8657cf71-874c-438e-99d6-64e59fec1d80', '2964', 'castro estrella jose gerardo', 1, 'https://hub.stullerlandcommunity.com/employees/2964.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('866c179c-ab7b-4994-8c66-3194a4d20ec9', '2991', 'gonzalez flores jorge eduardo', 1, 'https://hub.stullerlandcommunity.com/employees/2991.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('867cc6c1-947f-498e-bae0-3930b518665b', '1864', 'canul cuxin ariel de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/1864.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8684f00c-811c-41c2-9f88-f831712e503c', '1303', 'yam hernandez alberto', 1, 'https://hub.stullerlandcommunity.com/employees/1303.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('86866006-4dd2-4fb0-a6ce-c78216d50aaa', '3230', 'caamal euan yessica azucena', 1, 'https://hub.stullerlandcommunity.com/employees/3230.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('869c0469-9797-4c98-aae6-d0168a0ee204', '2696', 'canche pool graciela magdalena', 1, 'https://hub.stullerlandcommunity.com/employees/2696.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('86c72d62-aaad-417e-a160-14dde01f062a', '3226', 'castro poot catherine guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3226.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('86facdcd-c136-4e60-b0d7-6dd1a3b32acc', '3337', 'moo cua ericka noemi', 1, 'https://hub.stullerlandcommunity.com/employees/3337.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8710f79b-7eca-42d1-bd83-4a3cf23c0935', '2024', 'celis ruiz luis manuel', 1, 'https://hub.stullerlandcommunity.com/employees/2024.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('871113dd-2cba-4750-a40a-6ae4be4c30ae', '2901', 'cuxim lopez mariela yazmin', 0, 'https://hub.stullerlandcommunity.com/employees/2901.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('872d1723-7672-46be-ad23-d605b59f6c8e', '3046', 'montejo vazquez jesus fortunato', 1, 'https://hub.stullerlandcommunity.com/employees/3046.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('874f0f01-6378-42f0-aeae-8a2bf954573a', '3043', 'cime ricalde felipe jafet', 0, 'https://hub.stullerlandcommunity.com/employees/3043.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('88c6dbe0-4942-4b5e-b223-139e098d2317', '3233', 'osorio benitez leticia maria', 1, 'https://hub.stullerlandcommunity.com/employees/3233.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('89686700-3ad2-4100-b1aa-25c0b4656586', '3483', 'alejos chan angel abraham', 1, 'https://hub.stullerlandcommunity.com/employees/3483.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('899b0ce8-f4b3-442e-aedf-0fa2aa4daaf9', '2897', 'castillo sosa maritssa jacqueline', 1, 'https://hub.stullerlandcommunity.com/employees/2897.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('89e39d30-75a4-40df-9211-aecb8be7af7a', '2949', 'kantun canche josé idelfonso', 0, 'https://hub.stullerlandcommunity.com/employees/2949.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8a44f063-edec-40cc-8f86-fda92d6e5116', '2787', 'ek tun elwin jose', 1, 'https://hub.stullerlandcommunity.com/employees/2787.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8a6c67d1-817a-4f11-899c-640e1ba553e1', '3021', 'cajun trejo itzel alejandra', 0, 'https://hub.stullerlandcommunity.com/employees/3021.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8a9afe1f-2292-4298-bf92-c741ef3231af', '3466', 'canul chuc luis daniel', 1, 'https://hub.stullerlandcommunity.com/employees/3466.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8aab3dcd-c78a-42be-ac9e-3cc3d6ef1748', '3338', 'manzon chac maria elizabeth', 1, 'https://hub.stullerlandcommunity.com/employees/3338.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8ab93f3a-4bb7-4b52-a77f-1144401b4645', '3362', 'canche borges luis fernando', 1, 'https://hub.stullerlandcommunity.com/employees/3362.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8b398d50-efa8-43ea-a454-70e216f7071f', '3132', 'cab guillermo emmanuel eduardo', 0, 'https://hub.stullerlandcommunity.com/employees/3132.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8c211eb5-38bb-42d8-8339-df6534e1731f', '3421', 'espinola diaz ricardo antonio', 1, 'https://hub.stullerlandcommunity.com/employees/3421.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8c2b8768-5c96-4f8c-90bc-43fadb6a09b4', '3342', 'medina doporto luis eduardo', 1, 'https://hub.stullerlandcommunity.com/employees/3342.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8c950309-42df-4e78-82e6-eba96af14fdd', '3133', 'solis gonzalez luis gerardo', 0, 'https://hub.stullerlandcommunity.com/employees/3133.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8cdb154d-38ae-4048-a230-8444acc93470', '3472', 'de la cruz romero aminadab javier', 1, 'https://hub.stullerlandcommunity.com/employees/3472.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8cde3da9-112a-456e-a9ae-b3d5ff0ae8a6', '2323', 'ek cocom genny marycruz', 0, 'https://hub.stullerlandcommunity.com/employees/2323.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8d250f56-91ea-48ba-81f3-5f91497d6b95', '2256', 'contreras cardenas maria jose', 0, 'https://hub.stullerlandcommunity.com/employees/2256.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8d3f5e17-5584-411c-a622-7f3a2797e8ec', '2339', 'cocom pech edgar humberto', 1, 'https://hub.stullerlandcommunity.com/employees/2339.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8d4e9a8c-6817-4ee8-a57f-ed7c3e78a465', '2576', 'may martin jose ysrael', 1, 'https://hub.stullerlandcommunity.com/employees/2576.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8dc7f5b5-badd-4ae6-a0c9-bf33bcdb407c', '3205', 'garcia vazquez miguel', 1, 'https://hub.stullerlandcommunity.com/employees/3205.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8dce79e7-8bf5-4e36-ba1e-8c72807dcb2c', '2503', 'canul pech jesus romario', 0, 'https://hub.stullerlandcommunity.com/employees/2503.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8ddb3636-c625-4a95-9a47-ecd6f8216499', '3147', 'canto mena brenda nayeli', 1, 'https://hub.stullerlandcommunity.com/employees/3147.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8e0af4db-9a46-4163-b08a-92af1173a61c', '2831', 'quintal canche norma patricia', 0, 'https://hub.stullerlandcommunity.com/employees/2831.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8e10994f-5f44-4c3d-82cc-0cc56b1d9c6e', '3331', 'castellanos tec angel gabriel', 1, 'https://hub.stullerlandcommunity.com/employees/3331.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8e4124a1-a197-4c4d-ba09-4fee56219481', '2966', 'campos sanchez herbert manuel', 0, 'https://hub.stullerlandcommunity.com/employees/2966.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8e6e8aa7-6474-43b2-8c6a-edb7e08005c6', '3164', 'rosado argaez maria vanessa', 0, 'https://hub.stullerlandcommunity.com/employees/3164.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8efbaca8-b305-4a00-abf8-42bdd9212533', '3318', 'martin martin landy paola', 1, 'https://hub.stullerlandcommunity.com/employees/3318.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8f1d3959-da16-4506-a364-c8dc51ce2881', '3139', 'moo medina vicente', 0, 'https://hub.stullerlandcommunity.com/employees/3139.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8f2c6092-3d73-4aed-9f71-697312ff2094', '2476', 'cohuo ku wilbert julian', 0, 'https://hub.stullerlandcommunity.com/employees/2476.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8f3bbac8-3292-4e02-9087-61193fa31c93', '3471', 'alvarado tejeda david alberto', 1, 'https://hub.stullerlandcommunity.com/employees/3471.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8f419746-5834-4b5c-bcaa-d8dc9f7e1d9f', '2678', 'novelo canche irene del socorro', 1, 'https://hub.stullerlandcommunity.com/employees/2678.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8fbeb66f-77b5-428b-a9fa-94998c57ac33', '3389', 'pech cua angel elian', 1, 'https://hub.stullerlandcommunity.com/employees/3389.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('8fc968ed-1b53-4a83-a876-5b3a9fc96bae', '2995', 'ojeda madera josue de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2995.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('902fdadc-f08c-4e71-9d2d-a2343348eaea', '3476', 'balam ku yuridia yasmin', 1, 'https://hub.stullerlandcommunity.com/employees/3476.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('90b8da3b-2efb-4330-8e5f-eacfe002b3e8', '2754', 'may pacheco vasty catalina', 0, 'https://hub.stullerlandcommunity.com/employees/2754.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('90ee028a-2fe0-4384-a09c-561c4f509e50', '2193', 'valdivia canche nelly del socorro', 0, 'https://hub.stullerlandcommunity.com/employees/2193.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('91019ae6-3d50-413e-b89b-658f5ac754b3', '3093', 'cuitun quintal norma rebeca', 0, 'https://hub.stullerlandcommunity.com/employees/3093.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9122c0f2-9f81-4a7d-aefa-588e691c816d', '3063', 'uicab kantun maricruz', 0, 'https://hub.stullerlandcommunity.com/employees/3063.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9142fa68-d012-4f40-a986-df61141babd4', '3100', 'alcudia diaz carlos antonio', 0, 'https://hub.stullerlandcommunity.com/employees/3100.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('91e06b2d-3f1a-4c18-bfe0-fbd51c1b1aa1', '203', 'dorantes esquivel raul alberto', 1, 'https://hub.stullerlandcommunity.com/employees/203.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('91e4116c-258b-4251-86d8-fe621a8dd2cf', '3244', 'coba manrique ximena hidekel', 1, 'https://hub.stullerlandcommunity.com/employees/3244.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('92add2f5-892a-421f-98a8-b55e846faecf', '2654', 'piste piste fanny cruz', 0, 'https://hub.stullerlandcommunity.com/employees/2654.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('92b100d8-6376-4791-99e8-85422f180465', '3032', 'canul canul glendi alejandra', 1, 'https://hub.stullerlandcommunity.com/employees/3032.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('92b2464d-cb9a-48e7-b266-225bec0bdaf4', '3020', 'ruiz perez angel isidro', 0, 'https://hub.stullerlandcommunity.com/employees/3020.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('92c29da0-8308-466a-aa9c-04792ec2af64', '3277', 'borges gutierrez alondra guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3277.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('92e90d23-5f53-4af3-82b3-be746e8b3c02', '3141', 'jauriga perez jessamy goretti', 0, 'https://hub.stullerlandcommunity.com/employees/3141.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9343c043-bf14-48a5-ba8d-c3e10dbb4f30', '3114', 'tello ayil deivi israel', 0, 'https://hub.stullerlandcommunity.com/employees/3114.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('93f88daf-7df4-4a67-a48b-801218f29391', '3124', 'cua ek adeliana', 0, 'https://hub.stullerlandcommunity.com/employees/3124.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('93fd882f-0ff0-4071-9683-3c4fc7b4f6d4', '2771', 'cardos ku imogene de la luz', 0, 'https://hub.stullerlandcommunity.com/employees/2771.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('940e29b3-6f7f-4c63-9b47-36989474d31e', '3250', 'valdez rodriguez genaro alberto', 0, 'https://hub.stullerlandcommunity.com/employees/3250.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('945ff1ff-1b6c-43d7-897e-fa88da5c1d81', '1914', 'cauich koh liber esteban', 0, 'https://hub.stullerlandcommunity.com/employees/1914.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('947cc9b0-1e56-4200-be1a-78563524b1b3', '86', 'ortiz salas maria amada', 0, 'https://hub.stullerlandcommunity.com/employees/86.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('94f0fc7b-398e-42f9-8138-ed4f495a0d33', '3204', 'dzul polanco maria isandra', 0, 'https://hub.stullerlandcommunity.com/employees/3204.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('954c384f-cff5-4e7c-bd6b-68b167e24b73', '1948', 'ortega canche jose adan', 0, 'https://hub.stullerlandcommunity.com/employees/1948.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('95ad9ae2-0cb6-4ebc-bb3f-4cc2799ccca4', '3157', 'lopez pech liliana beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3157.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('960ca667-c9e6-4907-aa8f-fbafb2a47eb3', '3376', 'palmero vargas freddy arian', 0, 'https://hub.stullerlandcommunity.com/employees/3376.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9614ad9e-db8d-4cb9-a96b-474ae50f06f6', '2707', 'canul ek rubi catherine', 0, 'https://hub.stullerlandcommunity.com/employees/2707.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('964d2005-176c-4e9a-a4d8-d2d7ae6bfe71', '2928', 'chim ake francisco enrique', 0, 'https://hub.stullerlandcommunity.com/employees/2928.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('96b376d4-8202-4b0f-98ca-9be024cd5625', '3223', 'uicab canche maria adriana', 1, 'https://hub.stullerlandcommunity.com/employees/3223.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('971aa70d-f0f8-4a4b-9b16-c4a6359e9013', '3186', 'poot hinojosa hector javier', 0, 'https://hub.stullerlandcommunity.com/employees/3186.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('972bf3c9-64e4-490b-800b-01f9caf3b85b', '2776', 'palma quijano yuselmi magdalena', 0, 'https://hub.stullerlandcommunity.com/employees/2776.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('97431ec2-2a64-45cc-b042-2a0211bb2367', '2920', 'tzec tzuc adver salatiel', 0, 'https://hub.stullerlandcommunity.com/employees/2920.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('977a4e07-ac8c-41e9-bac9-3800a921b4dd', '499', 'puch tziu carlos francisco', 1, 'https://hub.stullerlandcommunity.com/employees/499.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('977cc2f5-4304-4bc5-b15b-a9f37adbdbba', '2970', 'canche ek alex alberto', 1, 'https://hub.stullerlandcommunity.com/employees/2970.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('97a298e5-5b95-46f1-b44d-4d54bcf9962d', '3203', 'cauich martin angelica yazmin', 0, 'https://hub.stullerlandcommunity.com/employees/3203.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('97d76569-8a37-4089-b7a1-f287ddcb664a', '2918', 'alonzo balam valeria concepcion', 1, 'https://hub.stullerlandcommunity.com/employees/2918.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('985b2cc1-9bbe-4fc0-b57a-36a0824ecde2', '2625', 'cumi chim jose abraham', 1, 'https://hub.stullerlandcommunity.com/employees/2625.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('987280ee-cae8-4fd1-b40d-799cd7057aca', '3166', 'may hinojosa maria nelsy', 0, 'https://hub.stullerlandcommunity.com/employees/3166.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9913a5a1-a3ea-493d-aa10-a9ee5fa1b35d', '2037', 'may balam saidi guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2037.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('994c503a-d0ee-4bcf-a67c-f1b728bfb6fe', '2925', 'baas pat jimena guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2925.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('99d1a589-b7aa-4df5-bf6d-3e40f49e446c', '2120', 'pech mex citlali yussefi', 1, 'https://hub.stullerlandcommunity.com/employees/2120.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('99d375ec-89fb-4172-8c5e-3a0fa26162df', '3067', 'medina lopez daniel enrique', 1, 'https://hub.stullerlandcommunity.com/employees/3067.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('99ecd527-5914-47f6-9d92-4d9c8b43b321', '3381', 'galindo de la o luis alberto', 0, 'https://hub.stullerlandcommunity.com/employees/3381.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9a0f0283-9c40-41d1-88a5-58589050c224', '3101', 'canche koyoc jose francisco', 0, 'https://hub.stullerlandcommunity.com/employees/3101.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9a71cada-0473-4a4d-8113-5bcf9a732c7a', '2798', 'nieves baas paula jhanet', 1, 'https://hub.stullerlandcommunity.com/employees/2798.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9a8b5c1a-eb38-44f8-bb2e-e725f8e8ed63', '2938', 'tun ceballos maria adela', 0, 'https://hub.stullerlandcommunity.com/employees/2938.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9ac54304-8452-4e4c-b112-e897608a9c81', '3360', 'canul ojeda pedro damian', 0, 'https://hub.stullerlandcommunity.com/employees/3360.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9af40a1f-7e6e-48ad-887b-697c6420dc87', '3118', 'gonzalez fabbry fabiola', 1, 'https://hub.stullerlandcommunity.com/employees/3118.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9b899fc2-6cee-45d2-b5b0-c0f068baee60', '2539', 'pech nah mario jafet', 1, 'https://hub.stullerlandcommunity.com/employees/2539.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9b95a8d5-39db-4a6c-90fc-1cbe1427e5db', '1748', 'martin poot walter abelardo', 1, 'https://hub.stullerlandcommunity.com/employees/1748.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9bacf603-4f78-478b-bdfa-6eeb07ca0c13', '3290', 'duarte tzuc pablo eduardo', 0, 'https://hub.stullerlandcommunity.com/employees/3290.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9bb4e44a-4511-4b80-9290-20efde4addcb', '3261', 'ek uc arely nicthe ha', 1, 'https://hub.stullerlandcommunity.com/employees/3261.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9c3f36e7-9c4f-47b1-9ca0-bdb12ede41ee', '2667', 'martin poot jair ulises', 1, 'https://hub.stullerlandcommunity.com/employees/2667.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9c41f5ad-c2ee-41cd-a7f3-0b2be9ffa132', '1067', 'sanchez kantun maria olivia', 1, 'https://hub.stullerlandcommunity.com/employees/1067.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9cfda394-b5a9-45a9-b142-50a21a4a87f1', '3382', 'garcia alvarado luis alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3382.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9d0a66e7-5210-4b3b-8d71-faca26af62c1', '2892', 'aviles chavez justo pastor', 0, 'https://hub.stullerlandcommunity.com/employees/2892.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9d36aa2c-22e7-4909-b86f-f6cf12505ceb', '1316', 'cetzal tun francisco onesimo', 1, 'https://hub.stullerlandcommunity.com/employees/1316.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9e03f4a6-8f01-421e-af02-53d7e56a876f', '2356', 'morales alejo vicente', 1, 'https://hub.stullerlandcommunity.com/employees/2356.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9e102110-414e-46bf-ac90-2d64d26fee22', '2622', 'canul canto jose angel', 1, 'https://hub.stullerlandcommunity.com/employees/2622.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9e9edf1d-941c-4358-81dc-229be40b2212', '846', 'may gallegos diony andres', 1, 'https://hub.stullerlandcommunity.com/employees/846.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('9f672abf-2d6a-4c2d-a522-17a609af9f10', '2932', 'barrios lopez yaqueline', 0, 'https://hub.stullerlandcommunity.com/employees/2932.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a0067cc8-6e17-4c15-b5db-66490deb87cc', '2947', 'poot hernandez david josefat', 0, 'https://hub.stullerlandcommunity.com/employees/2947.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a02b0141-565c-4ccc-bb27-027c54c52dff', '3060', 'koyoc chac blanca beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3060.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a02ebee5-a909-4651-8eb8-d753f7085f84', '2814', 'pech poot wendy daniela', 1, 'https://hub.stullerlandcommunity.com/employees/2814.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a032c024-a19b-4052-9839-924f27158898', '2826', 'alvarez moo angelica', 1, 'https://hub.stullerlandcommunity.com/employees/2826.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a0db118c-fd0f-4550-81f0-ae2aa584e661', '3152', 'sanchez cantarell jose lorenzo', 0, 'https://hub.stullerlandcommunity.com/employees/3152.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a172a860-760f-477e-a7fd-f972fad55b8e', '2903', 'novelo poot maria higinia asuncion', 1, 'https://hub.stullerlandcommunity.com/employees/2903.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a1e3596d-d72e-4bab-b2dd-6718272cc4a9', '3423', 'lopez ansotegui ana elisa', 0, 'https://hub.stullerlandcommunity.com/employees/3423.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a24d48b7-afa3-4e23-bc2c-ecb7a5438812', '3301', 'may madera fatima del rosario', 1, 'https://hub.stullerlandcommunity.com/employees/3301.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a2c5d43b-8835-49b0-b4f4-eb554eaa9362', '3079', 'martin cetz magda liliana', 0, 'https://hub.stullerlandcommunity.com/employees/3079.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a2c85575-0c01-4c87-9ca2-f539344bd77a', '3044', 'pech koyoc fabian de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3044.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a317d063-7ad2-487f-aeaa-9d4bb269d403', '2884', 'herrera rosado maría isabel', 1, 'https://hub.stullerlandcommunity.com/employees/2884.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a3289118-c726-462f-8879-16d1ba0c5b41', '2734', 'caamal chi maria leticia', 0, 'https://hub.stullerlandcommunity.com/employees/2734.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a32e55f0-6fca-4ada-91fa-6775c8686c35', '3011', 'xool can sherlyn jaziel', 1, 'https://hub.stullerlandcommunity.com/employees/3011.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a34935b8-d0ac-4b32-a2d4-69a49e1e434f', '2942', 'tinal canche braulia maria', 0, 'https://hub.stullerlandcommunity.com/employees/2942.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a3852805-8462-43fd-b2d9-82534f0ae08c', '3231', 'torres couoh rey bladimir', 0, 'https://hub.stullerlandcommunity.com/employees/3231.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a38d0813-8dbd-43fd-945c-7d87ed775710', '2668', 'canul pech yanina beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/2668.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a39d393e-3062-4f96-8785-a532f4a76e49', '3007', 'canul ek maria rosa', 1, 'https://hub.stullerlandcommunity.com/employees/3007.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a3bfd7be-b9c0-48f0-b172-630895252308', '2992', 'cauich castro barbara yazmin', 1, 'https://hub.stullerlandcommunity.com/employees/2992.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a3cdaab8-749a-439b-8a63-afaaf3fc61ea', '2808', 'chan canul luceli beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/2808.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a46d4997-7c03-4226-b2a3-9db35f8d75aa', '2733', 'varguez pech nidia marisol', 1, 'https://hub.stullerlandcommunity.com/employees/2733.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a48524f6-721d-4c67-9bb9-b4a7df593bf0', '2751', 'solis aviles karla', 0, 'https://hub.stullerlandcommunity.com/employees/2751.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a4c2966e-00b4-4ae6-874e-de09ca52dd98', '2834', 'sucula poot martha patricia', 0, 'https://hub.stullerlandcommunity.com/employees/2834.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a4cddcba-cb4e-422d-a483-f4262c172bc3', '2703', 'martin poot jeison mauricio', 1, 'https://hub.stullerlandcommunity.com/employees/2703.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a4eae1df-c862-4d6e-a5d0-881920bc4c03', '3348', 'flota uribe angel alberto', 0, 'https://hub.stullerlandcommunity.com/employees/3348.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a530bbbe-6029-4063-bed7-5b23e1a037ab', '2722', 'canche koyoc candy arely', 1, 'https://hub.stullerlandcommunity.com/employees/2722.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a55b973e-9a4e-42a5-a779-9231e5c168d1', '2983', 'chac baas clara vanesa', 0, 'https://hub.stullerlandcommunity.com/employees/2983.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a567428a-fc06-4754-a183-0000a02eedd9', '3441', 'herrera poot gamaliel', 1, 'https://hub.stullerlandcommunity.com/employees/3441.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a56dea46-afbe-48e4-8329-4c1363de6563', '3151', 'ramirez cortes irene', 0, 'https://hub.stullerlandcommunity.com/employees/3151.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a58ddb69-a007-4338-a9a6-fc8054a1f372', '1527', 'gomez juarez jose luis', 1, 'https://hub.stullerlandcommunity.com/employees/1527.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a5adff93-7f40-4596-a006-a1bdfd4b95d1', '3194', 'pacheco nah lourdes margarita', 1, 'https://hub.stullerlandcommunity.com/employees/3194.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a5de6dc1-bfd4-44ef-85ab-e5dfbb0c3ac0', '3409', 'curmina rojas cobe bryan', 1, 'https://hub.stullerlandcommunity.com/employees/3409.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a610a742-994f-4118-bf6b-eaf666034c52', '2891', 'chac chac luis candelario', 0, 'https://hub.stullerlandcommunity.com/employees/2891.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a6111c62-d722-4b90-8aa2-97a625748c00', '2638', 'canche chac ileana', 1, 'https://hub.stullerlandcommunity.com/employees/2638.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a6c6a711-9a62-4e62-b831-b23321d29148', '2673', 'pech chuc jose abraham', 1, 'https://hub.stullerlandcommunity.com/employees/2673.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a6fec954-5d08-4d75-ac61-d817b5e7e6e5', '452', 'ojeda cuxin rosalia candelaria', 1, 'https://hub.stullerlandcommunity.com/employees/452.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a7553208-98ba-4d24-8f48-b1f943d695e2', '3217', 'hernandez chan francisco jose', 0, 'https://hub.stullerlandcommunity.com/employees/3217.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a77c4a51-0f62-4d8c-9279-628745940a64', '2820', 'marin martin joel adrian', 1, 'https://hub.stullerlandcommunity.com/employees/2820.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a7c81da9-234a-4e3f-b728-6a7bcd89b063', '1965', 'estevez pacheco silvia guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/1965.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a86fcd6b-6202-4ab4-b570-bab6ca1ed80e', '3330', 'canche hinojosa florian', 0, 'https://hub.stullerlandcommunity.com/employees/3330.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a898eec1-1fba-4e03-8765-aae08b0451fc', '3427', 'campos huchim suemy vanessa', 1, 'https://hub.stullerlandcommunity.com/employees/3427.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a8acf2a6-de39-4434-976b-0d04e9aa25c7', '3329', 'varguez cervera dianelly guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3329.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a8f0c1fe-57dc-4546-95db-b01ef33fda89', '3294', 'canche itza angel ivan', 0, 'https://hub.stullerlandcommunity.com/employees/3294.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a903eb08-0651-4119-8b73-61353997c29d', '2827', 'canul chan carlos alberto', 1, 'https://hub.stullerlandcommunity.com/employees/2827.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a9332009-fa8b-4ae2-85b9-46c08c265b40', '3126', 'baas pech claudio alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3126.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a97b9beb-9962-4233-b0db-9947a304624e', '3460', 'puc balam ignacio de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3460.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('a9fa07ff-da72-4357-9e9e-6fb7a575ac0b', '3335', 'rosete narvaez david alejandro', 1, 'https://hub.stullerlandcommunity.com/employees/3335.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aa1261d8-0ff3-4ee7-a3cb-79b52776c541', '2953', 'matos perez maría josé', 1, 'https://hub.stullerlandcommunity.com/employees/2953.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aa3f97a6-fac8-403d-8c56-8756de8fba4c', '2859', 'arcos garcia elba', 0, 'https://hub.stullerlandcommunity.com/employees/2859.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aa4c2960-796f-4a2a-8e20-71904666ed43', '2569', 'chi camal maria evangelina del carmen', 1, 'https://hub.stullerlandcommunity.com/employees/2569.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aa79984c-3fc3-470e-aa87-64c4a0653858', '2628', 'puc canul nidia aracely', 1, 'https://hub.stullerlandcommunity.com/employees/2628.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aac6cc54-1c0e-4b7c-bdbf-6bf0bc51c3db', '2778', 'mex vela jesus alberto', 0, 'https://hub.stullerlandcommunity.com/employees/2778.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ab0029a6-9ce2-498e-9789-ea22b8bdbed9', '3269', 'flores lira wilma del rosario', 0, 'https://hub.stullerlandcommunity.com/employees/3269.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ab439354-44a6-4ee1-b1d3-3b3f416986e3', '3110', 'cabrera perez manuel alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3110.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ab440d98-bc98-4be1-93b5-9562e8678a6d', '3055', 'sanchez cachon fernando sebastian', 1, 'https://hub.stullerlandcommunity.com/employees/3055.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('abc6fa25-124f-43c3-9ce0-302aba0f5668', '3364', 'rosado castillo jesus antonio', 1, 'https://hub.stullerlandcommunity.com/employees/3364.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aca80154-7e8b-45ed-996d-89074fc8bf36', '3161', 'tinal quintal nelvy yaneli', 0, 'https://hub.stullerlandcommunity.com/employees/3161.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ad620478-aa11-43dc-819d-0529aeeb95bf', '3168', 'mex chan alexandra eunice', 0, 'https://hub.stullerlandcommunity.com/employees/3168.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ad883ef9-475d-42fa-91a6-be461f2a4532', '2927', 'casanova arismendi diana amayrani', 1, 'https://hub.stullerlandcommunity.com/employees/2927.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('adc9f94a-8d4a-4f86-9ef3-2fb7bc2205ef', '2176', 'garcia cardeña andrea guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2176.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('add5bb1b-0565-40b8-a93e-fa377587900e', '3041', 'chac flores omar jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3041.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aeb61b74-cdd2-43fa-b8a8-651f96e61a5b', '2860', 'canul arcos lili esmeralda', 0, 'https://hub.stullerlandcommunity.com/employees/2860.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aeb6e905-a4d9-4139-b27a-5e0f55c64517', '3000', 'colome alejo elizabeth', 1, 'https://hub.stullerlandcommunity.com/employees/3000.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('aedf65a3-61c0-469c-806f-21b7ea0f4d80', '3115', 'diaz caamal juan pablo', 0, 'https://hub.stullerlandcommunity.com/employees/3115.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('afe17351-13c1-4ca4-8572-6c6f47b40217', '2811', 'ovando rosado juan francisco', 0, 'https://hub.stullerlandcommunity.com/employees/2811.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b14ae422-ccf1-4af1-b93f-836f97c45143', '2740', 'novelo poot flor guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2740.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b17383e4-0a20-4207-8e7d-8b3b637cd4a5', '3349', 'carothers preciado ignacio', 1, 'https://hub.stullerlandcommunity.com/employees/3349.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b190b5d4-df35-489b-8e64-8df6cdc6671b', '2961', 'mena peña rosana alexander', 0, 'https://hub.stullerlandcommunity.com/employees/2961.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b1b5b7c6-8cb1-4a38-ad00-c1ede3faba42', '3237', 'poot cua nayely anahi', 1, 'https://hub.stullerlandcommunity.com/employees/3237.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b1d22cc6-d3d0-4119-b722-b35dbcbd7668', '2965', 'castro can fabio alexander', 1, 'https://hub.stullerlandcommunity.com/employees/2965.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b305dad3-eb90-4428-a7c2-d24b08a7090d', '1771', 'quintal caamal santos alberto', 1, 'https://hub.stullerlandcommunity.com/employees/1771.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b3073c90-97aa-48f2-8fe5-6cdef213542c', '3380', 'fuentes chavez banelly itzel', 1, 'https://hub.stullerlandcommunity.com/employees/3380.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b3e0057f-6fbf-4727-975c-6b55058ab47a', '3102', 'tah may yaneth estefania', 1, 'https://hub.stullerlandcommunity.com/employees/3102.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b48c578a-5cde-4d10-8091-090d13207cf6', '1293', 'aguirre bonola juan carlos', 1, 'https://hub.stullerlandcommunity.com/employees/1293.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b4c9de33-86db-4c18-aa3f-8098b7951600', '2801', 'flores martinez iomairy guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2801.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b4e965f3-9d9e-460c-9bda-482fa74993ae', '3148', 'canche hinojosa silvia arleni', 0, 'https://hub.stullerlandcommunity.com/employees/3148.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b506e40a-8546-4003-9ee5-9aab22ba18a5', '3171', 'kantun ku maria betzabel', 1, 'https://hub.stullerlandcommunity.com/employees/3171.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b5d828e8-5e96-43c3-9d0d-5ba2556035e4', '2429', 'canche hu angel ivan', 1, 'https://hub.stullerlandcommunity.com/employees/2429.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b5f0dcac-8dde-4227-b874-69b20a56ff6c', '3097', 'moguel perez suemi nayeli', 0, 'https://hub.stullerlandcommunity.com/employees/3097.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b61b24cc-1a9d-488b-9d64-4e25a41224e8', '3388', 'chavez hernandez norma lisette', 0, 'https://hub.stullerlandcommunity.com/employees/3388.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b6479654-c1fc-4c84-94aa-16ff8f7e35d6', '2868', 'gongora guardian lidia del carmen', 0, 'https://hub.stullerlandcommunity.com/employees/2868.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b664a84b-507d-4b38-bd88-06506cebdffc', '2446', 'dzul chi santos prudencio', 1, 'https://hub.stullerlandcommunity.com/employees/2446.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b688ff54-1da5-49a5-a27e-ba1e7e42929d', '2764', 'chan chan maria concepcion', 0, 'https://hub.stullerlandcommunity.com/employees/2764.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b6d4b814-3b21-4d38-bca6-da54bb2070b9', '2882', 'barroso palacios claudia rocio', 0, 'https://hub.stullerlandcommunity.com/employees/2882.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b712c05e-51aa-4d1f-aad1-0b78aac5a885', '2730', 'mena uc aurelio rangel', 0, 'https://hub.stullerlandcommunity.com/employees/2730.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b718cc63-191a-4a1c-92ad-e879cad268b8', '2146', 'dzul polanco juan carlos', 1, 'https://hub.stullerlandcommunity.com/employees/2146.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b7251311-0760-49b6-bdca-8c123d1b024f', '3030', 'chac koyoc maria celestina', 0, 'https://hub.stullerlandcommunity.com/employees/3030.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b72f27a0-589c-4f71-a8c6-366a9c70a426', '2690', 'canul canche maria cristina', 0, 'https://hub.stullerlandcommunity.com/employees/2690.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b75b1fe4-2cfc-4e15-8cb1-3ec03a227f31', '3214', 'balam ku jorge alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3214.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b7abf964-e42d-4f50-84e6-3735900c6549', '3247', 'yam koyoc victoria esther', 0, 'https://hub.stullerlandcommunity.com/employees/3247.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b7dba375-0282-4935-951e-dea757eca5a8', '2875', 'novelo baeza diana carolina', 1, 'https://hub.stullerlandcommunity.com/employees/2875.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b7f88766-0d61-4a31-9b45-92ba95de8c06', '658', 'flores kuman gabriel jesus', 1, 'https://hub.stullerlandcommunity.com/employees/658.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b7fb8528-1301-4db3-b010-30b007f83679', '3094', 'ortega balcazar tania isabel', 1, 'https://hub.stullerlandcommunity.com/employees/3094.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b85c90a1-85ef-4113-b7c2-f59005ef29e3', '3013', 'basto perez josé pablo', 0, 'https://hub.stullerlandcommunity.com/employees/3013.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b85f7d96-ea83-4ecf-bd65-0d84c9059f14', '2641', 'tun novelo maria nela', 0, 'https://hub.stullerlandcommunity.com/employees/2641.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b932bb68-2f0d-47e9-9f4f-726243ec7507', '2952', 'lopez carrillo astrid jahzeel', 0, 'https://hub.stullerlandcommunity.com/employees/2952.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b9394f66-0af7-4e2c-91ab-04f5106c3f7c', '2769', 'cahum rosado maria de los angeles', 0, 'https://hub.stullerlandcommunity.com/employees/2769.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b979b18a-6a43-4a94-b017-d473ddabec69', '3320', 'chi juarez elena de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3320.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b9c23d21-3781-4b18-b477-f3d70d1ee79e', '2659', 'polanco puc felix pastor', 1, 'https://hub.stullerlandcommunity.com/employees/2659.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('b9e20ce0-1a62-4eed-9080-3b6abc7329f6', '1682', 'yah dzib loli patricia', 1, 'https://hub.stullerlandcommunity.com/employees/1682.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ba009c28-634b-4614-8994-019d079634e5', '2527', 'moreno martin karla magaly', 0, 'https://hub.stullerlandcommunity.com/employees/2527.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ba2d1622-cbf5-442f-a4dc-0a06b5fde8cc', '2981', 'canul canche eliud mizraim', 0, 'https://hub.stullerlandcommunity.com/employees/2981.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ba57f3e9-de44-4b21-978d-69476256c16d', '2837', 'moo chay didier reynaldo', 0, 'https://hub.stullerlandcommunity.com/employees/2837.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bb96ca24-ed7c-4fae-bf21-e5d12d25eefe', '2799', 'ciau puc carmelita', 0, 'https://hub.stullerlandcommunity.com/employees/2799.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bbabf08e-16ee-452a-8680-417159d36493', '2990', 'chi novelo yanin de lisseth', 0, 'https://hub.stullerlandcommunity.com/employees/2990.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bbbe989a-132a-45f7-8c35-e1ac019eee9a', '3182', 'sosa och geovany de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/3182.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bbd07f28-997d-4884-a16c-a83ee4d81530', '2223', 'dzib canul leysi guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2223.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bc01c796-f6a5-42ad-b394-190f4b434724', '3313', 'garcia gomez natalia del socorro', 1, 'https://hub.stullerlandcommunity.com/employees/3313.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bc0f05c4-190f-4651-a5f5-676ede51b1be', '2759', 'cen can kenia de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2759.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bc7dbbac-922e-4914-99c8-9de043cdc975', '3408', 'escobedo guerrero analy maria', 1, 'https://hub.stullerlandcommunity.com/employees/3408.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bc82b7d2-40b2-462f-bff7-2dbe5239e553', '2855', 'canche alamilla aylin elizabeth', 0, 'https://hub.stullerlandcommunity.com/employees/2855.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bdb25523-e9b7-401c-961c-1745f2fd1c2b', '3181', 'canche koyoc jesus oswaldo', 1, 'https://hub.stullerlandcommunity.com/employees/3181.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bddb3bbd-1e53-4cfb-86ec-2f03025fb5f3', '3177', 'cuytun cab jorge carlos', 0, 'https://hub.stullerlandcommunity.com/employees/3177.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bdee836d-8de7-4023-be93-927112bb961b', '3036', 'solache koyoc johan ulises', 1, 'https://hub.stullerlandcommunity.com/employees/3036.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('be4239b1-ee60-40e4-b73f-f289c0e8478e', '2910', 'koyoc cool rosa gloria', 0, 'https://hub.stullerlandcommunity.com/employees/2910.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('be99f2b7-d1ac-4d2d-ba0f-ccbf5d77a54c', '2010', 'casanova may maria eugenia', 1, 'https://hub.stullerlandcommunity.com/employees/2010.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bed6c673-ae63-4620-8fee-37da44deaf71', '3184', 'tamayo pinzon sofia guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3184.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('beef5230-83b0-4c83-85de-57d80a2afc1a', '591', 'carrillo cobos martha arely', 1, 'https://hub.stullerlandcommunity.com/employees/591.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bf1dc107-4df1-4a43-a87c-43823d97803c', '2299', 'tec chuc lourdes geovana', 1, 'https://hub.stullerlandcommunity.com/employees/2299.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bfad240b-fcda-4856-891d-f820cf8fe64b', '3179', 'may cab marlene beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/3179.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('bfb213d4-8abd-457d-be7d-a8b1b9bac3c2', '2441', 'tun pacheco lucia bernardina', 1, 'https://hub.stullerlandcommunity.com/employees/2441.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c09e906e-5345-4e03-ada7-cd522ad297c1', '2607', 'rosado jimenez lucia', 0, 'https://hub.stullerlandcommunity.com/employees/2607.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c147ba1f-63a7-4bdb-b33e-c9e80d1438ad', '2865', 'keb caamal damaris concepcion', 0, 'https://hub.stullerlandcommunity.com/employees/2865.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c195fc7f-6157-4e29-b1c1-c11c2cb857e5', '2994', 'castillo marquez ilse romina', 1, 'https://hub.stullerlandcommunity.com/employees/2994.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c1d2c3c9-cbcd-4fe6-9f54-1eed999915ca', '2867', 'coronado chan abraham moises', 0, 'https://hub.stullerlandcommunity.com/employees/2867.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c2217894-e068-4ead-b90f-558306584a99', '2813', 'cool ek maria clara maribel', 1, 'https://hub.stullerlandcommunity.com/employees/2813.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c339aa33-0604-438f-bb6c-c4694ea6b283', '2735', 'tah quintal maria teresita', 0, 'https://hub.stullerlandcommunity.com/employees/2735.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c346219e-8d20-4133-ad27-757cc582450b', '3453', 'samberino perez axl alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/3453.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c34e7da2-48dd-40fe-be14-557d6e099ee0', '3196', 'moo tun jhony alberto', 0, 'https://hub.stullerlandcommunity.com/employees/3196.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c359da89-a9e9-48eb-bf0e-499b182203b6', '3042', 'vega montejo luceli guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3042.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c360b80b-48a7-4707-b988-72e4a7b06b3d', '3286', 'vega molina apolonia ixhel', 0, 'https://hub.stullerlandcommunity.com/employees/3286.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c3887a5d-b575-433b-9291-4b89e3291203', '3375', 'miss ku biviana guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3375.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c487b3e1-29a4-45aa-9eaa-2c379945e761', '3201', 'aguallo cuitun yulissa guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3201.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c5192136-7966-4fe8-85b1-f76b6ed45d32', '3192', 'xuluc borges sandra isabel', 0, 'https://hub.stullerlandcommunity.com/employees/3192.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c5656d3d-5f33-49f9-b84d-21f1e3747333', '2873', 'patraca cob angel ricardo', 0, 'https://hub.stullerlandcommunity.com/employees/2873.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c5c9c450-bd36-4663-9490-93210a1a120b', '3461', 'gamboa camara valeria', 1, 'https://hub.stullerlandcommunity.com/employees/3461.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL);
INSERT INTO `auth_users` (`id`, `code`, `name`, `is_active`, `avatar_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('c5d8cc06-1a15-4af6-814c-369fff9c2971', '2393', 'dzul lopez yeenifer viviana', 1, 'https://hub.stullerlandcommunity.com/employees/2393.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c5e3b417-a4e2-4537-88de-fece662e2266', '2504', 'medina canto roger pastor', 1, 'https://hub.stullerlandcommunity.com/employees/2504.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c602e533-d32e-4318-bbd1-5604d88b8739', '2935', 'manzanilla canul eliam yair', 0, 'https://hub.stullerlandcommunity.com/employees/2935.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c61ff65e-2e4a-4718-bc8f-71be3c64536f', '3365', 'medina meneses jesus omar', 0, 'https://hub.stullerlandcommunity.com/employees/3365.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c6644d70-481b-4589-ae67-3041c1984bec', '2846', 'novelo canche maria andrea', 1, 'https://hub.stullerlandcommunity.com/employees/2846.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c66b6538-f25f-404d-bcfb-315ba9369531', '2893', 'padron chulim adriana del rosario', 0, 'https://hub.stullerlandcommunity.com/employees/2893.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c691e84c-1aa2-4e0a-a9bd-304a639fedbf', '2815', 'moo canche geni guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2815.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c6b238b4-a8bc-4762-ae91-18e3fd93f455', '1698', 'rodriguez llanos jorge ruben', 0, 'https://hub.stullerlandcommunity.com/employees/1698.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c6d29352-1321-4dc2-8956-3d4916c8aebb', '3249', 'ek canche luis antonio', 0, 'https://hub.stullerlandcommunity.com/employees/3249.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c6fdbdb1-1ac7-437f-a373-2fe502f6dbd8', '2853', 'canche baas ana madai', 0, 'https://hub.stullerlandcommunity.com/employees/2853.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c70f592e-f385-4965-9786-f5e0b0b50e24', '3459', 'alonzo ceron eduardo', 1, 'https://hub.stullerlandcommunity.com/employees/3459.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c7897f89-87ad-4946-b686-38da6d7c1f76', '3399', 'aviles tolentino darwin emanuel', 0, 'https://hub.stullerlandcommunity.com/employees/3399.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c7d8ac58-257d-4d00-9de5-05958a992be4', '2686', 'carrillo eb jimmy omar', 1, 'https://hub.stullerlandcommunity.com/employees/2686.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c8016977-0d5b-43ba-ad0b-1a7819b91e39', '3425', 'cua can jesus samuel', 0, 'https://hub.stullerlandcommunity.com/employees/3425.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c8dee369-cf27-47d2-932a-91a9f2f778d0', '3435', 'tun dzib athalia berenice', 1, 'https://hub.stullerlandcommunity.com/employees/3435.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c8e4a5be-2380-4d8c-b2c8-4ef1e28130e8', '2570', 'lopez martinez jose guillermo', 1, 'https://hub.stullerlandcommunity.com/employees/2570.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c8e4ff37-ab12-4b3c-b08c-a6300a96faea', '3353', 'cocom pech claudia magdalena', 1, 'https://hub.stullerlandcommunity.com/employees/3353.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c9231a02-3fa2-45b4-8619-32f053954686', '3442', 'tinal iuit pedro saiht alexsandro', 1, 'https://hub.stullerlandcommunity.com/employees/3442.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c971c631-65a8-4768-a179-b3d8b8e11cfe', '2378', 'canto uc juan jaime', 1, 'https://hub.stullerlandcommunity.com/employees/2378.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c996163c-1a13-47bd-b8e8-3be0310592ff', '500', 'ruiz gomez tomas', 1, 'https://hub.stullerlandcommunity.com/employees/500.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c9de70ef-52bf-45a0-9ef1-f48d349e9d65', '2929', 'ku kantun jorge alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/2929.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('c9e605f6-01da-46d2-8bd0-30fa1d560dd1', '3187', 'tinal canul maria victoria', 0, 'https://hub.stullerlandcommunity.com/employees/3187.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ca3cdd68-af4e-41e8-ac22-c4a26e13ad47', '3037', 'caamal tun griselda sherlin', 1, 'https://hub.stullerlandcommunity.com/employees/3037.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ca739f45-ed67-4c41-b9e7-6258529f014b', '3234', 'tamayo dzib carlos ivan', 1, 'https://hub.stullerlandcommunity.com/employees/3234.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ca8a44f7-a5da-4c96-96cc-3bff6fa92c44', '2590', 'chac ek jose baltazar', 0, 'https://hub.stullerlandcommunity.com/employees/2590.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ca91345f-6818-42c1-a635-69c428005ce3', '2832', 'castilla carvajal carla eugenia', 1, 'https://hub.stullerlandcommunity.com/employees/2832.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cb033a45-bd52-474e-b9c6-358ca3f282ff', '3451', 'canul canche maria amalia', 0, 'https://hub.stullerlandcommunity.com/employees/3451.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cb13ad24-dae7-4417-9735-f2c34b08d4cf', '2727', 'canche rodriguez jose manuel', 1, 'https://hub.stullerlandcommunity.com/employees/2727.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cb1857e4-afe8-4ac8-9349-bf217a1898fb', '2741', 'cruz  maria fabiola', 1, 'https://hub.stullerlandcommunity.com/employees/2741.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cbc5aaf1-e40c-4c1f-bd0a-aa224622bde4', '1059', 'varguez uc leticia del rosario', 0, 'https://hub.stullerlandcommunity.com/employees/1059.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cbd0568d-42ad-4be2-9212-7534cf11adcc', '3175', 'pacheco rodriguez mauricio eduardo', 0, 'https://hub.stullerlandcommunity.com/employees/3175.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cc9e5a92-a061-432d-aaf1-5685cfd316bb', '710', 'baas koh filiberto', 1, 'https://hub.stullerlandcommunity.com/employees/710.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cca6af00-3285-4cb9-a914-640b4c670ac2', '2924', 'canche cua maria del rosario', 1, 'https://hub.stullerlandcommunity.com/employees/2924.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ccb789b0-2a48-42b1-8833-321ccd3341c5', '3316', 'dzib koh angelina asuncion', 0, 'https://hub.stullerlandcommunity.com/employees/3316.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ccfafc59-a5da-4653-a2ca-3c3de841e38d', '3174', 'leal camacho jessica lizett', 1, 'https://hub.stullerlandcommunity.com/employees/3174.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cdf961fd-e5b9-428d-9044-4d0da89bda02', '2630', 'ek colli ofelia beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/2630.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ce1c29e6-5e1f-4726-a148-52eb604cf447', '2241', 'balam quintal celestino', 1, 'https://hub.stullerlandcommunity.com/employees/2241.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ce3b3e98-8690-46c9-bdac-91eb1034d66e', '3210', 'perez delgado maria fernanda', 1, 'https://hub.stullerlandcommunity.com/employees/3210.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cee95adf-a9cc-43d4-a115-f621146f5349', '3146', 'burgos blanco jose antonio', 1, 'https://hub.stullerlandcommunity.com/employees/3146.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cf4d562e-d99e-4dee-a393-ac78a62a232b', '2849', 'sanchez polanco martha martina', 0, 'https://hub.stullerlandcommunity.com/employees/2849.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cf8f6132-faba-4a01-94ac-f93140c77181', '2784', 'chan rihani luis enrique', 1, 'https://hub.stullerlandcommunity.com/employees/2784.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cfd1ae3b-1849-416a-b0d5-8fe5b7dae3a4', '2388', 'tinal quintal maria eugenia', 0, 'https://hub.stullerlandcommunity.com/employees/2388.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cfef5cc3-6c58-4e38-b208-e65599b6b253', '3477', 'dzib manzon maria reina', 1, 'https://hub.stullerlandcommunity.com/employees/3477.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('cffbfd79-469d-45af-9af0-54cbb05f504e', '3183', 'orosco oxte gaspar armando', 0, 'https://hub.stullerlandcommunity.com/employees/3183.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d051cec1-1f44-4149-8e7e-6be8a22275ab', '2946', 'santana espinosa jorge alberto de atocha', 0, 'https://hub.stullerlandcommunity.com/employees/2946.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d084d2ce-9e56-4ae3-b598-407eeccdcb67', '3341', 'ek colli jacinto pastor', 1, 'https://hub.stullerlandcommunity.com/employees/3341.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d0b4e5e8-5bba-4fb3-a8c4-e19d1d157b70', '3198', 'dzul cab fatima mariela', 0, 'https://hub.stullerlandcommunity.com/employees/3198.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d1f94632-62ea-4f0c-9f37-f11a8f987117', '3075', 'solis ek valery melissa', 0, 'https://hub.stullerlandcommunity.com/employees/3075.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d2032862-9ce0-41ac-a1a6-3813a9bc6afe', '3467', 'canul rodriguez angel gabriel', 1, 'https://hub.stullerlandcommunity.com/employees/3467.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d2abdd11-e49f-45a8-88e8-117e3bf925af', '2714', 'moo xool joan humberto', 0, 'https://hub.stullerlandcommunity.com/employees/2714.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d2b926ee-2790-4b00-8227-22fe3061e9f7', '2795', 'cab may fatima beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/2795.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d2ca4f56-8f1c-4e92-a207-979f121f735b', '3405', 'gonzalez ortiz sheylaracet', 0, 'https://hub.stullerlandcommunity.com/employees/3405.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d2e134c8-64e9-4df2-94a8-bfd07342485a', '522', 'puch herrera fernando', 1, 'https://hub.stullerlandcommunity.com/employees/522.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d3016016-5e56-41d8-8ab6-a00620585600', '3448', 'prado negrete dafne abigail', 1, 'https://hub.stullerlandcommunity.com/employees/3448.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d357b011-fc05-4150-b02c-cea9d3f73697', '2742', 'piste tah david israel', 0, 'https://hub.stullerlandcommunity.com/employees/2742.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d388fa85-c4aa-4784-a5c7-0ca4241b0570', '3127', 'hinojosa canche jose julian', 0, 'https://hub.stullerlandcommunity.com/employees/3127.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d3d88e55-4032-4be2-8f75-916177b853a3', '3429', 'castro tun jose baltazar', 1, 'https://hub.stullerlandcommunity.com/employees/3429.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d46a9a72-73f2-4be2-b65c-c297dd7e2944', '3291', 'sulu hu nadia guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3291.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d5245a75-f66c-4e62-b10a-f83782cfb167', '1818', 'poot uc delby uriel', 1, 'https://hub.stullerlandcommunity.com/employees/1818.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d576c5f9-1db3-47ac-ad2b-360cfa2f496b', '2293', 'arguello cauich edwin antonio', 0, 'https://hub.stullerlandcommunity.com/employees/2293.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d58d5b68-8c5f-428f-bdb3-b6da89fc9088', '3219', 'moreno perez javier enrique', 1, 'https://hub.stullerlandcommunity.com/employees/3219.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d5bdcd0a-50b8-4e69-9e21-161ce85ee79b', '3307', 'chi romero lifdi jimena', 1, 'https://hub.stullerlandcommunity.com/employees/3307.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d60e3bd7-f20f-4537-908e-db3d00d844d9', '3053', 'pech canche anai', 1, 'https://hub.stullerlandcommunity.com/employees/3053.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d63aec79-b2ed-4af5-ad2b-346677c96ab0', '558', 'flores koh andres avelino', 1, 'https://hub.stullerlandcommunity.com/employees/558.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d64dcb20-b03d-407c-868a-8ba8b01d4f22', '3434', 'tun pech karen samantha', 1, 'https://hub.stullerlandcommunity.com/employees/3434.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d67e299c-29b9-41d0-8015-ba71881960e2', '214', 'salazar cortes javier trinidad', 1, 'https://hub.stullerlandcommunity.com/employees/214.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d691176d-f3a9-4735-a63d-bb43f78d5c04', '3069', 'lopez ventura abel enrique', 0, 'https://hub.stullerlandcommunity.com/employees/3069.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d7530f5a-b81a-4880-b58e-a95039fcd420', '2666', 'ortiz basto victor lizandro', 0, 'https://hub.stullerlandcommunity.com/employees/2666.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d755f48f-d478-4d8c-9b58-fb88e1d19537', '2982', 'canul canul shirley nayeli', 1, 'https://hub.stullerlandcommunity.com/employees/2982.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d76162fe-3164-4137-8e67-3127ba544c72', '1961', 'puch puch senaida', 1, 'https://hub.stullerlandcommunity.com/employees/1961.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d76af75b-41af-4853-b410-806befcdf752', '2880', 'moo yam selene de los angeles', 1, 'https://hub.stullerlandcommunity.com/employees/2880.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d78972e5-b2b0-41d4-9d90-f61ee5fc987c', '2152', 'balam canche reina del carmen', 1, 'https://hub.stullerlandcommunity.com/employees/2152.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d7a13238-1c2c-4b88-90a8-1842cbded57c', '3355', 'cool manzanilla mizrain jhonatan', 1, 'https://hub.stullerlandcommunity.com/employees/3355.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d7de88fe-c4ed-43c9-bcb3-4bf2cd4e9ef0', '3455', 'gongora reyes jorge adrian', 0, 'https://hub.stullerlandcommunity.com/employees/3455.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d7f502be-55e9-4610-a065-d94e1f5219d2', '2772', 'cob tah sendy maria', 0, 'https://hub.stullerlandcommunity.com/employees/2772.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d7fa56b8-fea2-4c3b-a590-0bc9ace75983', '2857', 'balam vazquez maria guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2857.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d7fe5055-8f92-4b11-aa20-c52b5dd01ff9', '3308', 'poot tun cassandra irene', 1, 'https://hub.stullerlandcommunity.com/employees/3308.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d8059702-e4dc-40f9-8a63-665f611703b7', '3084', 'canul troncozo maria imelda', 1, 'https://hub.stullerlandcommunity.com/employees/3084.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d865d0da-3654-4579-bf18-d8aa4eb03d53', '2911', 'chac manzon maría del carmen', 0, 'https://hub.stullerlandcommunity.com/employees/2911.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d86b4802-fce4-404b-8611-7d33e70954c9', '3153', 'piste dzul jose francisco de la cruz', 1, 'https://hub.stullerlandcommunity.com/employees/3153.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d90f4919-e7ae-4ab3-92e2-481143e7fca8', '3478', 'cauich polanco mariana edimir', 1, 'https://hub.stullerlandcommunity.com/employees/3478.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d933ad11-4c68-44c4-884a-d22a6c645b08', '3438', 'poot koyoc bezaleel eliezer', 1, 'https://hub.stullerlandcommunity.com/employees/3438.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d963e364-fb02-4e1b-8b0f-68b9cd436006', '738', 'yah chavez benita isabel', 1, 'https://hub.stullerlandcommunity.com/employees/738.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('d9fec629-2dd8-4a70-a54b-5775cdbb322a', '3420', 'zapata cutz diego alejandro', 1, 'https://hub.stullerlandcommunity.com/employees/3420.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('da562218-96b2-4d3e-b7dd-bc82728fe002', '2520', 'borges uc teresa de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/2520.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('da6f749c-6f08-4aac-9f4f-f35cb2e1c899', '2334', 'pech pech dennis martin', 1, 'https://hub.stullerlandcommunity.com/employees/2334.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('da7ca7cb-9937-4c46-9e46-94e00277dac9', '3396', 'diaz pacheco javier arturo', 1, 'https://hub.stullerlandcommunity.com/employees/3396.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('db299ad1-4b80-4d7e-91f4-0e6a3db47119', '3170', 'pech flores angelica araceli', 0, 'https://hub.stullerlandcommunity.com/employees/3170.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('db2c7fa4-9609-4f93-9bce-2a41b8441433', '3038', 'pech may sofia', 1, 'https://hub.stullerlandcommunity.com/employees/3038.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('db5e7c50-ed93-4fc4-abe8-c2f98d7e682e', '3029', 'borges loria rafael de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3029.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dba40d4d-5dfa-480b-8596-d3803890ec8c', '3449', 'may martin maria yuridia', 1, 'https://hub.stullerlandcommunity.com/employees/3449.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dbb5ab29-4905-4699-8555-d9c0e4c1d36c', '2643', 'hernandez arias landy guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2643.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dbc203ea-e96e-49c6-b3c0-37587d5449fa', '3224', 'baas sulu karina elizabeth', 1, 'https://hub.stullerlandcommunity.com/employees/3224.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dc128ca6-b96d-49e4-9e30-cf3c81ca2ae5', '3479', 'poot ek carlos daniel', 1, 'https://hub.stullerlandcommunity.com/employees/3479.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dc1b3d8b-4687-4d01-a7de-359285858dcd', '2960', 'alonzo aguayo rut esther', 0, 'https://hub.stullerlandcommunity.com/employees/2960.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dd0830db-c65e-49d0-a7cb-0efd14bd57c0', '2382', 'argaez marfil walter enrique', 1, 'https://hub.stullerlandcommunity.com/employees/2382.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dd276d9f-f376-4800-993a-50b97f98d35c', '3180', 'canche pacheco miguel angel', 0, 'https://hub.stullerlandcommunity.com/employees/3180.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dd27a7c4-f839-4690-b0a1-5120352556a6', '2477', 'abrajan chigo noe', 1, 'https://hub.stullerlandcommunity.com/employees/2477.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dd435ba6-dbb0-43fb-bd99-f99e7c202ed0', '3241', 'sosa suarez berenice de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3241.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dd43be22-3bf3-4f9b-b38e-ace85214d5a9', '3265', 'santiago campos jessica', 1, 'https://hub.stullerlandcommunity.com/employees/3265.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dd8f310a-1485-4fad-b79a-568c05ff53e9', '2937', 'baas uribe reyna adriana', 0, 'https://hub.stullerlandcommunity.com/employees/2937.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ddc87b02-7804-410a-86a1-4cecf016735e', '3379', 'canche chac wendy carolina', 1, 'https://hub.stullerlandcommunity.com/employees/3379.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('de38a98c-22e8-4bf2-a018-473291a1f88a', '2646', 'hinojosa novelo cinthia ruby', 1, 'https://hub.stullerlandcommunity.com/employees/2646.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('de6ce538-77ab-4c46-af81-4a9df27d6399', '2936', 'correa luna luis alfredo', 0, 'https://hub.stullerlandcommunity.com/employees/2936.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('df6cc676-fb4a-4b90-abbe-aa396e24fdaf', '2485', 'chan  luis fernando', 0, 'https://hub.stullerlandcommunity.com/employees/2485.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('dfded6f2-1489-4752-8d80-a0399ef23de6', '2224', 'catzin cauich maria asuncion', 1, 'https://hub.stullerlandcommunity.com/employees/2224.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e0683b7b-6f1a-4210-b496-407db5e05cfc', '3352', 'may martin daneli marilu', 1, 'https://hub.stullerlandcommunity.com/employees/3352.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e09f92de-9a18-483b-94ff-49fc7490bf98', '2495', 'zapata valdez eduardo alfonso', 1, 'https://hub.stullerlandcommunity.com/employees/2495.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e0a05151-e50a-4178-985e-3f83157e7285', '3384', 'castro can cristian omar', 1, 'https://hub.stullerlandcommunity.com/employees/3384.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e0c16d93-7304-4e48-8ec3-00ce3bb1f87a', '3390', 'pacheco pool yahir manuel', 1, 'https://hub.stullerlandcommunity.com/employees/3390.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e10efd05-7c32-40be-803b-3b39876e4af9', '3232', 'mena herrera david enrique', 0, 'https://hub.stullerlandcommunity.com/employees/3232.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e158cf5a-b928-4ee2-b91b-e92021e7ac82', '1098', 'poot lara rosa elena', 1, 'https://hub.stullerlandcommunity.com/employees/1098.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e17377d5-113d-4dbf-94c5-69c01179001b', '3195', 'ventura cahum mariana isabel', 0, 'https://hub.stullerlandcommunity.com/employees/3195.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e18289c5-ea78-4f31-93b8-b13f0b8d93f6', '3346', 'patron cauich fatima guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3346.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e18460f9-ae09-47ee-a4a0-84026aebd3bb', '2864', 'caamal dzul gladys alejandra', 0, 'https://hub.stullerlandcommunity.com/employees/2864.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e1c66630-0b66-4658-9a1b-4a632cc9b018', '1288', 'de anda canche maricela de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/1288.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e1fa612a-8952-431e-acba-c2d76f1cd7c3', '3367', 'chi poot angel genaro', 1, 'https://hub.stullerlandcommunity.com/employees/3367.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e2474de2-3723-440f-80a5-52186e97d147', '2848', 'koyoc canche arantxa lucely', 0, 'https://hub.stullerlandcommunity.com/employees/2848.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e2a8d13d-9f24-497c-837a-b31df2d264d1', '2817', 'camara ortiz henry adair', 0, 'https://hub.stullerlandcommunity.com/employees/2817.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e2c882c9-8337-4015-87fb-9c6cd28956a6', '2877', 'serra pérez lorena', 0, 'https://hub.stullerlandcommunity.com/employees/2877.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e352088e-429d-4306-ad9e-114893c4e4a5', '3022', 'poot hinojosa carlos santiago', 0, 'https://hub.stullerlandcommunity.com/employees/3022.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e3850852-7e5a-4bc4-94f7-390030b1650e', '3361', 'estevez pacheco america dayana', 1, 'https://hub.stullerlandcommunity.com/employees/3361.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e3e6b191-efa1-4fa0-a717-db2b99023d96', '3292', 'ambrosio zaldivar cinthia aurora', 0, 'https://hub.stullerlandcommunity.com/employees/3292.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e405246f-af82-4205-ac4f-862083b54952', '3293', 'couoh batun mirza guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3293.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e4438628-1a8f-4ae0-97ee-c4e5c8edfbc4', '2739', 'pacheco martin erik alexander', 0, 'https://hub.stullerlandcommunity.com/employees/2739.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e4bda545-624b-4dca-ab6e-ae88aef7d5f7', '2231', 'baltazar campos jorge alberto', 1, 'https://hub.stullerlandcommunity.com/employees/2231.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e4d43e0b-b043-49a3-bd48-e3dded3d9dd8', '2350', 'estrella palma jorge natanael', 0, 'https://hub.stullerlandcommunity.com/employees/2350.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e541aec2-b964-45be-b065-b32d8b9e8292', '2763', 'caamal carvajal maria isabel', 0, 'https://hub.stullerlandcommunity.com/employees/2763.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e579cd4a-4459-4ac3-a360-7b36618bde4e', '1601', 'ordoñez mena wendy maria del pilar', 1, 'https://hub.stullerlandcommunity.com/employees/1601.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e5a587d5-d8c5-4f64-b17b-7aa8cd349e8e', '3216', 'chan oxte fanny de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3216.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e5a7ff1d-780c-4678-bbaa-47110b84160f', '2782', 'sonda barrera victor manuel', 0, 'https://hub.stullerlandcommunity.com/employees/2782.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e5db100b-2c37-4edc-abc2-51007e9745cb', '3189', 'zapata esquivel angel daniel', 1, 'https://hub.stullerlandcommunity.com/employees/3189.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e5ecf672-72c8-48f0-a0e9-5e6cc3e78358', '2566', 'ek colli gustavo adolfo', 1, 'https://hub.stullerlandcommunity.com/employees/2566.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e61a4575-ba14-423e-87d7-2ca0996ca01c', '3454', 'bautista cabadas jose raul', 0, 'https://hub.stullerlandcommunity.com/employees/3454.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e634baf9-0df9-45e9-ba6a-42f258ee2f6e', '3457', 'may sanchez eduardo rafael', 1, 'https://hub.stullerlandcommunity.com/employees/3457.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e6c37bab-5438-405c-b2cd-ce515e308081', '1836', 'perez cauich juan ramon santiago', 0, 'https://hub.stullerlandcommunity.com/employees/1836.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e7009977-907d-418e-9f16-51ad35004cf6', '2589', 'poot uc reina ireni', 0, 'https://hub.stullerlandcommunity.com/employees/2589.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e7669189-ba5c-400f-8133-0eb3bb9d7197', '2806', 'chan canul maria elizabeth', 0, 'https://hub.stullerlandcommunity.com/employees/2806.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e77dbb87-dfaf-4e23-a4dd-751daa6bc30c', '2836', 'canul cob maria arcadia', 1, 'https://hub.stullerlandcommunity.com/employees/2836.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e794b4ed-5dbb-494f-8b89-ac4644d91bb4', '2802', 'hau pech cecilia esther', 0, 'https://hub.stullerlandcommunity.com/employees/2802.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e7c9487d-19d9-4ad7-a99b-6982224edf5e', '1516', 'chi morales julio', 1, 'https://hub.stullerlandcommunity.com/employees/1516.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e7ec50e4-23de-46b6-9bef-c1a7e33a556d', '2019', 'pinto cauich adrian santiago', 0, 'https://hub.stullerlandcommunity.com/employees/2019.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e830f024-cfdb-4cd8-a652-162c002b6543', '1606', 'argaez colli argenis alberto', 1, 'https://hub.stullerlandcommunity.com/employees/1606.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e883bdc5-52bc-440f-83f0-6fb66c391fcf', '2833', 'valdez sanchez leticia guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2833.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e8962c48-3593-49ad-8faa-8889bfc681a8', '2692', 'uc tinal minely cristina', 1, 'https://hub.stullerlandcommunity.com/employees/2692.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e8d2847f-e313-461d-89b6-03c4c65e0991', '2364', 'mosqueda chan liliana del carmen', 1, 'https://hub.stullerlandcommunity.com/employees/2364.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e8f0e84f-c4ad-451e-8f67-8547baee4e3f', '3105', 'may dzul jose baltazar', 0, 'https://hub.stullerlandcommunity.com/employees/3105.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e93dd8ec-bfe5-4ae7-a68e-b5d4445c0baf', '3086', 'ek chac dulce noemi', 0, 'https://hub.stullerlandcommunity.com/employees/3086.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e96053e3-6212-438b-8b80-eb187c94d28a', '1713', 'quintal puc roberto andres', 1, 'https://hub.stullerlandcommunity.com/employees/1713.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e99e2be4-899c-4c4f-b71d-3579f66aaa14', '1966', 'arenas dzul uriel', 0, 'https://hub.stullerlandcommunity.com/employees/1966.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e9bcc918-c48f-490b-8e56-ac80300778f2', '2883', 'polanco canul felipe reynaldo', 0, 'https://hub.stullerlandcommunity.com/employees/2883.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('e9e7233d-8c62-43b6-9fe4-24ed42cef599', '2812', 'ek chac maria virginia', 1, 'https://hub.stullerlandcommunity.com/employees/2812.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ea30771d-743b-4144-a282-7a305b79617a', '3357', 'galera perera kevin joaquin', 1, 'https://hub.stullerlandcommunity.com/employees/3357.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ea51a1b5-f1f4-4fca-b06f-00e9c6dc9c9b', '393', 'rosado peraza armin', 0, 'https://hub.stullerlandcommunity.com/employees/393.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ea66c2d9-10f3-46ed-b041-68a443e54af5', '3200', 'uc may jorge manuel', 0, 'https://hub.stullerlandcommunity.com/employees/3200.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ea6ae124-8de2-4c27-836b-c75e38a57438', '3326', 'polanco canul alexandra berenice', 1, 'https://hub.stullerlandcommunity.com/employees/3326.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ea9bd02b-93bc-4a34-a5f2-1feeb6d0fa04', '1046', 'lopez chable leonor', 1, 'https://hub.stullerlandcommunity.com/employees/1046.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eaed0c71-eaa6-430f-8adc-5aa147b6b83f', '3373', 'cortes herrera eduardo', 1, 'https://hub.stullerlandcommunity.com/employees/3373.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eaeeb94f-01e9-4658-b13c-40ecb888885a', '3104', 'canul tzuc angel gabriel', 1, 'https://hub.stullerlandcommunity.com/employees/3104.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eb222a91-7867-47b5-8086-3accdd8e50c9', '3077', 'chac cuxin leydi patricia', 0, 'https://hub.stullerlandcommunity.com/employees/3077.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eb85900b-61ca-4466-ae77-f6ddcca2b26a', '3065', 'sansores novelo edwin antonio', 0, 'https://hub.stullerlandcommunity.com/employees/3065.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ebd1bd97-3460-4145-8406-be0530edcdd9', '2886', 'cabrera chan patricia del rosario', 1, 'https://hub.stullerlandcommunity.com/employees/2886.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ec2f32bd-9afc-4054-924d-e57f4b81c7a8', '3311', 'tuz felix christian jhanin', 0, 'https://hub.stullerlandcommunity.com/employees/3311.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ec5f70b7-3fb6-4cbb-9c95-f40d4242c7c5', '2762', 'castillo vazquez margarita de la cruz', 0, 'https://hub.stullerlandcommunity.com/employees/2762.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ec8ce6d5-d263-4559-87b6-9d692b3ace41', '2870', 'pech canul mirian guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/2870.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ecca7738-1c8d-4ab9-8a0b-3a49b5cf2c4e', '2800', 'chi novelo andrea marisol', 1, 'https://hub.stullerlandcommunity.com/employees/2800.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed0bc12a-d2f9-4b08-a755-3a9318306e80', '3368', 'santos cel alfayed alexandro', 0, 'https://hub.stullerlandcommunity.com/employees/3368.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed1506e9-93b3-46e8-8b9e-e48813cba7dd', '2954', 'chuc ek sarai de jesus', 1, 'https://hub.stullerlandcommunity.com/employees/2954.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed3e4af9-14d2-4b8a-b6ca-a8cd1cf8fe56', '3297', 'perez junco silvia', 1, 'https://hub.stullerlandcommunity.com/employees/3297.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed62dc1e-aaf0-48dd-bbd6-83899a0e1c14', '3117', 'pat caamal jesus michael', 1, 'https://hub.stullerlandcommunity.com/employees/3117.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed6679f6-f0b5-4c0a-a4b1-4a9cb9bb02ce', '2752', 'chin chin maria gloria', 1, 'https://hub.stullerlandcommunity.com/employees/2752.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed8587f7-fbf1-470e-9942-c20cb646d987', '3062', 'garcia salazar andrea guadalupe', 1, 'https://hub.stullerlandcommunity.com/employees/3062.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ed9e626d-4747-46d1-b2d2-f25b768049fa', '3317', 'duarte dzul roger azael', 0, 'https://hub.stullerlandcommunity.com/employees/3317.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('edd15033-272f-4fde-b72b-d36aaa361fbf', '2738', 'kauil chuc kervin alexander', 1, 'https://hub.stullerlandcommunity.com/employees/2738.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ee137d91-363d-4318-b10b-fe1e08a40800', '3351', 'may martin maria magdalena', 1, 'https://hub.stullerlandcommunity.com/employees/3351.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eec30f5a-bf34-4ba6-963b-f22cd4ae0c73', '3040', 'chan chan maria elena', 1, 'https://hub.stullerlandcommunity.com/employees/3040.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eedeb4e8-6f77-4bbc-9e65-bbaa0d74cae9', '3167', 'perera lopez adolfo armando', 0, 'https://hub.stullerlandcommunity.com/employees/3167.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ef21cf6e-2626-46f9-8c3b-26da7f0dff2c', '3188', 'canche moo maria alejandra', 1, 'https://hub.stullerlandcommunity.com/employees/3188.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('eff5d4e7-9aed-4aeb-946d-fa8be360c305', '2805', 'yam chan sergio ariel', 0, 'https://hub.stullerlandcommunity.com/employees/2805.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f0479e52-2c19-400d-86e6-d3eb7809e775', '2809', 'castillo de anda yolanda lol-be', 0, 'https://hub.stullerlandcommunity.com/employees/2809.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f04f05d4-ae21-43f8-ab91-701bdf32b33c', '3197', 'tun pacheco lucero beatriz', 1, 'https://hub.stullerlandcommunity.com/employees/3197.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f0b82e6c-40cd-4dbc-941b-e055ea582ec2', '2400', 'may santamaria jose alberto', 1, 'https://hub.stullerlandcommunity.com/employees/2400.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f0ba08d6-e8d9-41ae-be57-fa1ca49102fe', '462', 'ek nieves nelson gerardo', 1, 'https://hub.stullerlandcommunity.com/employees/462.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f0c88e5d-5990-4f5b-95fa-fdfa59da2400', '3190', 'poot chim brayan enrique', 0, 'https://hub.stullerlandcommunity.com/employees/3190.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f0e967ab-404c-4029-ab6d-5c60bb57a070', '3334', 'can cel cristian argenis', 0, 'https://hub.stullerlandcommunity.com/employees/3334.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f141c752-badc-4422-8265-617d545c417d', '3109', 'tamay can ofelia', 1, 'https://hub.stullerlandcommunity.com/employees/3109.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f211bbbe-6b56-4df9-b834-ca496b145e38', '2789', 'flores martinez aldair alejandro', 0, 'https://hub.stullerlandcommunity.com/employees/2789.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f21b0a49-af2d-4667-a317-4b90b0d2cdb1', '2889', 'flota martinez adriana paola', 1, 'https://hub.stullerlandcommunity.com/employees/2889.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f3375db8-1ea7-4466-8ee4-6503895935eb', '2821', 'magaña keb alfredo', 1, 'https://hub.stullerlandcommunity.com/employees/2821.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f3542f97-652e-4546-9e01-b5679a7c12d5', '2770', 'mendez gutierrez manuela', 0, 'https://hub.stullerlandcommunity.com/employees/2770.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f35dd810-a58c-427e-a2a5-e52695a21000', '2878', 'canul canul maria margarita', 0, 'https://hub.stullerlandcommunity.com/employees/2878.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f3646e6d-d5e7-46fd-b214-21af1c9f6b5e', '2701', 'canul chuc maria alejandra', 0, 'https://hub.stullerlandcommunity.com/employees/2701.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f3fe6eb8-3042-42d7-b3a0-4aa89e88b134', '3111', 'perez cabrera fabian azael', 0, 'https://hub.stullerlandcommunity.com/employees/3111.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f3fee7a3-f36e-4f4a-8297-d1d9ba5b07e0', '2839', 'canche chac daniel zacarias', 1, 'https://hub.stullerlandcommunity.com/employees/2839.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f44acce9-4aa6-48f0-9b59-765a269da973', '3057', 'koyoc chac maria leticia', 0, 'https://hub.stullerlandcommunity.com/employees/3057.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f4856ec1-5105-46c1-9195-c3c777458863', '2984', 'basto rivera juan jose', 0, 'https://hub.stullerlandcommunity.com/employees/2984.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f5076871-23c6-4b27-84f1-7342483fb21a', '1416', 'hernandez lopez magdaleno', 1, 'https://hub.stullerlandcommunity.com/employees/1416.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f571c199-01f4-48e6-a5a2-979416480e03', '2818', 'cruz rodriguez luis antonio', 0, 'https://hub.stullerlandcommunity.com/employees/2818.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f58484a4-758c-4d9a-8c65-97aebf172af9', '2948', 'moo ku maria eufemia', 0, 'https://hub.stullerlandcommunity.com/employees/2948.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f5a5534b-215a-4071-b8aa-b76a4e4ec32e', '2135', 'catzin canul adriana', 1, 'https://hub.stullerlandcommunity.com/employees/2135.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f5a72343-9f6e-4a47-8c7a-5f3b95df8f1b', '2775', 'puc canul alissa candelaria', 1, 'https://hub.stullerlandcommunity.com/employees/2775.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f5b13db9-3fa0-44d4-aba4-ccc027c28425', '2955', 'canul novelo david', 0, 'https://hub.stullerlandcommunity.com/employees/2955.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f5b86587-706f-40ad-b2f7-fb1ebe57fb80', '2786', 'balam morales herbert secundino', 0, 'https://hub.stullerlandcommunity.com/employees/2786.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f605294d-46d6-40f2-94ed-caa8a368bd0b', '2791', 'dehesa cruz emmanuel de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/2791.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f60addb9-8667-4aca-975b-31f18f1c5847', '2170', 'garcia gomez lesly faviola', 1, 'https://hub.stullerlandcommunity.com/employees/2170.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f611017a-3ec9-4644-a8bf-ec2a933fc5ff', '2999', 'espadas canul jorge emmanuel', 0, 'https://hub.stullerlandcommunity.com/employees/2999.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f6987b50-b1a9-494a-b428-8bdd1144dc47', '2551', 'arcos lopez edilia', 1, 'https://hub.stullerlandcommunity.com/employees/2551.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f6d56562-e2f8-43de-8314-425b7793d813', '3452', 'novelo mijangos arturo efrain', 1, 'https://hub.stullerlandcommunity.com/employees/3452.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f7449b8b-3717-4de2-8d62-a107f16dce70', '3263', 'maldonado velasco johana sarahi', 0, 'https://hub.stullerlandcommunity.com/employees/3263.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f77424b0-139e-407a-8e76-bb7a0709d916', '3258', 'sabido martinez yamile yolanda', 0, 'https://hub.stullerlandcommunity.com/employees/3258.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f80cc55e-c8d1-4f0e-b1f4-a2b928d855db', '2898', 'garcía flores melsy ibeth', 1, 'https://hub.stullerlandcommunity.com/employees/2898.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f8838a55-3fa7-4a25-b578-01a6c6856dc8', '2968', 'cua ek christofer jonathan', 0, 'https://hub.stullerlandcommunity.com/employees/2968.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f8b248db-d8ba-4de7-995e-70ab6e4e1d7d', '3014', 'baak fajardo javier de jesus', 0, 'https://hub.stullerlandcommunity.com/employees/3014.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f915b641-f3b7-4fd7-ba08-255248067e26', '2792', 'acosta may neydi sarai', 0, 'https://hub.stullerlandcommunity.com/employees/2792.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f978c15b-65c6-44b7-a39c-52f41a0b8dc2', '2755', 'ramos chin ricardo esteban', 0, 'https://hub.stullerlandcommunity.com/employees/2755.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('f9934387-8085-4b2b-a43e-006ba7d18d90', '2178', 'campos chan sulma lucely', 0, 'https://hub.stullerlandcommunity.com/employees/2178.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fa512734-5d78-47a0-9e38-39a32238a681', '2376', 'cua martin juan manuel', 1, 'https://hub.stullerlandcommunity.com/employees/2376.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fa5317f0-a829-47f4-873e-80f8ecad1a7e', '2847', 'chac koyoc arely alejandra', 1, 'https://hub.stullerlandcommunity.com/employees/2847.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fa91b072-d0a7-4d53-a92d-210dee611456', '2941', 'cua chac victor francisco', 0, 'https://hub.stullerlandcommunity.com/employees/2941.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('faa265e5-39a1-42a1-a828-c45636daa69c', '2989', 'gil caamal martha beatriz', 0, 'https://hub.stullerlandcommunity.com/employees/2989.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fabcc51a-b628-4d41-acf1-611d51741242', '2871', 'lopez cervantes paula maribel', 0, 'https://hub.stullerlandcommunity.com/employees/2871.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('faf43a89-7bbd-4168-a2e2-16785a80ea0d', '2346', 'rojas avendaño elizet fernanda', 0, 'https://hub.stullerlandcommunity.com/employees/2346.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fb1dc131-78fb-4d36-aa7a-45c80c73058c', '3128', 'vela chac maria mayra', 0, 'https://hub.stullerlandcommunity.com/employees/3128.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fb85432f-1b2d-4c80-bd3e-59754dac4b30', '3392', 'lopez sanchez jesus alfredo', 0, 'https://hub.stullerlandcommunity.com/employees/3392.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fbdf1b29-5283-4d01-883c-016a24ee0ddb', '3287', 'reyes lopez mayra yazmin', 0, 'https://hub.stullerlandcommunity.com/employees/3287.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fbee56d6-4183-4b53-937a-2ee06efc5c24', '2842', 'canche estrella keila sarai', 1, 'https://hub.stullerlandcommunity.com/employees/2842.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fc39a864-2313-48c8-874b-707660aeb175', '2997', 'aranda chi daniel alberto', 1, 'https://hub.stullerlandcommunity.com/employees/2997.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fc4fcb1e-299c-4bc5-94b5-04926bc22dab', '2793', 'brito chan vanessa irene', 1, 'https://hub.stullerlandcommunity.com/employees/2793.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fca1eab9-f327-4136-b1a1-db5098551fce', '2822', 'cahum koyoc kervin arath', 0, 'https://hub.stullerlandcommunity.com/employees/2822.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fcbd6c07-2fd7-4800-9489-69f878867d59', '2828', 'segura castro marian abigail', 0, 'https://hub.stullerlandcommunity.com/employees/2828.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fcc1935d-db62-4a26-a88b-9077b78f4ac1', '83', 'canul balam carlos azael', 1, 'https://hub.stullerlandcommunity.com/employees/83.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fdb8ecaf-e3b5-4580-b9ae-1d27ae6b3779', '3018', 'cab tinal yobana estefania', 0, 'https://hub.stullerlandcommunity.com/employees/3018.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fe8637dd-f11d-405d-8d25-bf66e6fe07b9', '3221', 'lopez dzul yoana guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/3221.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('febd4bff-bd17-4ee4-ac42-5ff0dde6d0b4', '2366', 'rivero colli alberto', 0, 'https://hub.stullerlandcommunity.com/employees/2366.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('fef44e0f-68e2-4831-a073-849417291940', '3227', 'bracamonte milan katia', 1, 'https://hub.stullerlandcommunity.com/employees/3227.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ff86c84c-2abd-470f-bdf5-b3d2ec470b03', '2583', 'ku tinal maria guadalupe', 0, 'https://hub.stullerlandcommunity.com/employees/2583.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL),
('ffb58721-4912-4abd-b729-ca41f836d0b6', '3158', 'hinojosa poot ariana luceli', 1, 'https://hub.stullerlandcommunity.com/employees/3158.jpg', '2025-06-27 09:08:19.171', '2025-06-27 09:08:19.171', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_roles`
--

CREATE TABLE `auth_user_roles` (
  `id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `role_id` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multilang_academy_courses`
--

CREATE TABLE `multilang_academy_courses` (
  `id` varchar(191) NOT NULL,
  `language_id` varchar(191) NOT NULL,
  `course_id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `manual_url` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `multilang_academy_courses`
--

INSERT INTO `multilang_academy_courses` (`id`, `language_id`, `course_id`, `title`, `description`, `manual_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('490072d0-3d90-4d63-a622-a609d5994faf', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '490072d0-3d90-4d63-a622-a609d5994faf', 'inspeccion de calidad (qc)', NULL, 'http://hub.stullerlandcommunity.com/storage/94c533bf04c92c53e02481319a0cd1d77ddf5975f6fb53633447d91267263202.png', '2025-06-27 09:08:19.373', '2025-06-27 09:08:19.373', NULL),
('5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5c40e8a7-9c24-49a6-b5dc-55055d2e61d5', 'engarce a 1-1 (aprendice)', NULL, 'http://hub.stullerlandcommunity.com/storage/e0483586dd7f08f37f73c1326fc8c903bb9ace6af6ff36f96260e4695fef4d7b.png', '2025-06-27 09:08:19.373', '2025-06-27 09:08:19.373', NULL),
('639b1b9e-ca45-4f11-9031-90995a389ad1', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '639b1b9e-ca45-4f11-9031-90995a389ad1', 'counter sketch (designer)', NULL, 'http://hub.stullerlandcommunity.com/storage/c5a293919a1f36cac4ef4b4123cb2ae010b9ee3a6926b18f47554ad6f875e999.png', '2025-06-27 09:08:19.373', '2025-06-27 09:08:19.373', NULL),
('8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8f57994a-7c2c-4d7b-aaac-679bdc1ddc43', 'casting', NULL, 'http://hub.stullerlandcommunity.com/storage/07467ecf2d3e4bf658c016e1567f82e99274e3819ceab57b2a74a5aee439855f.png', '2025-06-27 09:08:19.373', '2025-06-27 09:08:19.373', NULL),
('91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '91a1342d-9579-4e99-a3f6-4bdfad58a4e0', 'pulido (aprendice)', NULL, 'http://hub.stullerlandcommunity.com/storage/87d2cd46f75deff6908e4b4e5a9149e21ffc7f6fac6a2646b25cbaa3eaccb9a0.png', '2025-06-27 09:08:19.373', '2025-06-27 09:08:19.373', NULL),
('c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c20dbbdd-36c0-49c0-b4b0-c3ff71ebf298', 'engarce a 1-2 (aprendice)', NULL, NULL, '2025-06-27 09:08:19.373', '2025-06-27 09:08:19.373', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multilang_academy_lessons`
--

CREATE TABLE `multilang_academy_lessons` (
  `id` varchar(191) NOT NULL,
  `language_id` varchar(191) NOT NULL,
  `lesson_id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `resource_url` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `multilang_academy_lessons`
--

INSERT INTO `multilang_academy_lessons` (`id`, `language_id`, `lesson_id`, `title`, `description`, `resource_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('03964edf-89f9-488f-bcc9-362317d0504c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '03964edf-89f9-488f-bcc9-362317d0504c', 'ensintado de cubiletes', NULL, '', '2025-07-02 09:30:27.000', '2025-07-02 09:30:27.000', NULL),
('03be960f-a9d7-44bd-b501-ca969f071983', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '03be960f-a9d7-44bd-b501-ca969f071983', 'semana 3 - 123096', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('03e1f8e8-dd8d-4e07-89e2-ace8bcc294f0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '03e1f8e8-dd8d-4e07-89e2-ace8bcc294f0', 'semana 5 - 122790', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('04746a5f-b82d-4b87-8b94-1d9776f17f87', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '04746a5f-b82d-4b87-8b94-1d9776f17f87', 'semana 9 - 122870', NULL, 'https://iseazy.com/dl/65a9739c19934e8f9d3d1fd20f26a44d', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('047c4af8-27cf-4e16-9257-3cca0e489b5a', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '047c4af8-27cf-4e16-9257-3cca0e489b5a', 'palo de fieltro', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('05db43ce-17be-4cbe-9e57-818d0340e2a0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '05db43ce-17be-4cbe-9e57-818d0340e2a0', 'ejercicios de precision con el maneral', NULL, 'https://iseazy.com/dl/02f93934718a4a74bc3b19b646b2e80b', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('07ca5e3c-1497-468a-84c3-79d1b654f077', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '07ca5e3c-1497-468a-84c3-79d1b654f077', 'semana 3 - 86807', NULL, 'https://iseazy.com/dl/93a5ee9c23ab497f85cdbe9ebbe2af56', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('08c9907a-a8fb-4782-a823-a97b5685e502', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '08c9907a-a8fb-4782-a823-a97b5685e502', 'barra de menus', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('09fc66b7-6661-48df-8d50-58c42f930930', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '09fc66b7-6661-48df-8d50-58c42f930930', 'bienvenida', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('120f3525-8cd0-41ab-896b-fb75ae9d7575', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '120f3525-8cd0-41ab-896b-fb75ae9d7575', 'semana 5 - 122969', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('142866f3-8788-4c8e-8001-30870c67223c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '142866f3-8788-4c8e-8001-30870c67223c', 'diseño basico produccion', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('169fc4bf-ab18-4e6d-84c5-020201df5bcc', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '169fc4bf-ab18-4e6d-84c5-020201df5bcc', 'transform', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('1a8ffadd-a507-4830-ba26-d9677e3b7db4', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '1a8ffadd-a507-4830-ba26-d9677e3b7db4', 'semana 9 - 122892', NULL, 'https://iseazy.com/dl/02924a000d254ed096533b8d08fd0155', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('1b7d8fcd-2427-4539-b298-69065ffa5d50', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '1b7d8fcd-2427-4539-b298-69065ffa5d50', 'barras de herramienta', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('1b90b415-5ad9-4ac9-b232-27460f486cb7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '1b90b415-5ad9-4ac9-b232-27460f486cb7', 'semana 5 - 123989', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('215db300-f68a-4b7b-9a3e-70b801858ea0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '215db300-f68a-4b7b-9a3e-70b801858ea0', 'anatomia de un diamante', NULL, 'https://iseazy.com/dl/97e1aae8e57245c997528510bda0a7e9', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('24464379-ee99-4020-83d3-0f727e6efccb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '24464379-ee99-4020-83d3-0f727e6efccb', 'semana 3 - 86740', NULL, 'https://iseazy.com/dl/c867113ab01a4760bd3b69bc66e01692', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('246e13b5-9b3f-44bf-9bc8-ec63fdecacf8', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '246e13b5-9b3f-44bf-9bc8-ec63fdecacf8', 'semana 4 - 123881', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('274689e0-4129-45c4-b0fe-84a0fb9ec1cd', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '274689e0-4129-45c4-b0fe-84a0fb9ec1cd', 'library', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('29efef21-b11f-40a1-b88c-fe021f2cbb6f', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '29efef21-b11f-40a1-b88c-fe021f2cbb6f', 'anatomia de un diamante', NULL, '', '2025-07-02 09:42:20.000', '2025-07-02 09:42:20.000', NULL),
('2aba5ac1-b98c-4642-a4ff-efb4a094123d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '2aba5ac1-b98c-4642-a4ff-efb4a094123d', 'copas', NULL, 'https://iseazy.com/dl/3d4b2fc4dcd3437b9af58bda4e765f71', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('2bee491f-2299-484a-8299-d3ec4717c845', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '2bee491f-2299-484a-8299-d3ec4717c845', 'arma tu reconocimiento', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('2e0f2114-5bbf-4e5e-ad83-3c64d64a910f', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '2e0f2114-5bbf-4e5e-ad83-3c64d64a910f', 'semana 2 - 122789', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('2f22033a-fa75-48f5-8257-07a3d92c7ccf', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '2f22033a-fa75-48f5-8257-07a3d92c7ccf', 'semana 4 - 123620', NULL, 'https://iseazy.com/dl/49c6870317c94de7ac852413f3ba5e7e', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('2f9547f9-5daa-424b-a958-0856c2d3fbe0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '2f9547f9-5daa-424b-a958-0856c2d3fbe0', 'semana 7 - 71708 & 122047', NULL, 'https://iseazy.com/dl/b81646e473cf4dff83ddc2d35cd14f43', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('301d2457-eb1b-4764-963d-b308d480f57c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '301d2457-eb1b-4764-963d-b308d480f57c', 'semana 7 - 71993 & 72034', NULL, 'https://iseazy.com/dl/2282c22289dd4853bda0ccd2d0295aef', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('32a3b7f9-1f67-493d-894b-49ce09c8c6bf', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '32a3b7f9-1f67-493d-894b-49ce09c8c6bf', 'surfaces', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('366513ab-d34e-45b4-a70d-6b711d3ad961', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '366513ab-d34e-45b4-a70d-6b711d3ad961', 'projects', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('39244889-8f9e-4117-9089-ddd3c42e83da', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '39244889-8f9e-4117-9089-ddd3c42e83da', 'reposos - horno - curado', NULL, '', '2025-07-02 09:34:27.000', '2025-07-02 09:34:27.000', NULL),
('3d176832-1580-413d-8a84-e1c4afdd938c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '3d176832-1580-413d-8a84-e1c4afdd938c', 'utilities', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('3fc1b525-f868-483e-9634-27bbc170c864', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '3fc1b525-f868-483e-9634-27bbc170c864', 'semana 5 - 123192', NULL, 'https://iseazy.com/dl/985e485a681e426f8bdfb351a99516d9', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('4196cb8e-5ec4-4aeb-a854-6f2f0c7be6aa', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4196cb8e-5ec4-4aeb-a854-6f2f0c7be6aa', 'bienvenida', NULL, 'https://iseazy.com/dl/0a3e42d174b04ddfb1033073230bd872', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('422d3e58-36db-4d47-b81b-83cfcc46d26d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '422d3e58-36db-4d47-b81b-83cfcc46d26d', 'anatomia de un diamante', NULL, 'n/a', '2025-07-02 09:25:24.000', '2025-07-02 09:25:24.000', NULL),
('44e31af8-f871-4052-9345-a4e642a48e49', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '44e31af8-f871-4052-9345-a4e642a48e49', 'semana 3 - 71817', NULL, 'https://iseazy.com/dl/777ca69ba7f143dcada1132fecd2338a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('4b5aa9c9-7fba-4952-bd91-da46f910b53d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4b5aa9c9-7fba-4952-bd91-da46f910b53d', 'semana 9 - 86428', NULL, 'https://iseazy.com/dl/8db2fa9e4a4f4cebb50ccc80b8dbe85a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('4c5d52f3-c20c-4d13-b740-ac73bdf005d5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4c5d52f3-c20c-4d13-b740-ac73bdf005d5', 'pesado y calculo de material', NULL, '', '2025-07-02 09:30:27.000', '2025-07-02 09:30:27.000', NULL),
('4dc71444-78b6-4498-aa09-69a2120eaa7e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4dc71444-78b6-4498-aa09-69a2120eaa7e', 'semana 3 - sh276', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('4e95ac9e-a7d9-49f3-a7cd-40183386f7af', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4e95ac9e-a7d9-49f3-a7cd-40183386f7af', 'final del modulo pinpoint', NULL, 'https://iseazy.com/dl/ddbd3125449e4c9f91ea2568cb183a1c', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('5001e0fa-65fe-4f87-9cf2-d426ce9d561c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5001e0fa-65fe-4f87-9cf2-d426ce9d561c', 'semana 1 - 120768', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('50fb9c4a-734d-4f2d-bf1e-a0db06a062d7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '50fb9c4a-734d-4f2d-bf1e-a0db06a062d7', 'preparacion de mezcla', NULL, '', '2025-07-02 09:33:01.000', '2025-07-02 09:33:01.000', NULL),
('540ed2e2-828e-44ed-b140-7ac5cec863cb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '540ed2e2-828e-44ed-b140-7ac5cec863cb', 'semana 4 - 122036', NULL, 'https://iseazy.com/dl/2d731cbc1420434faeef5e535af7710e', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('55526706-6e32-4867-9a46-c5ff149e09c9', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '55526706-6e32-4867-9a46-c5ff149e09c9', 'inspeccion con optivisor', NULL, 'n/a', '2025-07-02 09:02:53.000', '2025-07-02 09:26:45.077', NULL),
('5969e024-3df8-4770-a110-cd20dbe913eb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5969e024-3df8-4770-a110-cd20dbe913eb', 'math', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('5a2f72d5-1537-48c2-af1c-eaf55876ead1', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5a2f72d5-1537-48c2-af1c-eaf55876ead1', 'semana 5 - 123658', NULL, 'https://iseazy.com/dl/16707df4073746699cebedbd8694e777', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('5ca4ef67-4011-453d-b87e-15ed0efa0121', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5ca4ef67-4011-453d-b87e-15ed0efa0121', 'brocha', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('5cc71b07-cf8f-4f24-9ca0-fe350a7b45c2', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5cc71b07-cf8f-4f24-9ca0-fe350a7b45c2', 'anatomia de un anillo', '', 'n/a', '2025-07-02 09:25:24.000', '2025-07-02 09:25:24.000', NULL),
('5d07b6e7-203a-4642-9f7b-074071ada45e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5d07b6e7-203a-4642-9f7b-074071ada45e', 'semana 4 - 71993', NULL, 'https://iseazy.com/dl/1e5179815dcc4099ac6cf2a956d40ee8', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('5e54ecd4-4d4b-4055-9a81-8316c5e48220', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5e54ecd4-4d4b-4055-9a81-8316c5e48220', 'anatomia de un anillo', NULL, '', '2025-07-02 09:42:20.000', '2025-07-02 09:42:20.000', NULL),
('601524b5-2690-4911-8fe8-03b5207a7fa6', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '601524b5-2690-4911-8fe8-03b5207a7fa6', 'ejercicio banda bypass', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('605f4d53-68f0-4188-b391-1065038259b9', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '605f4d53-68f0-4188-b391-1065038259b9', 'semana 8 - 123713', NULL, 'https://iseazy.com/dl/913b6352574b4fd0abac7fad550c7fc2', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('633772c5-9655-4405-8574-08fd2f58ae17', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '633772c5-9655-4405-8574-08fd2f58ae17', 'la pantalla de designer', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('6607d123-d320-41c8-8886-c843ef84a623', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6607d123-d320-41c8-8886-c843ef84a623', 'gems', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('669ddcc9-d7ce-4ae6-a4b7-dd5ef1224e51', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '669ddcc9-d7ce-4ae6-a4b7-dd5ef1224e51', 'anatomia de un anillo', NULL, 'n/a', '2025-07-02 08:54:10.000', '2025-07-02 08:55:49.927', NULL),
('68fa298e-fcf2-4c4e-b25d-c66a207f9685', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '68fa298e-fcf2-4c4e-b25d-c66a207f9685', 'bienvenida', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('6c88b53d-af00-416a-945a-56c783f5d4b0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6c88b53d-af00-416a-945a-56c783f5d4b0', 'semana 8 - 123461 & 123558', NULL, 'https://iseazy.com/dl/dfe1e553d9364c819eacbeb5b30e9f48', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('6e5199fa-64d7-4f81-9f06-016dc27e343b', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6e5199fa-64d7-4f81-9f06-016dc27e343b', 'settings', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('721b1ac7-b1af-474a-9136-a42e291e0c36', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '721b1ac7-b1af-474a-9136-a42e291e0c36', 'stack', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('751e7ba5-872d-4993-91d0-a8ef72ee8d08', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '751e7ba5-872d-4993-91d0-a8ef72ee8d08', 'ejercicio solitario con bezel', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('76ee5fe7-9c2c-4fbc-a3d8-99c5cba4cc7c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '76ee5fe7-9c2c-4fbc-a3d8-99c5cba4cc7c', 'settings – heads', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('7e7fd5b6-1d2b-4efb-b766-4c975be3a311', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '7e7fd5b6-1d2b-4efb-b766-4c975be3a311', 'bails', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('82073095-08c2-45bc-8b8c-18540d8b767f', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '82073095-08c2-45bc-8b8c-18540d8b767f', 'ejercicio solitario con prones construidos', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('824e7150-c7f1-42c7-9038-1749728f3033', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '824e7150-c7f1-42c7-9038-1749728f3033', 'semana 7 - 123213', NULL, 'https://iseazy.com/dl/af7b98f2e87f421688227cf98c8377a4', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('83208928-a7b6-4b92-ba51-dc1ad97384fb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '83208928-a7b6-4b92-ba51-dc1ad97384fb', 'dental', NULL, '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('8587fa42-d92e-44ca-a49c-0f3c5f33ae45', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8587fa42-d92e-44ca-a49c-0f3c5f33ae45', 'cubiletes', NULL, '8785de92-f262-49df-b494-407c84ed774e', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('87976141-319b-412e-ae4b-84c9991a0afd', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '87976141-319b-412e-ae4b-84c9991a0afd', 'diseño rc04 studio', NULL, 'n/a', '2025-07-02 09:21:59.000', '2025-07-02 09:26:39.718', NULL),
('87f95f69-60eb-405f-8ddd-c8ac3da98a4d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '87f95f69-60eb-405f-8ddd-c8ac3da98a4d', 'semana 6 - 71817', NULL, 'https://iseazy.com/dl/e7438de0d24d45c38edd6bed984e5057', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('88e2c84a-6f72-4e0e-8cc3-20bbd168633f', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '88e2c84a-6f72-4e0e-8cc3-20bbd168633f', 'semana 4 - 123451', NULL, '0ebd03b7-b904-4d94-9929-89792cfb28d5', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('8ba461c7-d154-4b1c-a263-da5a7eac4419', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8ba461c7-d154-4b1c-a263-da5a7eac4419', 'semana 5 - 71861', NULL, 'https://iseazy.com/dl/bc212ae0d0c749e78065d24d04e3676d', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('8c2c61b8-3fc0-4664-8ee0-15af1cd7d310', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8c2c61b8-3fc0-4664-8ee0-15af1cd7d310', 'semana 2 - 123208', NULL, '9019223e-79da-44c9-92c4-102f4959af64', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('8cce7d20-b115-46cd-8e9c-231a498b3997', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8cce7d20-b115-46cd-8e9c-231a498b3997', 'ejercicio banda con prongs compartidos', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('8d2f4be2-5d05-4083-a28b-d90017f7b053', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8d2f4be2-5d05-4083-a28b-d90017f7b053', 'semana 9 - 123461, 122105 & 123620', NULL, 'https://iseazy.com/dl/1d4754b3933647688eddb2729e94a361', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('8e317723-82cc-4781-a160-f4e45237f770', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8e317723-82cc-4781-a160-f4e45237f770', 'semana 1 - 123192', NULL, '', '2025-07-02 09:45:01.000', '2025-07-02 09:45:01.000', NULL),
('92ed6d8c-418e-442e-8c28-d5baf6c532ba', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '92ed6d8c-418e-442e-8c28-d5baf6c532ba', 'tools', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('93821c66-a083-4ad0-8876-5436aeb14d8d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '93821c66-a083-4ad0-8876-5436aeb14d8d', 'semana 9 - 86722, 86763 & 86807', NULL, 'https://iseazy.com/dl/55c13e80941440e9a9a322865329793c', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('96314727-3546-486f-bd3c-d0cc52a8d8c7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '96314727-3546-486f-bd3c-d0cc52a8d8c7', 'semana 3 - r43067', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('9c988c29-32c9-46ee-b42d-cf3c2b434cca', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9c988c29-32c9-46ee-b42d-cf3c2b434cca', 'script', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('9ed5848a-69a2-4d91-ab01-be2224c50293', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9ed5848a-69a2-4d91-ab01-be2224c50293', 'adaptador', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('9ee2cd46-7df4-45fa-8f99-dc9c46c9d83c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9ee2cd46-7df4-45fa-8f99-dc9c46c9d83c', 'anatomia de un diamante', NULL, 'n/a', '2025-07-02 08:54:10.000', '2025-07-02 08:55:46.607', NULL),
('9fbaefee-b08e-4056-b156-4bc308a65f15', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9fbaefee-b08e-4056-b156-4bc308a65f15', 'semana 8 - 86222 & 71675', NULL, 'https://iseazy.com/dl/17d02ab03d744d25b0afc4291fc1ca1c', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('9fcdd7a0-4c39-4ff7-b125-600ddc4662ea', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9fcdd7a0-4c39-4ff7-b125-600ddc4662ea', 'semana 8 - 122859', NULL, 'https://iseazy.com/dl/a392a0d0824143eeb767fb62ce85fcf2', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('a5bd4268-217d-4db5-8f78-d5b56bdc7569', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'a5bd4268-217d-4db5-8f78-d5b56bdc7569', 'semana 6 - 123079', NULL, 'https://iseazy.com/dl/b940ebaa3c264c83a0d82b13052160b5', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('a640b3b3-c25d-480a-9f2e-84412228c04b', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'a640b3b3-c25d-480a-9f2e-84412228c04b', 'herramientas nuevas', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('a9a7a134-bd26-42ba-bad8-57037b189cc4', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'a9a7a134-bd26-42ba-bad8-57037b189cc4', 'settings – bezels', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('aa90adf0-9114-4854-91ba-8e4447dd8740', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'aa90adf0-9114-4854-91ba-8e4447dd8740', 'inspeccion microscopio', NULL, 'n/a', '2025-07-02 09:02:53.000', '2025-07-02 09:26:47.050', NULL),
('ac7df671-2d9f-4c5b-b325-fd7c28f2e6ce', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ac7df671-2d9f-4c5b-b325-fd7c28f2e6ce', 'semana 5 - 123964 ', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('aff9e244-a408-4006-a7fb-9fc326ccfeb7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'aff9e244-a408-4006-a7fb-9fc326ccfeb7', 'inspeccion con lupa 10x', NULL, 'n/a', '2025-07-02 09:02:53.000', '2025-07-02 09:26:43.559', NULL),
('b07c52bf-e491-4640-87f6-53d29c2693f5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b07c52bf-e491-4640-87f6-53d29c2693f5', 'er view / rhino view', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('b40b5a63-e74c-41e7-903a-7a78c4b9b0c2', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b40b5a63-e74c-41e7-903a-7a78c4b9b0c2', 'semana 5 - 123450', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('b65866bb-b89f-4394-8766-99e044465ff3', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b65866bb-b89f-4394-8766-99e044465ff3', 'semana 4 - 123337', NULL, 'https://iseazy.com/dl/cf790423bc934a3991ef8107f2e0c39f', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('b65c0d8b-4876-4826-9576-c7b3209a21f5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b65c0d8b-4876-4826-9576-c7b3209a21f5', 'sombrillas', NULL, 'https://iseazy.com/dl/5f693b8fe9004fdca7eccc5bcf61515f', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('b67730d2-27e2-4393-93ba-b2c2a0b3b3e4', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b67730d2-27e2-4393-93ba-b2c2a0b3b3e4', 'practica en uso y control del maneral', NULL, 'https://iseazy.com/dl/6ad3119467784e7088521e9e64498ebc', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('b7d60cae-a4b1-4d98-8676-6e7cf339d7c0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b7d60cae-a4b1-4d98-8676-6e7cf339d7c0', 'semana 6 - 71709', NULL, 'https://iseazy.com/dl/1b08ea1fa0d940228550433e70d74547', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('b85dce88-8ac9-4c63-b31a-42fcbea31072', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b85dce88-8ac9-4c63-b31a-42fcbea31072', 'practica de corte de prongs', NULL, 'https://iseazy.com/dl/e04e360717984db98a31508ba46bdc2b', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('ba8f48cf-09c5-4c9c-95c2-a1220ab176a7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ba8f48cf-09c5-4c9c-95c2-a1220ab176a7', 'inspeccion 18 pulgadas', NULL, 'n/a', '2025-07-02 09:02:53.000', '2025-07-02 09:26:41.902', NULL),
('bade2f69-b01e-4529-a662-c122d1bd0653', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'bade2f69-b01e-4529-a662-c122d1bd0653', 'redondas', NULL, 'https://iseazy.com/dl/a4956544cb3949ba8f86e254d58eb61b', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('bdaecda7-2d89-4d55-929f-9154bcc897ce', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'bdaecda7-2d89-4d55-929f-9154bcc897ce', 'optivisor', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('bdf4594f-b044-4a0b-923a-caa7f54d980e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'bdf4594f-b044-4a0b-923a-caa7f54d980e', 'cutters', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('be800f06-f06a-4d7f-b133-bcc07501e8ea', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'be800f06-f06a-4d7f-b133-bcc07501e8ea', 'vertir de metal', NULL, '', '2025-07-02 09:36:09.000', '2025-07-02 09:36:09.000', NULL),
('bf429931-fe7b-4fca-a356-1a87ee86de01', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'bf429931-fe7b-4fca-a356-1a87ee86de01', 'semana 7 - 123337 & 86740', NULL, 'https://iseazy.com/dl/9d806e076fd448999c34eeccaa21fb74', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c101b5ca-7e39-4a66-a9f2-b7fe991795c1', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c101b5ca-7e39-4a66-a9f2-b7fe991795c1', 'empujadores', NULL, 'https://iseazy.com/dl/7d9052e8099549b5b0f0f39dced0fa21', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c2dbd504-a8d8-4e9d-a88a-76b125dd12cf', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c2dbd504-a8d8-4e9d-a88a-76b125dd12cf', 'mota corrugada', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c3fe20f7-f9db-4cf3-ab56-642c6d27b0d0', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c3fe20f7-f9db-4cf3-ab56-642c6d27b0d0', 'semana 8 - 71861', NULL, 'https://iseazy.com/dl/b39747576ccb4094bdcd8f18fc60303e', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c7dddb6a-5a6f-4627-99b5-db98de5aa7c5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c7dddb6a-5a6f-4627-99b5-db98de5aa7c5', 'acabado de prongs', NULL, 'https://iseazy.com/dl/0143b1eb70e74f6ba0fbb18f7e47017b', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c7ecde3c-7532-4efa-afb9-1f11ebd34112', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c7ecde3c-7532-4efa-afb9-1f11ebd34112', 'mota de brillo', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c7ed54a5-256f-4868-85bf-97a628e77070', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c7ed54a5-256f-4868-85bf-97a628e77070', 'semana 5 - 123823', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('c9d5e5ee-8f5b-4fc9-a502-68f612c24133', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c9d5e5ee-8f5b-4fc9-a502-68f612c24133', 'rails', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('cb6830bd-25d7-4ebb-a8db-fa961d7d30bf', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'cb6830bd-25d7-4ebb-a8db-fa961d7d30bf', 'bienvenida', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('ce26232e-5c2f-4b3e-97f5-b9d21864d084', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ce26232e-5c2f-4b3e-97f5-b9d21864d084', 'semana 3 - 123538', NULL, 'https://iseazy.com/dl/b05db7fef7d04d4fa34a857632c353d3', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('ce6c1855-8e39-4290-bed6-95ac0bf1e3c7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ce6c1855-8e39-4290-bed6-95ac0bf1e3c7', 'semana 7 - 122099', NULL, 'https://iseazy.com/dl/535e10a7d26a41cf823d00d851f91274', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d14a7e50-f446-4328-a315-d25b816bd25f', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd14a7e50-f446-4328-a315-d25b816bd25f', 'semana 2 - 124766', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d2ab72b5-3818-4909-a0a4-c6f3fdd36833', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd2ab72b5-3818-4909-a0a4-c6f3fdd36833', 'profile placer', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d325b57c-1948-4912-a90a-fe6487a7161d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd325b57c-1948-4912-a90a-fe6487a7161d', 'semana 6 - 123390', NULL, 'https://iseazy.com/dl/f86cff91fe43439cab0aa953109b9cb8', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d722c4cd-6f93-44e0-af98-5eeecf34c50f', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd722c4cd-6f93-44e0-af98-5eeecf34c50f', 'builders', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d8d6e530-1d4c-4916-a574-80abeda51fc3', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd8d6e530-1d4c-4916-a574-80abeda51fc3', 'solids', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d8d9292c-29a8-413c-b085-774a4146ab33', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd8d9292c-29a8-413c-b085-774a4146ab33', 'semana 5 - 122977', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('d9c8a6c4-368d-45e9-be23-5b05541c1b7a', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'd9c8a6c4-368d-45e9-be23-5b05541c1b7a', 'semana 1 - 122981', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('da0ab328-8aeb-4436-9e3a-e2deb5e7775e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'da0ab328-8aeb-4436-9e3a-e2deb5e7775e', 'points', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('da5f065f-b08e-40e5-b6e8-a888933448f2', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'da5f065f-b08e-40e5-b6e8-a888933448f2', 'afilar buriles', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('de91d531-6b38-4ce8-9933-cdd2f303cb38', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'de91d531-6b38-4ce8-9933-cdd2f303cb38', 'semana 4 - 86222', NULL, 'https://iseazy.com/dl/16bd263bd95f4a20b432639b276e07e9', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('e082e1b4-035e-46b2-b902-1bc92c9841e4', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e082e1b4-035e-46b2-b902-1bc92c9841e4', 'ejercicio solitario', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('e1a48890-e2e5-4734-addd-55e241f381b1', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e1a48890-e2e5-4734-addd-55e241f381b1', 'semana 2 - 123675', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('e261ea3d-7047-4382-a663-f91a67a81474', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e261ea3d-7047-4382-a663-f91a67a81474', 'final del modulo shared-prong', NULL, 'https://iseazy.com/dl/c90308a79f864d4fbc6d032ec803bd2a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('e29a480d-3cda-4b57-b75b-3bdb67d153e5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e29a480d-3cda-4b57-b75b-3bdb67d153e5', 'arbolitos de cera', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('e674dc2a-6e0c-463a-90af-c1654e880f50', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e674dc2a-6e0c-463a-90af-c1654e880f50', 'curves', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('e73b357e-f498-4ade-8af4-fef4d82198ef', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e73b357e-f498-4ade-8af4-fef4d82198ef', 'semana 6 - 123558', NULL, 'https://iseazy.com/dl/7e5b78479b364113869f2afff2143c4e', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('eacf36ec-7a0a-4964-b521-4a0b31ffc265', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'eacf36ec-7a0a-4964-b521-4a0b31ffc265', 'gems – clusters', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('ec6134fa-9019-4869-ac29-6afe77eb2ffb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ec6134fa-9019-4869-ac29-6afe77eb2ffb', 'semana 5 - 122877', NULL, 'https://iseazy.com/dl/6b9ddd9604934d93a4241ff6015dcdda', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('ef6d8cd4-921d-4eff-b052-30675fdb0c22', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ef6d8cd4-921d-4eff-b052-30675fdb0c22', 'anatomia del anillo', NULL, 'https://iseazy.com/dl/43d4210fdeaf4e93b00352bd1c06b6e0', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('f11b91ec-ae9e-4467-9e39-1392ce9a1fac', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f11b91ec-ae9e-4467-9e39-1392ce9a1fac', 'final del modulo de center-prong', NULL, 'https://iseazy.com/dl/a0164c0a1bcf46228b9a7ee75869f103', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('f41a657c-77ec-4769-8bdf-efa85c746536', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f41a657c-77ec-4769-8bdf-efa85c746536', 'bienvenida', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('f54fbb7a-9eba-4715-a8b4-f3974a46b4a3', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f54fbb7a-9eba-4715-a8b4-f3974a46b4a3', 'diseño pendant studio', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('f90bf601-56dd-4a71-b34a-0acec6c0406c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f90bf601-56dd-4a71-b34a-0acec6c0406c', 'semana 4 - 123225', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL),
('fa742262-97a0-45d4-b485-a260b039964e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'fa742262-97a0-45d4-b485-a260b039964e', 'bienvenida', NULL, '', '2025-07-02 09:38:14.000', '2025-07-02 09:38:14.000', NULL),
('feae3344-8f98-4740-88de-282528ce077c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'feae3344-8f98-4740-88de-282528ce077c', 'caps and collars', NULL, 'n/a', '2025-06-27 09:08:19.543', '2025-06-27 09:08:19.543', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multilang_academy_sections`
--

CREATE TABLE `multilang_academy_sections` (
  `id` varchar(191) NOT NULL,
  `language_id` varchar(191) NOT NULL,
  `section_id` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `multilang_academy_sections`
--

INSERT INTO `multilang_academy_sections` (`id`, `language_id`, `section_id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
('07fc34d6-b494-46d8-91b0-6a948bd00cf7', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '07fc34d6-b494-46d8-91b0-6a948bd00cf7', 'devesting', 'después del choque térmico, es momento de limpiar el árbol. en este módulo te mostramos cómo usar la hidrolavadora de forma eficiente para remover el revestimiento sin dañar la joyería.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('0ebd03b7-b904-4d94-9929-89792cfb28d5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '0ebd03b7-b904-4d94-9929-89792cfb28d5', 'montado de piedras french set', 'aprende a realizar engastes tipo french con detalles refinados. desarrolla precisión al posicionar piedras pequeñas en un patrón elegante.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('0f0f069b-30e4-45b7-9215-1db86c7f3234', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '0f0f069b-30e4-45b7-9215-1db86c7f3234', 'pre-pulido con brocha (c1)', 'usa la brocha con pasta abrasiva (c1) para eliminar imperfecciones sin dañar los detalles de la pieza.\n\n', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('12cdcc90-4aa4-4d91-8042-59cf8e13f51e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '12cdcc90-4aa4-4d91-8042-59cf8e13f51e', 'reconocimiento', 'módulo dedicado a valorar tu esfuerzo, constancia y mejora. reconoce tu avance en técnica, precisión y resultados.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('178bd879-8547-42c0-bd54-d5f4a08d7138', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '178bd879-8547-42c0-bd54-d5f4a08d7138', 'sem 1 interfaz counter sketch designer ', 'explora el entorno visual del software: desde la barra de menús hasta la vista superview y rhinoview. conocer la interfaz te dará control total desde el inicio.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('28cdba22-ec79-456a-8e3b-52df3cbef053', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '28cdba22-ec79-456a-8e3b-52df3cbef053', 'proceso completo', 'integra todo lo aprendido realizando el proceso completo de pulido desde el pre-pulido hasta el brillo final.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('31db78b6-a1c2-4f5f-b00d-410636e3c0f1', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '31db78b6-a1c2-4f5f-b00d-410636e3c0f1', 'metodo de inspeccion', 'aplicarás una metodología clara y efectiva para realizar inspecciones paso a paso, asegurando consistencia, objetividad y trazabilidad en cada evaluación.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('32fd7e1d-2b1f-41e6-a516-7176794808ce', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '32fd7e1d-2b1f-41e6-a516-7176794808ce', 'choque termico ', 'el choque térmico ayuda a fracturar el yeso y liberar el árbol metálico. aprende cómo realizarlo de forma segura para evitar daños en las piezas o deformaciones.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('376781e4-4c01-456f-993a-1f0b3dcfcc29', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '376781e4-4c01-456f-993a-1f0b3dcfcc29', 'diagrama de sarampion', 'con esta herramienta visual aprenderás a registrar, analizar y atacar los defectos desde su origen. ¡transforma datos en mejoras reales dentro del proceso!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '3bae2c6d-1cdd-47d7-ab47-2ff48c7c6540', 'herramientas de engarce', 'conocerás a fondo cada herramienta del engarzador: su uso, cuidado y función en el proceso. ¡tus manos serán más precisas y tus resultados más profesionales!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('46b66a58-615f-4758-a0af-9cf8534265b8', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '46b66a58-615f-4758-a0af-9cf8534265b8', 'tecnica para el  uso del maneral', 'aprenderás la técnica adecuada para manejar el maneral, evitando errores y logrando acabados firmes, estéticos y consistentes.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4a6f472a-dfb5-4c0d-9f75-b42207a71d59', 'sem 3 herramientas counterskech designer', 'profundiza en builders, surfaces y bails. aprende a construir estructuras completas y superficies a partir de curvas. ¡tu joya empieza a tomar forma!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '4ea525cf-fc6a-411d-9eef-fc9bfdd8f237', 'montado de piedras single claw prong', 'domina el montaje con una sola garra por piedra. ideal para diseños ligeros, donde se requiere precisión y estética limpia.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('53c78114-d1e1-4f7d-a2e5-3f6e0b7d36ad', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '53c78114-d1e1-4f7d-a2e5-3f6e0b7d36ad', 'como afilar buriles', 'aprende a preparar correctamente tus buriles. afilar tus herramientas mejora el control, la seguridad y el acabado final en el proceso de engarce.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('5801d2be-9fa2-4283-8dd6-85f5c511e868', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5801d2be-9fa2-4283-8dd6-85f5c511e868', 'reconocimiento', 'en este módulo celebramos tu constancia y compromiso. reconocemos el conocimiento adquirido y el impacto que generas en cada pieza que engarzas.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('5a3f35b6-fe18-4e24-9189-4e2972e1e212', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5a3f35b6-fe18-4e24-9189-4e2972e1e212', 'bienvenida', '¡bienvenidos al fascinante mundo del casting de joyería! en este curso conocerás paso a paso cómo transformamos ideas en piezas únicas, con precisión, técnica y pasión por el detalle.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('5d46ce62-9259-413f-b81e-009db36cb339', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5d46ce62-9259-413f-b81e-009db36cb339', 'atributos', 'características que provienen de procesos como inyección de cera o casting. no son defectos, pero deben conocerse para evaluar correctamente la pieza.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('5d8c0787-814c-4130-b4b4-5abe0a65587a', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5d8c0787-814c-4130-b4b4-5abe0a65587a', 'defectos', 'errores generados al transformar la pieza (pulido, engarce, etc.). aprenderás a detectarlos, clasificarlos y prevenirlos.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('5dece5c1-1dd8-4f6b-a688-1c5feadcd915', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5dece5c1-1dd8-4f6b-a688-1c5feadcd915', 'conocimientos generales', 'aprenderás los fundamentos del pulido: tipos de abrasivos, velocidades, presión y seguridad para lograr un trabajo de calidad.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '5ff227a1-d8a0-4ba5-bf73-11cef34572cb', 'herramientas de pulido', 'conoce las herramientas esenciales: brochas, pastas y discos. aprende su uso correcto para evitar errores y obtener mejores resultados.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('604a7e9d-a7f8-43fd-9419-388b15c3b4c6', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '604a7e9d-a7f8-43fd-9419-388b15c3b4c6', 'bienvenida', 'inicia tu formación en pulido. este curso te guiará paso a paso para dominar cada técnica y obtener acabados profesionales.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('65a35c6a-c947-4ed1-85a0-a9c0feb1363b', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '65a35c6a-c947-4ed1-85a0-a9c0feb1363b', 'conocimientos', 'verás conceptos clave como la expansión, contracción y el comportamiento de los materiales en el casting. ¡te ayudará a entender mejor todo el proceso!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('6821bdec-a2d0-4f6b-aae0-4f79f7001290', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6821bdec-a2d0-4f6b-aae0-4f79f7001290', 'falta de proceso', 'cuando una pieza no pasó por una etapa esencial. aprenderás a identificarla aunque no tenga defectos visibles.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('6c5926be-3da5-43bc-a71e-ecce0493b16e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6c5926be-3da5-43bc-a71e-ecce0493b16e', 'montado de piedras shared prong', 'descubre cómo fijar dos piedras con una sola garra, logrando alineación, firmeza y estética en piezas delicadas con máxima eficiencia.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('6d8de92d-22bb-469e-b8d6-a7643b726bd5', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6d8de92d-22bb-469e-b8d6-a7643b726bd5', 'curado de cubiletes', 'una vez mezclado el yeso, los cubiletes deben ser curados correctamente para lograr una estructura resistente. aquí te mostraremos los tiempos, temperaturas y condiciones ideales de curado.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('6eea11df-6a4f-4661-88eb-911f5f9e0305', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '6eea11df-6a4f-4661-88eb-911f5f9e0305', 'ejercicios counter sketch', 'aplica lo aprendido en ejercicios prácticos que te ayudarán a reforzar tu lógica, precisión y habilidad de diseño. ¡el mejor aprendizaje es haciendo!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('703be787-656f-439c-93d6-39dbd309c425', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '703be787-656f-439c-93d6-39dbd309c425', 'bienvenida', '¡aquí comienza tu camino en countersketch designer! te damos la bienvenida a un curso diseñado para transformar tus ideas en joyería real.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('703cef2e-fe6d-44e7-8c6d-d66f1665dd87', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '703cef2e-fe6d-44e7-8c6d-d66f1665dd87', 'nuevas herramientas', 'conocerás herramientas adicionales para el engarce que te ayudarán a trabajar con más precisión y eficiencia. aprenderás su uso, propósito y cuándo aplicarlas correctamente.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('7758a6c0-6ffb-4a41-aaa1-0b7d5835941d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '7758a6c0-6ffb-4a41-aaa1-0b7d5835941d', 'bienvenida', 'aquí comienza tu camino para convertirte en un experto del engarce. cada módulo está diseñado para impulsarte paso a paso, con claridad, técnica y pasión por el engarce.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('7fa024be-a054-4a57-99a7-826573bc334e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '7fa024be-a054-4a57-99a7-826573bc334e', 'pre-pulido de piezas con palo de fieltro y prepulido', 'descubre cómo usar el palo de fieltro con pasta para preparar superficies planas y curvas antes del pulido final.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('808d387d-76ac-4b65-bbec-f7b533956358', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '808d387d-76ac-4b65-bbec-f7b533956358', 'investing', 'verás cómo lograr una mezcla uniforme, sin burbujas, que copie cada detalle de tu modelo de cera.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('80e71a41-c2cc-435e-aff9-4394bfd40899', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '80e71a41-c2cc-435e-aff9-4394bfd40899', 'montado de piedras pinpoint', 'este módulo te entrenará para fijar piedras pequeñas con alta precisión, cuidando cada detalle estético y asegurando una fijación segura y eficiente.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('8785de92-f262-49df-b494-407c84ed774e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8785de92-f262-49df-b494-407c84ed774e', 'accesorios', NULL, '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('8d90fcbc-4075-4131-a6a8-62870d39598e', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8d90fcbc-4075-4131-a6a8-62870d39598e', 'reconocimiento', 'celebramos tu constancia y compromiso. este módulo reconoce tu progreso y preparación para avanzar hacia técnicas más complejas.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('8fc35fa6-0398-4ee6-9765-efebb833a507', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '8fc35fa6-0398-4ee6-9765-efebb833a507', 'montado de piedras center prong', 'aprenderás a montar piedras centrales cuidando su firmeza, simetría y atractivo visual. ¡porque el corazón de la joya debe lucir perfecto!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('9019223e-79da-44c9-92c4-102f4959af64', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9019223e-79da-44c9-92c4-102f4959af64', 'montado de piedras round channel', 'descubre cómo montar piedras en canal redondo, cuidando el alineamiento, la presión y la firmeza de la fijación. ideal para bandas y estilos modernos.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('91dc634f-73e9-40cf-a02f-0cd1254973cd', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '91dc634f-73e9-40cf-a02f-0cd1254973cd', 'montado de piedras double claw prong', 'aprende a fijar piedras con doble garra. este método garantiza mayor seguridad y simetría, especialmente en piedras de mayor valor.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('9dcdab30-8f5e-4b1f-b26e-81c1afcfd2fd', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', '9dcdab30-8f5e-4b1f-b26e-81c1afcfd2fd', 'conocimientos', 'reforzarás los principios esenciales de la calidad en joyería, comprendiendo el porqué de cada criterio y cómo influye en la percepción y satisfacción del cliente final.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('ae305717-c913-415f-86f6-e0b4be9a23a4', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ae305717-c913-415f-86f6-e0b4be9a23a4', 'preparado de cubiletes', 'el proceso comienza con el correcto preparado de los cubiletes. aquí aprenderás cómo limpiarlos, secarlos y etiquetarlos para garantizar fundiciones exitosas y sin contaminaciones.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('b737ad58-5a3c-42f4-bf7d-6240934feb4c', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'b737ad58-5a3c-42f4-bf7d-6240934feb4c', 'pre-pulido de pendantes con dental', 'técnica especializada para pre-pulir piezas colgantes usando herramienta tipo dental, ideal para zonas pequeñas y delicadas.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'bcb5bc14-a03a-4c61-b2b3-a2bf8634ded8', 'practicas counter sketch', 'resuelve retos reales de diseño. experimenta con distintos estilos de anillos, gemas, estructuras y funcionalidades. ¡es momento de poner tu creatividad en acción!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('be358e10-2d8b-41f4-9fcf-1f050775c931', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'be358e10-2d8b-41f4-9fcf-1f050775c931', 'clipping', 'en este paso final, cortamos las piezas del árbol con precisión. te enseñaremos a utilizar las herramientas adecuadas, cuidando la integridad de cada diseño.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('be800f06-f06a-4d7f-b133-bcc07501e8ea', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'be800f06-f06a-4d7f-b133-bcc07501e8ea', 'fundicion', 'aquí ocurre la magia: ¡el metal se transforma! conocerás cómo manejar el horno de fundición, los controles de temperatura y seguridad, y cómo verter el metal en el molde con precisión.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c0967d22-25a5-40fe-bbb8-2da6c0ed6216', 'sem 2 herramientas counterskech designer', 'aprende el uso de herramientas básicas como curvas, perfiles, gemas y railes. empieza a construir piezas con lógica y precisión desde cero.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c45cb73f-2ed8-44e3-ac2e-956f87b4e667', 'montado de piedras de engarces combinados', 'aprenderás a montar piezas que combinan distintos tipos de engarce, aplicando todo lo aprendido y llevando tu habilidad al siguiente nivel.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('c6a3735f-ae74-4b20-b7a8-afb799da0d21', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'c6a3735f-ae74-4b20-b7a8-afb799da0d21', 'desarrollo de tecnicas de corte', 'en este módulo desarrollarás técnicas clave para realizar cortes limpios y controlados, preparando la pieza con exactitud desde el inicio y asegurando un resultado final impecable.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('ceca39f5-1e72-4f25-8f58-307b61e16129', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'ceca39f5-1e72-4f25-8f58-307b61e16129', 'conocimientos para este modulo', 'refuerza conceptos esenciales del engarce. comprende el porqué detrás de cada paso para tomar decisiones técnicas más acertadas al trabajar con joyería.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('e82241f1-32d8-4fe0-aceb-cbfb78ff910d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'e82241f1-32d8-4fe0-aceb-cbfb78ff910d', 'conocimiento', 'en este módulo reforzarás los principios esenciales del engarce, comprendiendo el porqué de cada paso para tomar decisiones más acertadas.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('eeb0c527-6a4a-4810-890b-6f05a5e3de0d', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'eeb0c527-6a4a-4810-890b-6f05a5e3de0d', 'bienvenida', 'inicia tu camino como inspector de calidad. este curso te guiará paso a paso con enfoque técnico y práctico para asegurar piezas impecables.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('f0fdd2f7-c8ed-435e-8a4e-181385659ccb', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f0fdd2f7-c8ed-435e-8a4e-181385659ccb', 'herramientas para inspeccion ', 'conocerás a fondo cada herramienta del inspector: su uso, cuidado y función en el proceso. ¡tus ojos serán más agudos y tus manos más seguras al evaluar!', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('f6d5dc3e-934f-438c-9459-1b67b88b9ade', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f6d5dc3e-934f-438c-9459-1b67b88b9ade', 'bienvenida', 'te damos la bienvenida a un curso diseñado para formar expertos en engarce. aquí comienza tu camino para dominar las técnicas, herramientas y procesos del montaje de piedras.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'f8aa3292-ffe3-4e47-9e6c-5a303fed12ff', 'sem 4 herramientas counterskech designer', 'entra al mundo de los detalles: cortes, sólidos, booleanas y scripting. aprende a manipular objetos, combinar formas y llevar tus diseños al siguiente nivel.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL),
('fe47c44d-8dd5-4acc-84ab-619c7720c184', 'd3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'fe47c44d-8dd5-4acc-84ab-619c7720c184', 'brillo', 'aprende a dar el acabado final usando pastas de brillo, logrando una superficie limpia, pulida y lista para inspección.', '2025-06-27 09:08:19.451', '2025-06-27 09:08:19.451', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multilang_languages`
--

CREATE TABLE `multilang_languages` (
  `id` varchar(191) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `native_name` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `multilang_languages`
--

INSERT INTO `multilang_languages` (`id`, `code`, `name`, `native_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('d3feedb5-c3f6-4fb3-b5f0-25ddf343cd50', 'es', 'Spanish', 'Español', '2025-06-27 09:08:19.358', '2025-06-27 09:08:19.358', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academy_courses`
--
ALTER TABLE `academy_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academy_courses_author_id_fkey` (`author_id`);

--
-- Indices de la tabla `academy_enrollments`
--
ALTER TABLE `academy_enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academy_enrollments_user_id_fkey` (`user_id`),
  ADD KEY `academy_enrollments_course_id_fkey` (`course_id`);

--
-- Indices de la tabla `academy_lessons`
--
ALTER TABLE `academy_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academy_lessons_section_id_fkey` (`section_id`);

--
-- Indices de la tabla `academy_progress`
--
ALTER TABLE `academy_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academy_progress_user_id_fkey` (`user_id`),
  ADD KEY `academy_progress_lesson_id_fkey` (`lesson_id`);

--
-- Indices de la tabla `academy_sections`
--
ALTER TABLE `academy_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academy_sections_course_id_fkey` (`course_id`);

--
-- Indices de la tabla `assistant_bots`
--
ALTER TABLE `assistant_bots`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `assistant_bot_skills`
--
ALTER TABLE `assistant_bot_skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bot_id` (`bot_id`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indices de la tabla `assistant_messages`
--
ALTER TABLE `assistant_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bot_id` (`bot_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `skill_call_id` (`skill_call_id`);

--
-- Indices de la tabla `assistant_message_types`
--
ALTER TABLE `assistant_message_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `assistant_parameter_types`
--
ALTER TABLE `assistant_parameter_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `assistant_skills`
--
ALTER TABLE `assistant_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `assistant_skill_parameters`
--
ALTER TABLE `assistant_skill_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_id` (`skill_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indices de la tabla `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_roles`
--
ALTER TABLE `auth_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_role_permissions`
--
ALTER TABLE `auth_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_roles_role_id_permission_id_key` (`role_id`,`permission_id`),
  ADD KEY `auth_permission_roles_permission_id_fkey` (`permission_id`);

--
-- Indices de la tabla `auth_sessions`
--
ALTER TABLE `auth_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_sessions_user_id_fkey` (`user_id`);

--
-- Indices de la tabla `auth_users`
--
ALTER TABLE `auth_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `auth_user_roles`
--
ALTER TABLE `auth_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_roles_user_id_role_id_key` (`user_id`,`role_id`),
  ADD KEY `auth_user_roles_role_id_fkey` (`role_id`);

--
-- Indices de la tabla `multilang_academy_courses`
--
ALTER TABLE `multilang_academy_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_course_language` (`language_id`,`course_id`),
  ADD KEY `fk_multilang_academy_courses_course` (`course_id`);

--
-- Indices de la tabla `multilang_academy_lessons`
--
ALTER TABLE `multilang_academy_lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lesson_translation` (`language_id`,`lesson_id`),
  ADD KEY `fk_lesson_base` (`lesson_id`);

--
-- Indices de la tabla `multilang_academy_sections`
--
ALTER TABLE `multilang_academy_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_section_translation` (`language_id`,`section_id`),
  ADD KEY `fk_section_base` (`section_id`);

--
-- Indices de la tabla `multilang_languages`
--
ALTER TABLE `multilang_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `academy_courses`
--
ALTER TABLE `academy_courses`
  ADD CONSTRAINT `academy_courses_author_id_fkey` FOREIGN KEY (`author_id`) REFERENCES `auth_users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `academy_enrollments`
--
ALTER TABLE `academy_enrollments`
  ADD CONSTRAINT `academy_enrollments_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `academy_courses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academy_enrollments_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `academy_lessons`
--
ALTER TABLE `academy_lessons`
  ADD CONSTRAINT `academy_lessons_section_id_fkey` FOREIGN KEY (`section_id`) REFERENCES `academy_sections` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `academy_progress`
--
ALTER TABLE `academy_progress`
  ADD CONSTRAINT `academy_progress_lesson_id_fkey` FOREIGN KEY (`lesson_id`) REFERENCES `academy_lessons` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academy_progress_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `academy_sections`
--
ALTER TABLE `academy_sections`
  ADD CONSTRAINT `academy_sections_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `academy_courses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `assistant_bot_skills`
--
ALTER TABLE `assistant_bot_skills`
  ADD CONSTRAINT `assistant_bot_skills_ibfk_1` FOREIGN KEY (`bot_id`) REFERENCES `assistant_bots` (`id`),
  ADD CONSTRAINT `assistant_bot_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `assistant_skills` (`id`);

--
-- Filtros para la tabla `assistant_messages`
--
ALTER TABLE `assistant_messages`
  ADD CONSTRAINT `assistant_messages_ibfk_1` FOREIGN KEY (`bot_id`) REFERENCES `assistant_bots` (`id`),
  ADD CONSTRAINT `assistant_messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_users` (`id`),
  ADD CONSTRAINT `assistant_messages_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `assistant_message_types` (`id`),
  ADD CONSTRAINT `assistant_messages_ibfk_4` FOREIGN KEY (`skill_call_id`) REFERENCES `assistant_bot_skills` (`id`);

--
-- Filtros para la tabla `assistant_skill_parameters`
--
ALTER TABLE `assistant_skill_parameters`
  ADD CONSTRAINT `assistant_skill_parameters_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `assistant_skills` (`id`),
  ADD CONSTRAINT `assistant_skill_parameters_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `assistant_parameter_types` (`id`);

--
-- Filtros para la tabla `auth_role_permissions`
--
ALTER TABLE `auth_role_permissions`
  ADD CONSTRAINT `auth_permission_roles_permission_id_fkey` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_permission_roles_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `auth_roles` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_sessions`
--
ALTER TABLE `auth_sessions`
  ADD CONSTRAINT `auth_sessions_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_user_roles`
--
ALTER TABLE `auth_user_roles`
  ADD CONSTRAINT `auth_user_roles_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `auth_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_user_roles_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `auth_users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `multilang_academy_courses`
--
ALTER TABLE `multilang_academy_courses`
  ADD CONSTRAINT `fk_multilang_academy_courses_course` FOREIGN KEY (`course_id`) REFERENCES `academy_courses` (`id`),
  ADD CONSTRAINT `fk_multilang_academy_courses_language` FOREIGN KEY (`language_id`) REFERENCES `multilang_languages` (`id`);

--
-- Filtros para la tabla `multilang_academy_lessons`
--
ALTER TABLE `multilang_academy_lessons`
  ADD CONSTRAINT `fk_lesson_base` FOREIGN KEY (`lesson_id`) REFERENCES `academy_lessons` (`id`),
  ADD CONSTRAINT `fk_lesson_lang` FOREIGN KEY (`language_id`) REFERENCES `multilang_languages` (`id`);

--
-- Filtros para la tabla `multilang_academy_sections`
--
ALTER TABLE `multilang_academy_sections`
  ADD CONSTRAINT `fk_section_base` FOREIGN KEY (`section_id`) REFERENCES `academy_sections` (`id`),
  ADD CONSTRAINT `fk_section_lang` FOREIGN KEY (`language_id`) REFERENCES `multilang_languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
