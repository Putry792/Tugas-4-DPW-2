-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 08:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_dpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_product` varchar(255) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL,
  `berat` varchar(30) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `halaman` int(11) DEFAULT NULL,
  `terbit` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_user`, `nama_product`, `harga`, `berat`, `deskripsi`, `stok`, `penulis`, `halaman`, `terbit`, `created_at`, `update_at`) VALUES
(28, 0, 'Kami (Bukan) Sarjana Kertas', '84.150', '0.285', 'Di Kampus UDEL, terjebaklah tujuh mahasiswa yang hidup segan kuliah tak mau. Mereka terpaksa kuliah di kampus yang google saja tak dapat mendeteksi. Cobalah sekarang Anda googLing \"Kampus UDEL\", takkan bertemu!\r\n\r\nAlasan mereka masuk UDEL macam-macam. Ada yang otaknya tak mampu masuk negeri, ada yang uang orangtuanya tak cukup masuk swasta unggul, ada pula yang karena.. biar kuliah aja.\r\n\r\nHari pertama kuliah, Ibu Lira Estrini-dosen konseling yang masih muda-menggemparkan kelas dengan sebuah kejadian gila, lucu dan tak masuk akal. Ia membawa sekotak piza dan koper berisi tikus. Seisi kelas panik, tapi anehnya, semangat para mahasiswa buangan ini justru terbakar untuk berani bermimpi !\r\n\r\nAkankah mereka bertahan di kampus yang ambudarul ini? Sekalipun iya, bisakah mereka jadi sarjana yang tidak sekadar di atas kertas?', 30, 'Js. Khairen', 370, '2020-12-16', NULL, '2022-08-30 13:48:37'),
(30, 0, 'Laut Bercerita', '75.000', '0.315', 'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.', 15, 'Leila S. Chudori', 400, '2017-12-21', NULL, '2022-08-30 14:18:23'),
(33, 0, 'Filosofi Teras', '83.300', '0.32', 'Lebih dari 2000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turun nya kehidupan.\r\n\r\nJauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini.', 8, 'Henry Manampiring', 298, '2018-11-26', NULL, '2022-08-30 14:22:17'),
(36, 0, 'The Art Of Loving', '55.000', '0.15', 'THE ART OF LOVING Manusia di zaman ini harus jujur bahwa “dahaga akan cinta” itu nyata terjadi dan dialami. Sudah berapa ribu kali Anda mendengarkan lagu-lagu “murahan” tentang cinta? Sudah berapa ratus kali Anda menonton film cinta—entah itu berakhir bahagia atau tragis? Tema tentang cinta seakan tak pernah habis-habisnya dieksploitasi untuk memenuhi rasa dahaga itu. The Art of Loving—buku fenomenal karya Erich Fromm yang telah diterjemahkan ke 42 bahasa—meyakinkan pembacanya bahwa semua upaya demi meraih cinta akan gagal jika seseorang tidak terlebih dulu mengembangkan seluruh kepribadiannya; bahwa pemenuhan cinta seseorang hanya dapat diraih dengan kemampuan untuk mencintai orang lain, dengan kerendahan dan keteguhan hati, serta keyakinan dan kedisiplinan. Dalam karya klasiknya ini, Fromm membongkar seluruh aspek cinta, tidak hanya asmara, yang kerap diwarnai pengertian keliru dan ekspektasi tinggi, tetapi juga cinta orangtua, anak, dan sesame; cinta erotis; cinta diri; dan cinta Allah. The Art of Loving ditandai dengan penolakan untuk menyerah pada kegundahan, sebagai usaha nyata untuk mencari makna kehidupan dalam era modern yang penuh keterasingan. Bagi Fromm, cinta adalah “satu-satunya jawaban yang waras dan memuaskan terhadap masalah eksistensi manusia.”', 5, 'Erich Fromm', 188, '2020-03-02', NULL, '2022-08-30 14:27:24'),
(37, 0, 'Jika Kita Tak Pernah Jadi Apa-Apa', '80.000', '0.235', 'Kau melihat teman-teman dan mereka sudah mendapatkan impian,\r\n\r\nsementara kau masih termangu menggenggam harapan. Pelan, dalam hati kau berujar, “Kapan mimpiku terwujud?”\r\n\r\nJika Kita Tak Pernah Jadi Apa-Apa\r\n\r\nSelama perjalanan mencapai tujuan, adakalanya kau melihat sekeliling… menakar jauh jangkauan. Atau, kau malah membandingkannya dengan orang lain. Lalu, lupa melanjutkan perjalanan.\r\n\r\nJika Kita Tak Pernah Jadi Apa-Apa\r\n\r\nBenarkah segala usaha dan upayamu selama ini lebur bersama kecewa yang kau bangun sendiri? Sungguhkah sesuatu yang hanya kau lihat dalam dunia maya menjadikanmu merasa bukan apa-apa?\r\n\r\nJika Kita Tak Pernah Jadi Apa-Apa akan menemanimu selama\r\n\r\nperjalanan. Buku ini untukmu yang khawatir tentang masa depan. Tenang saja, kau tidak sedang diburu waktu. Bacalah tiap lembarnya dengan penuh kesadaran bahwa hidup adalah tentang sebaik-baiknya berusaha, jatuh lalu bangun lagi, dan tidak berhenti percaya bahwa segala perjuanganmu tidak akan sia-sia. Bukankah sebaiknya apa-apa yang fana tidak selayaknya membuatmu kecewa?', 15, 'Alvi Syahrin', 248, '2019-11-19', NULL, '2022-08-30 14:28:52'),
(38, 0, 'Insecurity Is My Middle Name', '80.000', '0.3', '\"Isi buku:\r\n1. Kenapa good-loking yang selalu dipilih?\r\n2. Lalu, siapa yamg akan memilihku?\r\n3. Aku juga kayaknya nggak bisa apa-apa deh.\r\n4. Skill apa, ya, yang cocok buat aku? |\r\n5. Tapi, aku harus mulai dari mana, ya?\r\n6. Aku bukan malas, hanya takut gagal lagi.\r\n7. Dan, aku malu, belum bisa banggain orangtua.\r\n8. Dan, aku kalah jauh dari teman-temanku.\r\n9. Jujur, aku iri sama pencapaian mereka.\r\n10. Nggak ada yang bisa dibanggakan dariku. .\r\ntapi, di sinilah kamu, menyentuh buku ini, trying to feel something, trying to be something,\r\ndan kamu sudah ada di langkah yang tepat, karena di buku ini, ada 45 bab yang membantumu berdamai\r\ndengan insecunty-mu.\"', 25, 'Alvi Syahrin', 264, '2021-08-27', NULL, '2022-08-30 14:30:13'),
(39, 0, 'Berani Tidak Disukai', '95.000', '0.5', 'membaca buku ini bisa mengubah hidup anda. jutaan orang sudah menarik manfaat darinya. sekarang giliran anda.\r\n\r\nBerani Tidak Disukai, yang sudah terjual lebih dari 3,5 juta eksemplar, mengungkap rahasia mengeluarkan kekuatan terpendam yang memungkinkan Anda meraih kebahagiaan yang hakiki dan menjadi sosok yang Anda idam-idamkan.\r\n\r\nApakah kebahagiaan adalah sesuatu yang Anda pilih?\r\n\r\nBerani Tidak Disukai menyajikan jawabannya secara sederhana dan langsung. Berdasarkan teori Alfred Adler, satu dari tiga psikolog terkemuka abad kesembilan belas selain Freud dan Jung, buku ini mengikuti percakapan yang menggugah antara seorang filsuf dan seorang pemuda. Dalam lima percakapan yang terjalin, sang filsuf membantu muridnya memahami bagaimana masing-masing dari kita mampu menentukan arah hidup kita, bebas dari belenggu trauma masa lalu dan beban ekspektasi orang lain.\r\n\r\nBuku yang kaya kebijaksanaan ini akan memandu Anda memahami konsep memaafkan diri sendiri, mencintai diri, dan menyingkirkan hal-hal yang tidak penting dari pikiran. Cara pikir yang membebaskan ini memungkinkan Anda membangun keberanian untuk mengubah dan mengabaikan batasan yang mungkin Anda berlakukan bagi diri Anda.', 12, 'Ichiro Kishimi Dan Fumitake Koga', 350, '2019-10-07', NULL, '2022-08-31 13:04:57'),
(40, 0, 'Berani Bahagia', '80.000', '0.3', 'Bagaimana bila satu pilihan sederhana bisa menguak takdir Anda?\r\n\r\nBuku yang membuka mata dan mudah dipahami ini memaparkan pengajaran yang kuat dari Alfred Adler, salah satu tokoh besar psikolog abad kesembilan belas, lewat percakapan yang gamblang antara seorang filsuf dan seorang pemuda.\r\n\r\nTiga tahun setelah percakapan pertama mereka, si pemuda merasa kecewa karena mendapati bahwa gagasan Adler hanya bekerja dalam teori, bukan praktik keseharian. Namun, lewat dialog mendalam antara sang filsuf dan pemuda itu, mereka memperdalam pemahaman mereka tentang pengajaran Adler, mempelajari sarana-sarana yang diperlukan untuk menerapkannya dalam kekacauan hidup sehari-hari.\r\n\r\nEntah dibaca sendiri atau melengkapi buku bestseller sebelumnya, Berani Tidak Disukai, buku ini mengungkapkan cara berpikir dan menjalani hidup yang baru dan berani, memberdayakan Anda untuk melepaskan belenggu trauma masa lalu dan ekspektasi orang lain, menggunakan kebebasan ini untuk menciptakan kehidupan yang benar-benar Anda dambakan.\r\n\r\nBerani Bahagia akan menyalakan api yang menerangi hidup Anda dan mencerahkan dunia. Temukan keberanian untuk memilih menjadi bahagia.', 10, 'Ichiro Kishimi Dan Fumitake Koga', 200, '2020-10-12', NULL, '2022-08-31 13:07:31'),
(41, 0, 'Tentang Kamu', '75.000', '0.5', 'Terima kasih untuk kesempatan mengenalmu,\r\nitu adalah salah satu anugerah terbesar hidupku.\r\nCinta memang tidak perlu ditemukan,\r\ncintalah yang akan menemukan kita.\r\n\r\n\r\n\r\nTerima kasih. Nasihat lama itu benar sekali.\r\naku tidak akan menangis karena sesuatu telah\r\nberakhir, tapi aku akan tersenyum karena sesuatu itu pernah terjadi.\r\n\r\n\r\n\r\nMasa lalu, Rasa sakit, Masa depan. Mimpi-mimpi.\r\nSemua akan berlalu, seperti sungai yang mengalir.\r\nMaka biarlah hidupku mengalir seperti sungai kehidupan.', 5, 'Tere Liye', 524, '2016-10-27', NULL, '2022-08-31 13:09:20'),
(42, 0, 'Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa', '100.000', '0.4', 'Orang mengira ketika Anda ingin mengubah hidup, Anda perlu memikirkan hal-hal besar. Namun pakar kebiasaan terkenal kelas dunia James Clear telah menemukan sebuah cara\r\n\r\nlain. Ia tahu bahwa perubahan nyata berasal dari efek gabungan ratusan keputusan kecil—dari mengerjakan dua push-up sehari, bangun lima menit lebih awal, sampai menahan sebentar hasrat untuk menelepon.\r\n\r\nIa menyebut semua tadi atomic habits.\r\n\r\nDalam buku terobosan ini, Clear pada hakikatnya mengungkapkan bagaimana perubahan-perubahan sangat remeh ini dapat tumbuh menjadi hasil-hasil yang sangat mengubah\r\n\r\nhidup. Ia menyingkap beberapa trik sederhana dalam hidup kita (seni Menumpuk Kebiasaan yang terlupakan, kekuatan tak terduga Aturan Dua Menit, atau trik untuk masuk ke dalam Zona Goldilocks), dan menggali ke dalam teori psikologi dan neurosains paling baru untuk menerangkan mengapa semua itu penting. Dalam rangka itu, ia menceritakan kisah-kisah inspiratif para peraih medali emas Olimpiade, para CEO terkemuka, dan ilmuwan-ilmuwan istimewa yang telah menggunakan sains tentang kebiasaan-kebiasaan kecil untuk tetap produktif, tetap termotivasi, dan bahagia.\r\n\r\nPerubahan-perubahan kecil ini akan mendatangkan pengaruh revolusioner pada karier Anda, hubungan pribadi Anda, dan hidup Anda.', 7, 'James Clear', 356, '2019-09-15', NULL, '2022-08-31 13:10:41'),
(43, NULL, 'Rasa', '80.000', '0.345', 'Apakah memaafkan itu mudah diberikan?\r\nApakah melupakan itu ringan dilakukan?\r\nSayangnya, itu sering kali lebih enteng diucapkan,\r\ntapi di hati terdalam tetap begitulah.\r\n\r\nBagaimana caranya kita memeluk erat semua\r\nrasa marah, benci, sakit hati, ketika itu bahkan\r\nbaru mulai dibicarakan saja sudah menyakitkan?\r\nBagaimana berdamai dengan situasi tersebut?\r\n\r\nInilah novel tentang ’rasa’.\r\n\r\nBerbagai rasa berkumpul di novel ini.\r\n\r\nJika kalian tertawa, menangis, atau merenung\r\npanjang saat membaca buku ini, ingatlah selalu:\r\napapun yang terjadi atas kehidupan,\r\ntidak semuanya berjalan sesuai keinginan kita.\r\nTapi kita selalu bisa menerimanya.', 5, 'Tere Liye', 421, '2022-04-22', NULL, '2022-09-04 02:17:58'),
(44, 2, 'Rasa', '98.000', '0.315', 'Apakah memaafkan itu mudah diberikan?\r\nApakah melupakan itu ringan dilakukan?\r\nSayangnya, itu sering kali lebih enteng diucapkan,\r\ntapi di hati terdalam tetap begitulah.\r\n\r\nBagaimana caranya kita memeluk erat semua\r\nrasa marah, benci, sakit hati, ketika itu bahkan\r\nbaru mulai dibicarakan saja sudah menyakitkan?\r\nBagaimana berdamai dengan situasi tersebut?\r\n\r\nInilah novel tentang ’rasa’.\r\n\r\nBerbagai rasa berkumpul di novel ini.\r\n\r\nJika kalian tertawa, menangis, atau merenung\r\npanjang saat membaca buku ini, ingatlah selalu:\r\napapun yang terjadi atas kehidupan,\r\ntidak semuanya berjalan sesuai keinginan kita.\r\nTapi kita selalu bisa menerimanya.', 9, 'Tere Liye', 298, NULL, NULL, '2022-09-04 06:14:57'),
(45, 2, 'Melangkah', '65.100', '0.25', 'Listrik padam di seluruh Jawa dan Bali secara misterius! Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara.\r\n\r\nSaat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik! Semua dipersulit oleh seorang buronan tingkat tinggi bertopeng pahlawan yang punya rencana mengerikan.\r\n\r\nTernyata pesan arwah nenek moyang itu benar-benar terwujud. “Akan datang kegelapan yang berderap, bersama ribuan kuda raksasa di kala malam. Mereka bangun setelah sekian lama, untuk menghancurkan Nusantara. Seorang lelaki dan seorang perempuan ditakdirkan membaurkan air di lautan dan api di pegunungan. Menyatukan tanah yang menghujam, dan udara yang terhampar.”\r\n\r\nKisah tentang persahabatan, tentang jurang ego anak dan orangtua, tentang menyeimbangkan logika dan perasaan. Juga tentang melangkah menuju masa depan. Bahwa, apa pun yang menjadi luka masa lalu, biarlah mengering bersama waktu.', 5, 'Js. Khairen', 368, '2020-03-23', NULL, '2022-09-04 06:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_user`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Putry', 'Putry', 'aksara@gmail.com', '$2y$10$2XUA9iXQwqHAxhxmzwNX/u2Ts8676A/xdisERKmkBr5q2Z9o9/JSe', NULL, '2022-08-24 18:54:04', '2022-09-02 22:41:14'),
(8, NULL, 'Admin', 'Aksara Admin', 'admin@gmail.com', '$2y$10$GxGnPg/iHncBJhlXY8CP0uN/BH9eCaQzxVfYiIFSyQ8.k/ITrCAbC', NULL, '2022-08-25 08:21:41', '2022-08-25 08:21:52'),
(25, NULL, 'Dzaki', 'Dzaki11', 'dzaki@gmail.com', '$2y$10$CMOB.mD0Czg4IIbByYf4MOqV/k1LLMlt7UP6WbY4xGKVdv91wc2ZC', NULL, '2022-09-04 00:01:14', '2022-09-04 00:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `update_at`) VALUES
(1, 23, '+628277176006', '2022-09-04 01:49:36', '2022-09-04 01:49:36'),
(2, 24, '089636407028', '2022-09-04 02:00:36', '2022-09-04 02:00:36'),
(3, 25, '+628277176006', '2022-09-04 07:01:14', '2022-09-04 07:01:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
