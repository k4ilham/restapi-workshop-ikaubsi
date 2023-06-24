-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2021 at 09:30 PM
-- Server version: 8.0.27
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `kategori_name` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Kuliner', '2021-12-15 22:06:39', 1, '2021-12-15 22:06:41', 1),
(2, 'Wisata', '2021-12-15 22:07:11', 1, '2021-12-15 22:07:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `username`, `password`, `token`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'ILHAM MAULANA', 'i.maulana', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '2021-12-15 00:00:00', 1, '2021-12-15 00:00:00', 1),
(2, 'RAIHAN MAULANA', 'r.maulana', '5e8667a439c68f5145dd2fcbecf02209', '5e8667a439c68f5145dd2fcbecf02209', '2021-12-15 00:00:00', 1, '2021-12-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int NOT NULL,
  `id_kategori` int DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `summary` text,
  `hit_count` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `id_kategori`, `title`, `image`, `summary`, `hit_count`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'kafe.in.ciapus', 'https://flutter.id/apiwisata/assets/1.png', 'OFFEE SHOP BARU INSTAGRAMABLE REKOMEN! Coffee Shop baru ini namanya @kafe.in.ciapus lokasinya ada di Kota Batu, Ciapus, tepatnya di Jl. Kapten Yusuf No.188C, Kota Batu, Ciapus, Bogor persis di samping SPBU. Konsepnya minimalis outdoor dengan banyak spot instagramable. Lagi ada PROMO Harga Spesial untuk menu signaturenya Kopi BTS CUMA 18rb dari harga 22rb. @kafe.in.ciapus ini konsep nya sangat unik dan instagramable banget! Area nya 70% oudoor dan punya banyak spot-spot foto terbaik untuk OOTD. Trus ada LIVE MUSIC lho setiap hari sabtu yang bisa kamu nikmati', 41, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1),
(2, 2, 'Curug Cikuluwung', 'https://flutter.id/apiwisata/assets/2.png', 'Curug Cikuluwung memiliki air berwarna biru yang indah. Bahkan, ada yang menyebut bahwa tempat ini mirip Grand Canyon versi Indonesia dengan air mengalir. Disebut grand canyon karena adanya tebing batu yang ada di kiri sepanjang aliran sungai. Untuk biaya masuk kesini cukup dengan 35rb per orang ya visitors', 43, '2021-12-15 21:57:26', 1, '2021-12-15 21:57:29', 1),
(3, 2, 'Kayumas Vila', 'https://flutter.id/apiwisata/assets/3.png', 'Kayuman Vilas merupakan salah satu objek wisata berupa tempat penginapan di Bogor yang lagi banyak diminati nih visitors. Di sini kamu akan mendapatkan pengalaman menginap dengan suasana vibes ala Bali, selain itu di sini pesona alamnya sangat indah. Untuk menginap harga yang di tawarkan mulai dari 700rb untuk weekdays dan 800rb untuk weekend\r\n—\r\nKayumanvilas\r\nCimande, Kec. Caringin, Kabupaten Bogor, Jawa Barat 16730', 26, '2021-12-17 07:29:29', 1, '2021-12-17 07:29:29', 1),
(4, 2, 'Curug Walet', 'https://flutter.id/apiwisata/assets/4.png', 'Dinamakan curug walet karena daerah curug ini terdapat banyak burung walet, ada di dinding tebing bebatuan maupun pepohonan. Selain itu curug ini juga memiliki 3 tingkatan sehingga tempat ini memiliki keindahan curug yang berbeda\r\n—\r\nCurug Walet\r\nGn. Sari, Kec. Pamijahan, Bogor, Jawa Barat 16810', 20, '2021-12-17 07:29:29', 1, '2021-12-17 07:29:29', 1),
(5, 2, 'Danau Quarry Rumpin', 'https://flutter.id/apiwisata/assets/5.png', 'Danau Quarry Rumpin merupakan bekas pertambangan pasir. Danau indah ini mengandung bahan material batu dan pasir, sehingga dulunya tempat ini adalah bekas lahan pertambangan pasir. Namun saat ini lokasi tersebut sering dikunjungi para traveller karna keindahannya.\r\n—\r\nDanau Quarry Rumpin\r\nKp. Nuggaherang, Tegalega, Kec. Cigudeg, Bogor, Jawa Barat 16660', 34, '2021-12-17 07:29:29', 1, '2021-12-17 07:29:29', 1),
(6, 2, 'Telaga Saat', 'https://flutter.id/apiwisata/assets/6.png', 'Telaga saat ini berada di Desa Tugu Utara, Kecamatan Cisarua, Kabupaten Bogor. Jaraknya sekitar 36 km dari kota Bogor. Lokasinya cukup mudah dijangkau. Jika kamu membawa kendaraan, kamu cukup arahkan kendaraan ke kawasan puncak hingga sampai di Masjid Nurul Iman yang lokasinya berada sebelum masjid At Taawun. Nah, untuk bisa menikmati indahnya Telaga Saat, kamu akan dikenakan tiket masuk sebesar 25rb per orang.\r\n—\r\nTelaga Saat\r\nCibulao, RT.02/RW.06, Tugu Utara, Kec. Cisarua, Bogor, Jawa Barat 16750', 59, '2021-12-17 07:29:29', 1, '2021-12-17 07:29:29', 1),
(7, 2, 'Wisata Javana Sehat', 'https://flutter.id/apiwisata/assets/7.png', 'Wisata Javana Sehat adalah tempat camping di daerah puncak yang menyugukan pemandangan Gn.Gede Pangrango, Gn.Salak, hamparan kebun teh, perbukitan dan pemandangan Telaga saat. Jika ingin camping disini kamu hanya membayar 50rb aja loh visitors. Tidak hanya camping, disini kamu juga bisa melakukan outbound offroad\r\n—\r\nWisata Javana Sehat\r\nTugu Utara, Kec. Cisarua, Bogor, Jawa Barat 16750', 19, '2021-12-17 07:29:29', 1, '2021-12-17 07:29:29', 1),
(8, 2, 'The Highland Park Resort', 'https://flutter.id/apiwisata/assets/8.png', 'Glamping dengan konsep Mongolia dan Indian bisa kamu rasakan ketika kamu ke The Highland Park Resort nih visitors. Menginap disini kamu akan disuguhkan pemandangan Gunung Salah yang sangat indah. Lokasinya pun tidak jauh dari tol jagorawi, kurang lebih 30 menit untuk sampai ke tempat ini. Sudah pernah coba menginap disini visitors?\r\n—\r\nThe Highland Park Resort\r\nJl. Curug Nangka Sinarwangi, Sukajadi, Kec. Tamansari, Bogor, Jawa Barat 16610', 23, '2021-12-17 07:29:29', 1, '2021-12-17 07:29:29', 1),
(9, 1, 'Waroeng Uncal', 'https://flutter.id/apiwisata/assets/9.png', 'REKOMENDASI BASO ACI & SEBLAK PALING RAME DI BOGOR! Ada Waroeng Uncal yang memang udah jadi langganan kita banget nih visitors. Nah, ternyata @waroenguncal ada menu baru loh, yaitu seblak baso aci dan pentol ceker, kamu juga bisa pilih tingkat kepedasannya dari 1-5 dan level 1 sama dengan satu centong sayur sambal loh, kebayang kan pedasnya? Harganya juga terjangkau mulai dari 15rb aja.\r\n.\r\nKalo di @waroenguncal udah gausah di tanya lagi deh ada topping apa aja disini, karna mereka punya 20 macam pilihan topping yang enak-enak loh visitors. Untuk Seblak baso aci isiannya ada tulang balungan yang enak buat di grogoti bersama kuah seblak yang super pedas. Rasa rempah dan aroma daun jeruknya berasa banget. Jangan lupa juga ya untuk pesan baso acinya, yang best seller ada baso aci paket manjiw, kuah dan sambalnya juara banget belum ada lawan deh visitors! Oia, untuk minumannya yang best seller ada es seneng dan aneka sop durian yang menggunakan daging durian medan asli atau kamu mau cobain minuman barunya juga ada, kamu bisa cobain es alpukat milo. Yuk, datang langsung ke Waroeng Uncal atau kamu bisa pesan juga di Grabfood ya!', 3, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1),
(10, 1, 'Lumpia basah SMANTI', 'https://flutter.id/apiwisata/assets/10.png', 'LUMPIA BASAH LEGEND DEPAN SMAN 3 BOGOR!! Lumpia ini sudah GENERASI KEDUA CITA RASA KHAS NYA TETAP SAMA, LUDES 500 PORSI PER HARI! Visitors masih ingat dengan lumpia basah SMANTI? Lumpia basah ini termasuk lumpia basah legend di Bogor, dulu yang berjualan adalah seorang bapak-bapak namun telah meninggal dunia dan dilanjutkan oleh keluarga nya, jadi bisa dibilang lumpia basah SMANTI yang sekarang ini adalah generasi kedua. Jangan khawatir, meskipun generasi kedua, cita rasa yang khas nya masih tetap terjaga.\r\n\r\nLumpia Basah SMANTI terkenal lezat dengan cita rasa khas dan gurih yang kuat. Di sini hanya ada satu menu lumpia basah seharga 10rb, ORIGINAL tidak ada topping lain, yang membedakan hanya tingkat kepedasan yang bisa kamu sesuaikan dengan selera masing-masing. Satu porsi lumpia basah terdiri dari bengkuang, tauge, dan telur orak arik yang dibungkus dengan kulit lumpia plus olesan saus yang terbuat dari tepung kanji dan gula merah. Lumpia basah SMANTI ini dari dulu hingga sekarang berlokasi di seberang SMAN 3 Bogor dan masih dijajakan dengan gerobak sederhana namun tidak pernah sepi pembeli. Tenang saja, meskipun sehari bisa habis 300 porsi kamu tidak perlu menunggu lama karena penyajian nya bisa dibilang cepat. Karena dijajakan oleh gerobak, biasanya tidak bisa makan ditempat hanya menyediakan untuk di bawa pulang ya! Daripada penasaran mending langsung aja ke lokasi Lumpia Basah SMANTI.', 8, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1),
(11, 1, 'Bakmi Kane', 'https://flutter.id/apiwisata/assets/11.png', 'BUKA CABANG KE-3 DI BINAMARGA!! Bakmi Kane buka cabang baru nih visitors di Jl. Raya binamarga no.19A Baranangsiang Bogor atau tepatnya di sebelah SMAKBO. Siapa sih yang ga kenal dengan bakmi kekinian satu ini. Bakminya yang enak dan punya banyak varian ini emang udah paling mantep deh. Bakminya sendiri kamu bisa pilih yang asin atau manis. Tersedia juga berbagai macam variasi bakmi dengan level pedas yang kamu inginkan\r\n.\r\nCabang Bakmi Kane di Binamarga ini adalah cabang ketiganya visitors. Nah, di cabang baru ini pastinya tempatnya cozy, bersih dan nyaman banget. Udah gitu instagramable dan seru buat berfoto. Banyak spot bagus dan bikin betah nongkrong lama2. Selain varian bakminya, @bakmikane juga banyak menu lainnya dan aneka menu dessert yang unik. Semua menu di Bakmi kane halal ya. Yuk, langsung aja ke Bakmi Kane, bakmi kekinian paling enak di Bogor\r\n__\r\nBakmi kane @bakmikane\r\nJl. Raya Binamarga No.19A Baranangsiang Kec. Bogor Timur Kota Bogor (sebelah SMAKBO)\r\njam buka: setiap hari, 11.00-21.00\r\nRange Harga:\r\nFood: 10.000-38.500\r\nDessert: 22.000-28.000\r\nDrink: 5.000-27.000\r\nIn Frame:\r\n- Bakmi Kane Spesial 28rb\r\n- Bakmi Sambal Matah Spesial 28rb (tingkat kepedasan 0-6)\r\n- Nasi Bakso Mercon 29rb\r\n- Pangsit Goreng 15rb\r\n- Es Lychee Silky 27rb\r\n- Es Kopi Kane 18rb\r\n- Es Susu Matcha 20rb\r\n', 7, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1),
(12, 1, 'baso mie agan', 'https://flutter.id/apiwisata/assets/12.png', 'Siapa nih yang udah kangen banget sama baso aci, baso mie dan mie yamin nya @basomieagan ? Langsung aja kunjungi store nya baso mie agan bangbarung dan taman cimanggu karena ada promo beli 3 gratis 1, Visitors! GRATIS 1 MIE YAMIN setiap pembelian 3 menu makanan apapun lho, promo ini berlaku hari Kamis 9 Des 2021 - Minggu 12 Des 2021 khusus dine-in dan takeaway ya. Untuk PROMO pembelian onlinenya, @basomieagan punya promo diskon upto 20% di GOFOOD dan GRABFOOD\r\n.\r\nMenu yang wajib kamu coba di @basomieagan ada baso urat kuah taichan dengan isian baso urat, baso aci, baso kecil, aneka cuanki, ceker, mie/bihun, sayur dengan kuah taichan yang pedesnya rekomen banget. Wajib juga cobain mie yamin pedasnya yg bisa pilih level kepedasan nya dari level petir hingga granat. Kalau ke @basomieagan wajib pesen mie yamin pentol pedas yaitu mie yamin plus pangsit basah dan 5 buah pentol pedas nya dijamin bikin kamu ketagihan. Yuk langsung aja cobain @basomieagan di kedua lokasinya atau pesan online melalui GoFood dan GrabFood!\r\n__\r\nBaso & Mie Agan @basomieagan\r\nPusat: Jl. Taman Cimanggu Raya No.25 Kedung Waringin, Tanah Sereal, Bogor\r\nCabang: Jalan bangbarung raya no.45, tegal gundil, bogor (samping alfamart bangbarung)\r\nJam Buka:\r\nSenin - Kamis 10:00 - 20:00 WIB\r\nJumat - Minggu 10:00 - 21:00 WIB\r\nRange Harga:\r\nMakanan: 15rb - 28rb\r\nMinuman: 3rb - 10rb\r\nIn Frame:\r\nBaso Aci Agan Special Daging + Urat 28k\r\nBaso Aci Agan Special Mercon 28k\r\nBaso Aci Agan 20k\r\nBaso Daging Mercon Kuah Taichan 28k\r\nMie Yamin Pentol 25k\r\nMie Yamin Petir 20k\r\nEs Jeruk 10k\r\nEs Teh Manis 6k', 18, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1),
(13, 1, 'Kedai Kopi Abdi', 'https://flutter.id/apiwisata/assets/13.png', 'Kedai Kopi Abdi ini memiliki tempat nongkrong dengan view yang keren nih visitors, apalagi view malam disini kamu bisa melihat city light yang indah.\r\n—\r\nKedai Kopi Abdi\r\nCijeruk, Kec. Cijeruk, Bogor, Jawa Barat 16740', 9, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1),
(14, 1, 'Cafe sudutemu', 'https://flutter.id/apiwisata/assets/14.png', 'CAFE UNTUK NONGKRONG REKOMEN! COZY, INTERNET KENCENG DAN MENU BERLIMPAH KEJU MOZZARELLA DI @sudutemu !!! Kalau kamu tanya cafe rekomen untuk nongkrong dengan suasana outdoor kece, internetnya kenceng, menu2nya enak dan harganya ramah di kantong jawabannya adalah @sudutemu rekomendasi dari visitbogor. Menu yang ada di sini mulai dari indomie juga ada lho, Visitors! Cocok banget buat kamu yang mau NONGKRONG LOW BUDGET. Menu signature dan paling favorit yg harus kamu coba di @sudutemu ada ALL STAR BBQ MOZZA platters berisi sosis, jagung, potato wedges, dan chicken strip lengkap dengan saus BBQ lezat yang bisa kamu pilih level kepedasan nya, menu ini cocok banget buat dinikmatin bareng-bareng Visitors!\r\n.\r\nLalu ada Cheezy Mix berisi sayap ayam, bratwurst, kentang dan saus serta mozzarela melted yg gurih banget! Di sudut temu menu makanan, minuman dan dessert nya rekomen banget untuk dicoba. Semakin seru lagi karena selain menu nya enak-enak, suasana nya cozy, lokasi nya strategis, WIFI nya kenceng dan banyak board games yang bisa dimainin bareng temen-temen bikin nongkrong semakin seru! Langsung aja ajak teman, pacar dan keluarga kamu untuk nongkrong seru di Sudut Temu yuk!\r\n__\r\nSudut Temu by Toastea @sudutemu\r\nJl. Cirahayu No.14 Baranangsiang Bogor (arah pintu parkiran motor botani square)\r\nJam Buka:\r\nSenin - Kamis 12:00 - 21:00 WIB\r\nJumat 13:00 - 22:00 WIB\r\nSabtu - Minggu 12:00 - 22:00 WIB\r\nContact: 081316669110\r\nPrice Range:\r\nFoods: 16K-37k\r\nDrinks: 5K-26k\r\nDessert: 20k - 28k\r\n*exclude tax\r\nIn frame:\r\nEbi curry rice\r\nKatsu curry rice\r\nCheezy winger\r\nBeef patty sizzling\r\nAll star + mozzarella\r\nMatcha latte\r\nChoco blast\r\nMatcha set pudding', 12, '2021-12-15 21:50:13', 1, '2021-12-15 21:50:15', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
