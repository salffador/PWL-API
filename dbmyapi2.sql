-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.2.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dbmyapi2
CREATE DATABASE IF NOT EXISTS `dbmyapi2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbmyapi2`;

-- Dumping structure for table dbmyapi2.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `publication_year` varchar(4) DEFAULT NULL,
  `cover` text,
  `description` text,
  `price` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `created_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbmyapi2.books: 15 rows
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `publication_year`, `cover`, `description`, `price`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(4, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', '2015', 'https://cdn.gramedia.com/uploads/items/591701404_sapiens.jpg', 'From a renowned historian comes a groundbreaking narrative of humanity’s creation and evolution—a #1 international bestseller—that explores the ways in which biology and history have defined us and enhanced our understanding of what it means to be “human.”\r\n\r\nOne hundred thousand years ago, at least six different species of humans inhabited Earth. Yet today there is only one—homo sapiens. What happened to the others? And what may happen to us?\r\n\r\nMost books about the history of humanity pursue either a historical or a biological approach, but Dr. Yuval Noah Harari breaks the mold with this highly original book that begins about 70,000 years ago with the appearance of modern cognition. From examining the role evolving humans have played in the global ecosystem to charting the rise of empires, Sapiens integrates history and science to reconsider accepted narratives, connect past developments with contemporary concerns, and examine specific events within the context of larger ideas.\r\n\r\nDr. Harari also compels us to look ahead, because over the last few decades humans have begun to bend laws of natural selection that have governed life for the past four billion years. We are acquiring the ability to design not only the world around us, but also ourselves. Where is this leading us, and what do we want to become?', 104400, '2024-06-15 20:27:56', NULL, NULL, NULL, NULL, NULL),
	(3, 'Laut Bercerita', 'Leila S. Chudori', 'Gramedia', '2017', 'https://cdn.gramedia.com/uploads/items/9786024246945_Laut-Bercerita.png', 'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.', 82200, '2024-06-15 20:28:37', NULL, NULL, NULL, NULL, NULL),
	(2, 'Melangkah', 'J.S. Khairen', 'Gramedia', '2020', 'https://cdn.gramedia.com/uploads/items/9786020523316_Melangkah_UV_Spot_R4-1.jpg', 'Listrik padam di seluruh Jawa dan Bali secara misterius. Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara.\r\n\r\nSaat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik! Semua dipersulit oleh seorang buronan tingkat tinggi bertopeng pahlawan yang punya rencana mengerikan.\r\n\r\nTernyata pesan arwah nenek moyang itu benar-benar terwujud. “Akan datang kegelapan yang berderap, bersama ribuan kuda raksasa di kala malam. Mereka bangun setelah sekian lama, untuk menghancurkan Nusantara. Seorang lelaki dan seorang perempuan ditakdirkan membaurkan air di lautan dan api di pegunungan. Menyatukan tanah yang menghujam, dan udara yang terhampar.”\r\n\r\nKisah tentang persahabatan, tentang jurang ego anak dan orangtua, tentang menyeimbangkan logika dan perasaan. Juga tentang melangkah menuju masa depan. Bahwa, apa pun yang menjadi luka masa lalu, biarlah mengering bersama waktu.', 74400, '2024-06-15 20:28:57', NULL, NULL, NULL, NULL, NULL),
	(1, 'Eating Clean', 'Inge Tumiwa-Bachrens', 'Kawan Pustaka', '2016', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1482170055i/33511107.jpg', 'Menjadi sehat adalah impian semua orang. Makanan yang selama ini kita pikir sehat ternyata belum tentu \'sehat\' bagi tubuh kita.', 85000, '2024-05-19 13:08:46', NULL, '2024-05-20 20:09:41', NULL, NULL, NULL),
	(11, 'The Girl who Fell Beneath the Sea', 'Axie Oh', 'Elex Media Komputindo', '2023', 'https://cdn.gramedia.com/uploads/picture_meta/2023/2/14/iddphd9rbufdfjabf4owuf.jpg', 'Badai mematikan telah merusak tanah kelahiran Mina selama beberapa generasi. Banjir menyapu seluruh desa, sementara perang berdarah dikobarkan untuk memperebutkan sumber daya yang tersisa. Masyarakat di desa Mina memercayai bahwa Dewa Laut mengutuk mereka dengan kematian dan keputusasaan. Dalam upaya untuk menenangkan Dewa Laut, setiap tahun seorang gadis cantik dibuang ke laut untuk menjadi pengantin Dewa Laut, dengan harapan suatu hari "pengantin sejati" akan dipilih dan mengakhiri penderitaan mereka. Shim Cheong adalah gadis tercantik di desa, sekaligus kekasih Joon. Banyak yang percaya dialah pengantin sejati Dewa Laut Tapi pada malam Cheong hendak dikorbankan, Joon mengikuti Cheong, meski tahu bahwa ikut campur akan dihadiahi hukuman mati. Untuk menyelamatkan kakaknya, Mina terjun ke air menggantikan Cheong. Kecantikan Mina memang tidak sebanding dengan para pengantin terdahulu. Tapi dia sudah tersapu ke Alam Roh. Kini Mina tak punya banyak waktu untuk menemukan Dewa Laut sebelum dirinya sendiri berubah menjadi arwah. Berbekal kemampuan mendongeng dan bantuan para arwah, Mina harus berhasil menemukan Dewa Laut.', 92000, '2024-06-15 13:25:50', NULL, '2024-06-15 13:25:50', NULL, NULL, NULL),
	(5, 'Gadis Kretek', 'Ratih Kumala', 'Gramedia', '2019', 'https://cdn.gramedia.com/uploads/items/9789792281415_Gadis_Kretek_.jpg', 'Pak Raja sekarat. Dalam menanti ajal, ia memanggil satu nama perempuan yang bukan istrinya; Jeng Yah. Tiga anaknya, pewaris Kretek Djagad Raja, dimakan gundah. Sang ibu pun terbakar cemburu terlebih karena permintaan terakhir suaminya ingin bertemu Jeng Yah. Maka berpacu dengan malaikat maut, Lebas, Karim, dan Tegar, pergi ke pelosok Jawa untuk mencari Jeng Yah, sebelum ajal menjemput sang Ayah.\r\n\r\nPerjalanan itu bagai napak tilas bisnis dan rahasia keluarga. Lebas, Karim, dan Tegar bertemu dengan pelinting tua dan menguak asal-usul Kretek Djagad Raja hingga menjadi kretek nomor 1 di Indonesia. Lebih dari itu, ketiganya juga mengetahui kisah cinta ayah mereka dengar; Jeng Yah, yang ternyata adalah pemilik Kretek Gadis, kretek lokal Kota M yang terkenal pada zamannya.\r\n\r\nApakah Lebas, Karim, dan Tegar akhirnya berhasil menemukan Jeng Yah?', 60000, '2024-06-15 20:29:10', NULL, NULL, NULL, NULL, NULL),
	(6, 'Bumi', 'Tere Liye', 'SABAKGRIP', '2022', 'https://cdn.gramedia.com/uploads/items/img20220830_10560995.jpg', 'Perkenalkan, Raib, seorang gadis belia berusia lima belas tahun yang tidak biasa. Dia bisa menghilang. Jangan beritahu siapapun, Itu adalah rahasia terbesar yang tak pernah ia ceritakan pada siapapun, termasuk kedua orangtuanya. Kehidupannya tetap berjalan normal, meskipun untuk dirinya sendiri. Tidak jarang Raib menjahili orang tuanya dengan tiba-tiba menghilang, lalu muncul kembali secara tiba-tiba membuat kaget kedua orangtuanya.\r\n\r\nTidak hanya menyuguhkan cerita fantasi, novel ini juga memberikan pesan moral tentang keluarga, dan persahabatan. Tere Liye sukses membangun kisah persahabatan antara Raib, Ali, dan Seli terasa nyata. Hubungan antara Raib dan keluarganya membuat pembaca penasaran sekaligus tersadar akan cara berkomunikasi dengan orang tua.', 109000, '2024-06-15 20:29:33', NULL, NULL, NULL, NULL, NULL),
	(7, 'Thinking 101', 'Ahn, Woo-kyoung', 'Pan Macmillan', '2024', 'https://static.periplus.com/ht3JebIzmGuNIjwc4cvS8LJyR1Vt5D60KyT_pVv8eBxG3EMpozXbw8P4NWPa2rvSw--', 'Psychologist Woo-kyoung Ahn devised a course at Yale University to help students examine the biases that cause so many problems in their daily lives. Called “Thinking," the course quickly became one of the university’s most popular. In Ahn’s class, students examine “thinking problems”—such as confirmation bias, causal attribution, and delayed gratification—and how they contribute to our most pressing societal issues and inequities.\r\n\r\nThinking 101 draws on decades of research from other cognitive psychologists, as well as from Ahn\'s own teaching and groundbreaking studies. She presents it all in a compellingly readable style that uses fun examples from K-pop dancing, anecdotes from her own life, and illuminating stories from history and the headlines. As Thinking 101 shows, with better awareness of our biases, we can improve our lives and tackle real-world problems. It is, quite simply, required reading for everyone who wants to think—and live—better.', 260000, '2024-06-15 20:29:50', NULL, NULL, NULL, NULL, NULL),
	(8, 'Bulan', 'Tere Liye', 'SABAKGRIP', '2022', 'https://cdn.gramedia.com/uploads/items/img20220905_11324048.jpg', 'Petualangan Raib, Seli, dan Ali berlanjut.Beberapa bulan setelah peristiwa klan bulan, Miss Selena akhirnya muncul di sekolah. Ia membawa kabar menggembirakan untuk anak-anak yang berjiwa petualang seperti Raib, Seli, dan Ali. Miss Selena bersama dengan Av akan mengajak mereka untuk mengunjungi klan matahari selama dua minggu. Av berencana akan bertemu dengan ketua konsil klan matahari, yang menguasai klan matahari sepenuhnya untuk mencari sekutu dalam menghadapi Tamus yang diperkirakan akan bebas dan juga membebaskan raja tanpa mahkota.\r\n\r\nSesampainya mereka di Klan matahari, mereka disambut oleh festival bunga matahari. Hal yang tidak pernah disangka oleh Av dan Miss Selena adalah ketua konsil klan matahari yang meminta Raib, Seli, Ali, dan Ily untuk menjadi peserta ke-10 dari festival bunga matahari. Setelah perdebatan yang amat panjang, akhirnya rombongan Raib menerima tawaran itu.\r\n\r\nDengan kekuatan yang dimiliki Seli, Raib, dan Ily ditambah dengan senjata berupa panah dan pemukul, mereka bertekad melewati rintangan yang sangat membahayakan keselamatannya itu.\r\n\r\nDi akhir kisah, Ily telah pergi selama-lamanya meninggalkan keluarganya di Klan bulan juga teman-teman seperjuangannya selama sembilan hari menemukan bunga matahari. Dan Fala, ketua klan matahari telah masuk ke portal ke penjara bayangan bawah tanah.\r\n\r\nSetelah Serial pertamanya, Bumi, sukses melejit, kini Tere Liye menghadirkan kisah lanjutannya dengan Bulan.\r\n\r\nKini anak istimewa itu bernama Seli, masih 15 tahun. Sama halnya seperti remaja yang lain, Seli mendengarkan lagu-lagu yang sedang hits, pergi ke gerai fast food, menonton serial drama dan film.\r\nPerbedaannya, Seli bisa mengeluarkan petir.\r\n\r\nDan dengan kekuatan itu, Seli bertualang menuju tempat-tempat yang menakjubkan bersama Raib.\r\n\r\nDengan bekal hewan tunggangan empat ekor harimau salju sebagai kendaraan mereka selama festival, mereka menghadapi medan berbahaya dan binatang buas dalam hutan hutan yang siap menyerang mereka. Namun, mengapa harus mereka yang mengikuti festival berbahaya ini?', 105000, '2024-06-15 20:28:26', NULL, NULL, NULL, NULL, NULL),
	(12, 'Beware Worn Down By Time', 'ADDIN JAUHARUDIN', 'Penerbit Buku Kompas', '2023', 'https://cdn.gramedia.com/uploads/picture_meta/2023/8/11/mrla2ojvq2daijtdqmasvr.jpg', 'In carrying out his mandate as the President of the Republic of Indonesia, Joko «Jokowi» Widodo has faced various challenges that have hit this country, such as polarization due to general elections, declining economic growth, to a declining level of public trust in the government. One by one, various problems were resolved, especially in order to welcome Indonesia as a developed and prosperous country, namely by building infrastructure, nationalizing important state assets, downstreaming industry, digital transformation, managing demographic bonuses, promoting culture, and so on. This is expected to be able to lay an important foundation in order to reach Indonesia according to the mandate of the 1945 Constitution and Pancasila.\r\n\r\nThis book was compiled based on a collection of speeches, remarks, messages and dialogues by President Jokowi delivered at official and state events, both at home and abroad, during the 2014–2023 period. As a reference for stakeholders to follow up on government policies, these various state events are embodied in records complete with data and facts regarding implementation and results that have been achieved. According to President Jokowi›s introduction in this book:\r\n\r\n“This book is not solely about me. This book is about us. About all of us who live and grow in our beloved Motherland. This book describes a nation that is shoulder to shoulder to catch up, and continues to run towards its goals. Work hard to create a developed and prosperous country, by working together to face various challenges.“', 225000, '2024-06-15 13:30:47', NULL, '2024-06-15 13:30:47', NULL, NULL, NULL),
	(13, 'English Classics: Romeo and Juliet', 'William Shakespeare', 'Gramedia Pustaka Utama', '2023', 'https://cdn.gramedia.com/uploads/picture_meta/2023/2/21/mpmvbnunspq9xechwy7tzw.jpg', 'Romeo and Juliet is a tragedy written by William Shakespeare about the romance between two Italian youths from feuding families. It was among Shakespeare\'s most popular plays during his lifetime and, along with Hamlet, is one of his most frequently performed plays. Today, the title characters are regarded as archetypal young lovers.\r\n\r\nRomeo and Juliet belongs to a tradition of tragic romances stretching back to antiquity. The plot is based on an Italian tale written by Matteo Bandello and translated into verse as The Tragical History of Romeus and Juliet by Arthur Brooke in 1562 and retold in prose in Palace of Pleasure by William Painter in 1567. Shakespeare borrowed heavily from both but expanded the plot by developing a number of supporting characters, particularly Mercutio and Paris.', 39200, '2024-06-15 13:33:12', NULL, '2024-06-15 13:33:12', NULL, NULL, NULL),
	(14, 'Lofarsat', 'Rofenaa', 'Cloud Books', '2023', 'https://cdn.gramedia.com/uploads/picture_meta/2023/6/8/3qaxyret7kcgarrevayw6d.jpg', 'Minta dijodohkan sebenarnya tidak pernah masuk ke dalam rencana kehidupan masa depan Najmi Desra. Namun sang Papi malah mengamini permintaan isengnya tersebut. Dan akhirnya, gadis berusia 23 tahun ini harus berakhir memilih 1 di antara 3 kandidat lelaki pilihan yang memenuhi kriteria.\r\nTak disangka-sangka, saat pengumuman lokasi penempatan program training yang kala itu turut menampilkan namanya, Najmi ditempatkan di sebuah firma hukum terkenal, yaitu Khairul Bahar Law Firm Assocation. Yang mana, kantor tersebut juga merupakan tempat seorang Kandidat Terpilih bernaung. Namanya Adibya Lofarsa, yang berhasil mencuri seluruh atensi Najmi Desra. Sang pemuda yang berada di penghujung angka 25 tersebut punya berjuta pesona.\r\n“Lo ikhlas nggak sih dijodohin sama gue?!” Kala itu, serangan ketidakpercayaan diri lagi-lagi menerjang mental Najmi.\r\nMaka dengan seluruh rasa yang Adibya punya, pemuda itu pun lantas sampaikan perasaannya. “Saya ikhlas dijodohkan dengan kamu. Dan untuk perihal mencintaimu, saya hanya butuh tiga hari. Hari kemarin, hari ini, dan hari esok.”', 98100, '2024-06-15 13:39:26', NULL, '2024-06-15 13:39:26', NULL, NULL, NULL),
	(15, 'Remuk Redam', 'Christian Simamora', 'Roro Raya Sejahtera', '2018', 'https://cdn.gramedia.com/uploads/items/9786025129001_Remuk-Redam.jpg', 'Jatuh cinta itu gampang. Kau bahkan tak perlu alasan untuk merasakannya di dalam dirimu.Menghangatkan jantungmu. Membuatmu tersipu. Sedangkan mencintai, itu perkara yang lain lagi. Kau dituntut untuk beradaptasi dan memahami. Berkorban dan mengampuni. Dan setelah semuanya dilakukan pun, belum tentu juga cintamu akan berbuah baik. Seringnya, kau kembali sendirian dan merasa jauh lebih buruk daripada sebelumnya.Jadi, pesanku: jatuh cintalah... tapi jangan kau sampai mencintainya. Kau mungkin jauh lebih bahagia.', 90000, '2024-06-15 13:49:38', NULL, '2024-06-15 13:49:38', NULL, NULL, NULL),
	(16, 'Awan-Awan di Atas Kepala Kita', 'Miranda Malonka', 'Gramedia Pustaka Utama', '2022', 'https://cdn.gramedia.com/uploads/items/awan_awan_di_atas_kepala_kita_cov.jpg', 'Benjamin Iskandar sedang berulang tahun yang kesembilan belas ketika dia memutuskan bunuh diri, di saat yang sama Kirana Kharitonova kebetulan lewat dan menyelamatkannya. Benjamin dan Kirana datang dari dunia yang berbeda. Latar belakang mereka berbeda. Kepribadian mereka bagaikan kemarau dan mendung.', 79200, '2024-06-15 13:51:56', NULL, '2024-06-15 13:51:56', NULL, NULL, NULL),
	(17, '10-Button Sound Books, Discovery: Rumble With The Dinosaurs!', 'Thea Feldman', 'Sinar Star Book', '2022', 'https://cdn.gramedia.com/uploads/items/10-Button_Sound_Books_Discovery_Rumble_With_The_Dinosaurs.jpg', 'Part of the 2021 NAPPA-award-winning Discovery 10-Button Sound Books series With 10 cool sound buttons, fun facts, full-color illustrations, and much more, this Discovery sound-and-reference book is a unique way for kids to learn about dinosaurs. Kids will love hearing the sounds of the various dinosaurs in this vibrant and interactive book.', 155000, '2024-06-15 13:54:21', NULL, '2024-06-15 13:54:21', NULL, NULL, NULL),
	(18, 'Clover', 'NA HYERIM', 'baca', '2023', 'https://cdn.gramedia.com/uploads/picture_meta/2023/6/8/bjxy6jybnmb5dhguqyihby.jpg', 'Jeong-in, remaja lelaki yang hidup serbakekurangan bersama neneknya merasa Tuhan tampak mencintai semua orang, kecuali dirinya. Hanya ia yang ke sekolah dengan sepatu lusuh dan kumal, memakan ramen instan setiap hari, dan tak mampu ikut karyawisata sekolah.', 80100, '2024-06-16 11:29:02', NULL, '2024-06-16 11:29:02', NULL, NULL, NULL),
	(19, 'The Black Shadow', 'Angel El Cherid', 'Fantasious', '2017', 'https://cdn.gramedia.com/uploads/items/9786025406003_The-Black-Shadow.jpg', 'Sepuluh tahun yang lalu Alice tunduk pada pesona pemuda di hadapannya. Namun, yang membuat dirinya semakin tak berkutik adalah kecupan singkat pemuda itu di bibirnya sebagai hadiah ulang tahun untuknya. Pemuda itu memperkenalkan dirinya dengan nama Vallen. Dan sejak pertemuan singkat yang indah itu, Alice menjadikan Vallen sebagai tujuan hidupnya.', 35000, '2024-06-16 11:29:23', NULL, '2024-06-16 11:29:23', NULL, NULL, NULL),
	(20, 'Pergi Dan Kembali (Ferryman)', 'Claire McFall', 'Gramedia Pustaka', '2021', 'https://cdn.gramedia.com/uploads/items/Ferryman_cov.jpg', 'Dylan selamat dari kecelakaan kereta api yang mengerikan. Sepertinya begitu. Namun, hamparan suram di sekeliling gadis itu ternyata bukanlah Skotlandia. Itu padang kekosongan yang terbentuk dari berbagai perasaan dan ketakutannya, perbatasan menuju alam kematian. Di sana, Tristan, sang Ferryman, bertugas memandu dan menyeberangkan roh Dylan. Hanya saja penyeberangan kali ini sangat berbahaya, karena para wraith mengincar roh gadis tersebut. Saat berjuang untuk bertahan hidup, Dylan lantas bertanya-tanya di alam manakah ia seharusnya berada dan apa yang harus ia pertaruhkan untuk sampai ke sana. Apa yang terjadi sebenarnya? Apakah Tristan berhasil membawa roh Dylan sampai ke alam kematian? Simak kelanjutan kisahnya hanya di buku ini! Selamat membaca!', 350000, '2024-06-16 11:30:54', NULL, '2024-06-16 11:30:54', NULL, NULL, NULL),
	(21, '#Dietkenyang Dengan Cooking Hypnotherapy', 'Dewi Hughes', 'Gramedia Pustaka', '2015', 'https://cdn.gramedia.com/uploads/images/1/36516/big_covers/ID_GRAS2017MTH03DCH_B.jpg', 'Untuk kesekian kalinya dalam setahun, saya harus disuntik painkiller oleh dokter karena sakit pinggang yang membuat saya hampir lumpuh. Setelah disuntik, saya biasanya melenggang ringan keluar dari ruang praktek dokter sambil tersenyum lebar. Tapi, kali ini tidak terjadi! Saya tidak merasakan perubahan sama sekali, padahal obat yang harus diminum sudah ditambah.', 45500, '2024-06-16 11:32:49', NULL, '2024-06-16 11:32:49', NULL, NULL, NULL),
	(22, 'The Odd 1S Out: The First Sequely', 'James Rallison', 'Penguin Us', '2018', 'https://cdn.gramedia.com/uploads/items/9780593087633.jpg', 'An instant New York Times bestseller! The sequel to the New York Times bestselling The Odd 1s Out, with all new and never-before-seen content featuring opinions, stories, and signature characters from YouTube phenomenon James Rallison James Rallison has always felt like he was on the outside looking in. His YouTube videos are all about his odd behavior, and with over 13 million subscribers and millions more followers on social media, these animations have found their way into the hearts of fans who also feel like a bit of an odd one.', 270000, '2024-06-16 11:40:39', NULL, '2024-06-16 11:40:39', NULL, NULL, NULL),
	(23, 'Air untuk Burung Kecil', 'Chen Shan', 'Kesaint Blanc Publishing', '2022', 'https://cdn.gramedia.com/uploads/picture_meta/2022/12/27/22n28eia6td5kkv5igihq9.jpg', 'Xiaomei senang sekali melihat burung-burung terbang dan bermain di kolam halaman belakang. Namun, sepertinya kolamnya terlalu besar untuk burung-burung kecil. Coba tebak, apa yang Xiaomei lakukan?', 53100, '2024-06-16 11:43:31', NULL, '2024-06-16 18:45:23', NULL, NULL, NULL),
	(24, 'Kreasi Digital Dengan Photoshop Untuk Pemula - My Creative Designl', 'Madcoms', 'Kesaint Blanc Publishing', '2022', 'https://cdn.gramedia.com/uploads/items/My-Creative-Design_-Kreasi-Digital-Dengan-Photoshop-Untuk-Pemula-cd.jpg', 'Adobe Photoshop merupakan software olah digital yang paling populer dan banyak digunakan oleh para desainer komputer. Kelengkapan fasilitas dalam mengolah foto menjadikan software ini menjadi favorit bagi desainer komputer.', 53100, '2024-06-16 11:46:33', NULL, '2024-06-16 11:46:33', NULL, NULL, NULL),
	(25, 'Bobo Edisi Koleksi Cerpen & Dongeng Batch 2', 'Majalah Gramedia', 'Gramedia Pustaka', '2022', 'https://cdn.gramedia.com/uploads/items/My-Creative-Design_-Kreasi-Digital-Dengan-Photoshop-Untuk-Pemula-cd.jpg', 'Kali ini, Majalah Bobo menerbitkan Edisi Koleksi 50 Tahun Cerpen dan Dongeng. Ada 100 halaman', 75000, '2024-06-16 11:48:51', NULL, '2024-06-16 11:48:51', NULL, NULL, NULL),
	(26, 'Little Book World Classic: Lady Susan', 'Jane Austen', 'Gramedia Pustaka', '2024', 'https://cdn.gramedia.com/uploads/items/csdqt7hhqjm7pywnz2igqd.jpg', '“I am tired of submitting my will to the caprices of others; of resigning my own judgment in deference to those to whom I owe no duty, and for whom I feel no respect...”', 36750, '2024-06-16 11:50:21', NULL, '2024-06-16 11:50:21', NULL, NULL, NULL),
	(27, 'Art of the Good Life 2024', 'Rolf Dobelli', 'Gramedia Pustaka', '2024', 'https://cdn.gramedia.com/uploads/items/csdqt7hhqjm7pywnz2igqd.jpg', 'Setiap generasi mengajukan pertanyaan soal apa itu hidup tenteram. Namun, tidak pernah ada jawaban yang memuaskan. Kenyataannya, dunia justru berkembang menjadi semakin kompleks. Sementara kita masih menggunakan otak yang dikembangkan untuk sesuatu yang sama sekali berbeda—untuk dunia di Zaman Batu. Dalam situasi sulit ini, jelas diperlukan serangkaian perangkat mental yang dapat membantu kita memandang dunia secara lebih objektif, dan bertindak lebih bijaksana untuk jangka panjang.', 78750, '2024-06-16 11:52:17', NULL, '2024-06-16 11:52:17', NULL, NULL, NULL),
	(28, 'ini buku tester', 'Inge Tumiwa-Bachrens', 'Kawan Pustaka', '2016', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1482170055i/33511107.jpg', 'Menjadi sehat adalah impian semua orang. Makanan yang selama ini kita pikir sehat ternyata belum tentu \'sehat\' bagi tubuh kita.', 85000, '2024-06-17 02:58:26', NULL, '2024-06-17 02:58:26', NULL, NULL, NULL),
	(29, 'testing buku baru', 'Inge Tumiwa-Bachrens', 'Kawan Pustaka', '2016', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1482170055i/33511107.jpg', 'Menjadi sehat adalah impian semua orang. Makanan yang selama ini kita pikir sehat ternyata belum tentu \'sehat\' bagi tubuh kita.', 85000, '2024-06-17 03:06:59', NULL, '2024-06-17 03:06:59', NULL, NULL, NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Dumping structure for table dbmyapi2.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.cache: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.cache_locks: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.jobs: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.job_batches: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.migrations: ~9 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_05_19_193711_create_personal_access_tokens_table', 1),
	(5, '2024_05_25_171308_create_oauth_auth_codes_table', 2),
	(6, '2024_05_25_171309_create_oauth_access_tokens_table', 2),
	(7, '2024_05_25_171310_create_oauth_refresh_tokens_table', 2),
	(8, '2024_05_25_171311_create_oauth_clients_table', 2),
	(9, '2024_05_25_171312_create_oauth_personal_access_clients_table', 2);

-- Dumping structure for table dbmyapi2.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.oauth_access_tokens: ~10 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0224b2a3c0db0a91dc3bab0b4486b01124c843af664faeff074d1d94a24217deb854e12dc10674c6', 4, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-16 11:20:02', '2024-06-16 11:20:02', '2024-12-16 18:20:02'),
	('074cfa6579cf83dcfc57c074bc951bbd95fafb5c15de2cd5376b30f33d412b09dd0e1d5871b43a9c', 5, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-17 02:57:02', '2024-06-17 02:57:03', '2024-12-17 09:57:02'),
	('096526ed19c6bc1113f84f038aad4cff05156210e4e0ff995160885252be4f9c4d2501281f3c4f6b', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-05-29 10:32:52', '2024-05-29 10:32:52', '2024-11-29 17:32:52'),
	('13c7fa545265584515b2e864f5c16a8f50c72c028859a32416610f9e2dd1723db87fc1a4e7f4b7f1', 2, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-05-29 10:26:56', '2024-05-29 10:26:56', '2024-11-29 17:26:56'),
	('18abfaa514e207d8c519c5fe6797e018532b1f9183a51019cca9e52f82b3e3728e12e3e2cd75e3e0', 8, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-17 03:27:19', '2024-06-17 03:27:19', '2024-12-17 10:27:19'),
	('4e0e5f12063d5e3faaa9d6d4fcfd00ba76daf0b3d2993b944dac5e3257dcdb42116d789527313e79', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-16 11:26:11', '2024-06-16 11:26:11', '2024-12-16 18:26:11'),
	('66299759f3876543929035ab0a993ce5366cff6fb1feb085e0c14318d7eb89e64f0eff104d827997', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-15 11:30:46', '2024-06-15 11:30:46', '2024-12-15 18:30:46'),
	('78a2f66cbcac55cb834ec782c49ba0d63ed4de4d8e444e23a62d857269b8c5b8945eab8e89fe5f4b', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 1, '2024-05-29 10:38:24', '2024-05-29 10:40:52', '2024-11-29 17:38:24'),
	('9325293301b952ecb1bb7e445612a6d9bda64f918224c79fb4664965bb6e30943d685a52e92aa4a0', 7, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 1, '2024-06-17 03:20:24', '2024-06-17 03:22:30', '2024-12-17 10:20:24'),
	('951849edefef959468441ab0cc02805fab34a870171fc8cf0912afdbd59c4904c6fafc39c518f4cf', 6, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 1, '2024-06-17 03:05:14', '2024-06-17 03:10:08', '2024-12-17 10:05:14'),
	('982b53a1db716453ae561eb7c81a0de6108152bc6b42190580569ce73570325b204180ddc289819d', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-15 11:45:23', '2024-06-15 11:45:23', '2024-12-15 18:45:23'),
	('9fde41377894f42cd6415cf07afab8acd2ddf078285efeebfba6b847690a3d59b2d7bb2dc8065015', 6, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-17 03:04:48', '2024-06-17 03:04:48', '2024-12-17 10:04:48'),
	('a825a190275094aecf08075dcd701f86606b58ade0b2c2f3e213ab27989d5a14992f14b811db1d5e', 4, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-16 11:19:21', '2024-06-16 11:19:21', '2024-12-16 18:19:21'),
	('c988df90b42544de055a6435ff9acf5dee541bba8b9e5ae745a0e7e0cb56b31b91c4d9d6a7e1db83', 3, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 1, '2024-06-13 11:45:53', '2024-06-13 11:46:00', '2024-12-13 18:45:53'),
	('d1d3f8ee402622de6ee6d49348d4b6ffa4858cbd8461fe29beda68424966e217d9a8f082aa69a255', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-05-29 10:22:28', '2024-05-29 10:22:28', '2024-11-29 17:22:28'),
	('d2420ceb7e81e6cb2eb497e8d11e306976813547f23eefe303eee3779faee95f9aa675ee20ccd984', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-05 09:50:57', '2024-06-05 09:50:57', '2024-12-05 16:50:57'),
	('dbd8f949ba13e38ae87dfa336c244ada854dc499ae48d99f8a6f576b4a80779219f33fad7603d65b', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-05-31 08:28:08', '2024-05-31 08:28:08', '2024-12-01 15:28:08'),
	('ed75892b6295f60f0516c7d2cb93e77306bbf9aae783f23f12297006e338a643ba13e62bf11c399a', 1, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-05-31 08:53:35', '2024-05-31 08:53:35', '2024-12-01 15:53:35'),
	('ee74fbfc364d5b99f3a9c82cf10ca764f32545f22ec0f78e1275a4d9f9e6eb6ffe56bc4548168841', 5, '9c210a30-8367-49e0-b1ba-83967c1e9501', 'All Yours', '[]', 0, '2024-06-17 02:56:33', '2024-06-17 02:56:34', '2024-12-17 09:56:33');

-- Dumping structure for table dbmyapi2.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.oauth_clients: ~2 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	('9c210a30-8367-49e0-b1ba-83967c1e9501', NULL, 'Laravel Personal Access Client', '660BzcpW0DCsYU6TNXtPhpKdbLpGYTVHEpKsxDa0', NULL, 'http://localhost', 1, 0, 0, '2024-05-25 10:13:08', '2024-05-25 10:13:08'),
	('9c210a30-8cf2-453a-b78f-beb777b316d4', NULL, 'Laravel Password Grant Client', 'xaxK2AWEGwkLezD4v6IfiHb1xltdxMp5HAOCMluM', 'users', 'http://localhost', 0, 1, 0, '2024-05-25 10:13:08', '2024-05-25 10:13:08');

-- Dumping structure for table dbmyapi2.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.oauth_personal_access_clients: ~0 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, '9c210a30-8367-49e0-b1ba-83967c1e9501', '2024-05-25 10:13:08', '2024-05-25 10:13:08');

-- Dumping structure for table dbmyapi2.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table dbmyapi2.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('EF7Yna2VmKfVlDOjziazPZ6XczKoiDZWf1NHGI9d', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczU2dTVMQTdBNUZZRlpXbVJTYXVrT1BXRDlXazhGNU91M1JpU09jcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib29rIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718564117),
	('jwfBVW8RyTRUC0W3Rr2V5Uky6xURzFNG5WJk1YyF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHBjbFdyOEVPdTk1cFAwNlVjN25YR0JNbnpIZHpvbk80dEdaUldtNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib29rLzI3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718620172);

-- Dumping structure for table dbmyapi2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi2.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Trixie Christy Sumantri', 'trix.chris.sum@gmail.com', NULL, '$2y$12$2ai.EmiEW4d025CsXjxQ.OOjUqdwPrKt8VyBNry2nlcKXtsqy3a6e', NULL, '2024-05-29 10:22:28', '2024-05-29 10:22:28'),
	(2, 'Test', 'test@gmail.com', NULL, '$2y$12$yP/5A7TE8xXRdhKPw3uvR.e.APS4mvngfaDup//dbtYpfGo4SSkTi', NULL, '2024-05-29 10:26:56', '2024-05-29 10:26:56'),
	(3, 'Jessica Alexander', 'jessica.422023027@civitas.ukrida.ac.id', NULL, '$2y$12$b2ffNcc8mKYdfYNtZeuxMeIFOZJLMk/R3NAZfUOMfoU94TpGlx4LS', NULL, '2024-06-13 11:45:53', '2024-06-13 11:45:53'),
	(4, 'Trixie Christy Sumantri', 'trix.chris.sumu@gmail.com', NULL, '$2y$12$XSI1wsaQLCMssdv7nV1gvO5L/hdHSUMsT4t8vVZ2CpDZ8NhHFmRF.', NULL, '2024-06-16 11:19:21', '2024-06-16 11:19:21'),
	(5, 'Trixie Christy Sumantri', 'trix.chris.sumo@gmail.com', NULL, '$2y$12$jjiOwFzyA4FnZhQO8HX7mO3GTE33KcWhUwEcLBne0QfKKeyPWBlxG', NULL, '2024-06-17 02:56:33', '2024-06-17 02:56:33'),
	(6, 'Trixie Christy Sumantri', 'testerm@gmail.com', NULL, '$2y$12$MA13Z.P5Qp2w/0nSv87XJ.GlqpzlHkbO4x3OZKOQpvz8fvtuO8z5S', NULL, '2024-06-17 03:04:48', '2024-06-17 03:04:48'),
	(7, 'Jessica Alexander', 'iniemailbarus@gmail.com', NULL, '$2y$12$ceAVD0wZG0Dtsh/6hCTrDu6yhz5rEPDeMJnR5zhrNfPVYuhopDG5.', NULL, '2024-06-17 03:20:24', '2024-06-17 03:20:24'),
	(8, 'Jessica Alexander', 'initest@gmail.com', NULL, '$2y$12$W4Sr22Bj2VxF1VZYXxKXC.8dhwN4LulZj70FxyUFQ/K0uGFWqfRaK', NULL, '2024-06-17 03:27:19', '2024-06-17 03:27:19');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
