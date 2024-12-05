

-- Dumping structure for table db_refinds.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_kategori` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_refinds.kategori: ~4 rows (approximately)
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`, `created_at`, `updated_at`) VALUES
	(1, 'elektronik', 'Officia error non doloribus unde. Delectus qui nihil omnis. Doloremque eveniet quidem voluptates deleniti rerum beatae. Sint quisquam eius in voluptas unde.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(2, 'furniture', 'Consequatur distinctio unde qui molestias in qui quas. Quo dolorem esse eos nesciunt. Et eius velit aperiam recusandae.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(3, 'pakaian', 'Non dolores doloremque ut eius ipsum distinctio. In consequuntur aut alias. Et autem iste et odio earum ex. Quod ipsum doloremque laborum.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(4, 'alat rumah tangga', 'Quidem sit rerum quis aperiam nesciunt vero. Sed optio illum molestiae voluptatem asperiores. Aut sit deserunt ullam itaque atque ullam suscipit a. Ratione velit ea beatae.', '2024-10-24 16:16:13', '2024-11-07 06:32:54');

-- Dumping structure for table db_refinds.refindsuser
CREATE TABLE IF NOT EXISTS `refindsuser` (
  `id_user` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_akun` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_asli_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_registrasi` datetime DEFAULT CURRENT_TIMESTAMP,
  `url_foto_profil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_akun` enum('active','inactive','suspended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `level_account` enum('user','admin','superadmin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `terakhir_login` datetime DEFAULT NULL,
  `verification_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `refindsuser_nama_akun_unique` (`nama_akun`),
  UNIQUE KEY `refindsuser_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_refinds.refindsuser: ~62 rows (approximately)
INSERT INTO `refindsuser` (`id_user`, `nama_akun`, `nama_asli_user`, `email`, `password`, `no_telepon`, `tanggal_registrasi`, `url_foto_profil`, `status_akun`, `level_account`, `terakhir_login`, `verification_date`, `created_at`, `updated_at`) VALUES
	(1, 'WAHYUU', 'Mrs. Drew Altenwerth IV', 'wahyuagungb.29@gmail.com', '$2y$12$gdi./R02WuRVJubQ6tLwZOlSdGDn6XDZTolcD6lfo9AJqhWAbngeW', '+1-914-287-11', '2008-11-13 13:23:10', 'storage/pfp_images/pfphyakkisai.jpg', 'active', 'admin', '1975-05-04 15:32:28', '1974-07-07 20:48:00', '2024-11-20 16:22:11', '2024-12-01 12:39:52'),
	(2, 'KELOMPOK3', 'Shana Oberbr', 'uriah55@exam', '$2y$12$gdi./R02WuRVJubQ6tLwZOlSdGDn6XDZTolcD6lfo9AJqhWAbngeW', '0819047032526', '1982-06-04 06:29:25', 'storage/pfp_images/rVOYM5NwDkk8fm8r1PmoGHpDx1ltsbhZBAJvCRiZ.jpg', 'active', 'user', '2013-06-06 21:26:04', '1992-04-18 23:55:20', '2024-11-20 16:22:11', '2024-11-29 07:17:21'),
	(3, 'kchamplin', 'Aletha Gibson III', 'cjast@example.org', '$2y$12$X/LtWxe9W.uljYpYZKlq7e2PKdJMhwN.PFFKJKfmkDRO1vOs91adi', '628.301.6343', '2002-04-22 23:40:25', 'storage/pfp_images/0EpagAsRpBbykBddqvX6IKry3PiDzRoJi6YTtv2H.jpg', 'active', 'user', '1976-05-11 14:08:04', '2018-05-15 01:22:19', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(4, 'pbahringer', 'Brooke Fahey', 'dale.wehner@example.org', '$2y$12$ybTlu0k8jXlPXDagzpC/Re3RFrziDFZhiCTuYiSaKgLj8nJRzU5aa', '1-734-820-4412', '2023-05-12 18:33:04', 'storage/pfp_images/tPQiwPCXREycsDSb4Y7i72HWSjbIxmkvKNCGNcEW.jpg', 'active', 'user', '2008-10-16 11:45:44', '1997-06-24 02:24:56', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(5, 'wilber08', 'Ansley Daugherty', 'lfunk@example.org', '$2y$12$hJ0oOgYDA95JoEMJgG/Qeuu84cM4nD3ng3MIseHiqCVj1c60DiF5y', '(412) 878-8175', '2001-06-03 08:20:00', 'storage/pfp_images/xh0dSrM3SvyGZb6Xb99BGYnDgq1L5syhH6rvnLGD.jpg', 'inactive', 'user', '2017-04-20 11:46:33', '2020-07-27 04:50:41', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(6, 'dax42', 'Mr. Cody Armstrong', 'stamm.leanne@example.com', '$2y$12$68cELj1l1k2Oc0OoAfu7eOT8jobPex/9J4EDDDq2QCj0SxH.8TEeq', '1-440-482-5220', '1989-02-19 11:26:50', 'storage/pfp_images/0EpagAsRpBbykBddqvX6IKry3PiDzRoJi6YTtv2H.jpg', 'inactive', 'user', '1991-06-28 06:18:12', '1984-01-29 00:43:47', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(7, 'clint39', 'Peyton Bernhard', 'maybell95@example.net', '$2y$12$n4OkehIQ4ZYLW.kd7N0rqOCjzJQzjx9HFZVSER6Vtv9NPR64zqsky', '1-385-983-2713', '1973-10-30 18:59:12', 'storage/pfp_images/xh0dSrM3SvyGZb6Xb99BGYnDgq1L5syhH6rvnLGD.jpg', 'active', 'user', '1997-03-24 09:47:00', '1970-01-04 12:19:11', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(8, 'fay28', 'Missouri Crist', 'fisher.sabrina@example.com', '$2y$12$JFa0abV91fPjtR2z/qgLLeP.8lSQxf2xFv5UfmSC9JXSH/fq1034K', '1-458-478-8505', '1989-04-14 11:41:28', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'active', 'user', '2021-07-06 10:41:19', '2015-01-02 20:09:23', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(9, 'weimann.heather', 'Constantin Hand IV', 'mccullough.earlene@example.com', '$2y$12$7HRBoNk/pDzDV6YwK9hYc.lf4YH9SW8yNZOlsUy2YRZAdu56aQaQm', '(207) 782-2301', '2020-12-15 14:29:53', 'storage/pfp_images/qGsr0vE1ULcdlaWrMghsdHaWZUgMnbs7gEFnqMtP.jpg', 'suspended', 'user', '2020-04-29 13:58:10', '1981-01-02 11:57:50', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(10, 'andreane96', 'Cathryn Gislason', 'shany.kozey@example.com', '$2y$12$auvSHSasw3CAqEq8S86Iv.xY4Gb4aR8ouv8j6Wo13DqFf.Ox/FTpi', '+12763163255', '1970-05-06 12:52:41', 'storage/pfp_images/1ntnbVRmq7eCFUp5jJG6NlUCbDGEH28CbJLfOYXA.jpg', 'active', 'user', '1999-09-19 02:38:26', '2001-04-26 06:01:28', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(11, 'wunsch.ashlee', 'Gideon Lockman V', 'nienow.concepcion@example.org', '$2y$12$EQ1GKYRZPyE3C/UJgD5IiOyIDErXfPztdE2uRjaY5ruoRYaK0mwBG', '(743) 856-1129', '2024-05-22 04:56:42', 'storage/pfp_images/qogiZIyHJYvWyvVG7tteyewx3rrUmdjJO3qptZZ7.jpg', 'inactive', 'user', '2007-12-30 04:23:04', '1999-02-26 18:02:39', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(12, 'nnader', 'Amir Cassin', 'nthiel@example.org', '$2y$12$NmNLemz7heeyPaljjoKzqelX8NvIIc9i9bNWCpigtPDx10csqgKPy', '539.877.1020', '2002-12-02 09:18:02', 'storage/pfp_images/1ntnbVRmq7eCFUp5jJG6NlUCbDGEH28CbJLfOYXA.jpg', 'active', 'user', '2013-10-13 07:09:33', '1995-08-12 22:27:11', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(13, 'pondricka', 'Brant Beatty', 'kameron46@example.com', '$2y$12$gdPp1TzMzw5Vp95GoNDYA.CFrNLfBvcF53YEX8niSdzOKfPhzsdYi', '870-398-2178', '1992-09-18 06:29:57', 'storage/pfp_images/TzqPNiNGwwKbll4xKv5ljLJt6C9sq2J92x74so76.jpg', 'inactive', 'user', '1975-03-26 16:30:22', '2019-09-26 03:41:51', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(14, 'donnelly.adrain', 'Ms. Lucinda Rutherford PhD', 'orlo.schmidt@example.com', '$2y$12$SjQZLkHVRXNkhcUP9dGVZ.40Xoefc6KxxwIiI1A0dXgm1DyEFtpty', '704.897.1096', '2019-05-13 10:49:36', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'inactive', 'user', '1970-09-15 06:16:11', '2021-03-30 03:12:45', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(15, 'leonardo81', 'Mr. Tyrell Wolff Jr.', 'stewart33@example.net', '$2y$12$iVfXdC.BAeRw60I8f86Yj.UG9uITuFvJ3IpgAnrk.MwINlJi8SSga', '+1 (716) 488-4391', '2018-04-04 04:44:31', 'storage/pfp_images/qGsr0vE1ULcdlaWrMghsdHaWZUgMnbs7gEFnqMtP.jpg', 'suspended', 'user', '1975-07-14 18:46:30', '1993-01-08 12:03:33', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(16, 'vschroeder', 'Ara Trantow', 'anabelle64@example.com', '$2y$12$yKhhld8i038yep8Oy7UiVu6XdG1aNp98vKBq11re6F5PH58aQPpY.', '380-821-1890', '1971-02-03 16:46:18', 'storage/pfp_images/0EpagAsRpBbykBddqvX6IKry3PiDzRoJi6YTtv2H.jpg', 'active', 'user', '2014-11-17 10:11:02', '1973-11-04 05:41:24', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(17, 'coleman63', 'Clementina Cronin', 'eula.bogan@example.net', '$2y$12$/22CsVdaH9nf9UGr9jG8PuCfQZuTlHWDElKri5awoCepWVJ8BVzIC', '+1-585-307-7642', '1985-11-11 07:07:35', 'storage/pfp_images/ydmiPVsF4getPJHMBvm2MZBsYMiwFIGy6E7GQcee.jpg', 'suspended', 'user', '2023-08-08 03:32:45', '2008-05-26 22:21:12', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(18, 'tiana95', 'Calista Huels', 'nquitzon@example.com', '$2y$12$r4BjfpiV5/vkg0c1.uNDs.KYA3jkE7SspBJhibfO8cmo9vePw2Iqm', '1-706-834-2826', '1981-08-23 12:53:17', 'storage/pfp_images/xh0dSrM3SvyGZb6Xb99BGYnDgq1L5syhH6rvnLGD.jpg', 'suspended', 'user', '1980-04-21 12:55:26', '2014-07-27 02:49:35', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(19, 'daugherty.clifton', 'Angus Halvorson Sr.', 'shomenick@example.com', '$2y$12$/wiGT5cqn5xWPhMsjK6zU./BRV2OymM7uh7MalAjDlIyvnevujWgu', '+14434706335', '2024-02-20 21:13:17', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'suspended', 'user', '1972-01-31 22:32:24', '1979-08-12 10:25:27', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(20, 'urban83', 'Garett Rosenbaum', 'pjohns@example.com', '$2y$12$z3ApKs.0p2GKijWp1ndvpuxDOzsIIT.usLKQzFn6RraWRo8x62P32', '+1-838-325-6818', '1972-08-17 14:23:00', 'storage/pfp_images/xh0dSrM3SvyGZb6Xb99BGYnDgq1L5syhH6rvnLGD.jpg', 'suspended', 'user', '1976-10-21 16:16:46', '1996-05-19 16:23:54', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(21, 'ernser.tyrel', 'Eula Koss', 'lelah72@example.org', '$2y$12$GYhJGsNyAAPC7ivl/5fVc.SCWO01iV6IuMM3ZgreK4fbLWD/QFYFS', '(234) 998-3764', '1996-03-21 12:13:28', 'storage/pfp_images/eucrU75LF1hunMg3dwQZruzlg5EW5p3zKFuULz2y.jpg', 'suspended', 'user', '1983-11-24 06:06:34', '1990-08-19 11:53:58', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(22, 'balistreri.nicolas', 'Emie Kautzer', 'rdickinson@example.com', '$2y$12$FPEpwi.GVb8HBCHSYN9pDOOfKv9oR.xFG6F6fjssAD3okeuEZCguK', '(769) 394-2842', '1991-02-23 15:01:57', 'storage/pfp_images/TzqPNiNGwwKbll4xKv5ljLJt6C9sq2J92x74so76.jpg', 'inactive', 'user', '1978-02-10 13:19:54', '1988-11-28 22:37:46', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(23, 'joan.murphy', 'Ambrose Runte PhD', 'jamaal.haag@example.com', '$2y$12$5XytteGrKvMLYobjfbY2seM0oPiwYLJ79bI3VlXnUStKVmH4gwEEy', '+1-820-574-5125', '1987-04-05 04:15:05', 'storage/pfp_images/PGBkBSdWBz1vwU03Tql3mOtzoQFg9eiCkDIvt7km.jpg', 'suspended', 'user', '2021-10-06 17:05:51', '2022-01-17 02:49:59', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(24, 'enoch.deckow', 'Dr. Joyce Koss', 'ressie70@example.net', '$2y$12$qF6Nzjt0ik54P6w1D1BJ6OreGipzqLOg540cL4eDEcEZMxoWGgkr.', '1-580-238-2486', '2021-04-01 22:20:33', 'storage/pfp_images/1ntnbVRmq7eCFUp5jJG6NlUCbDGEH28CbJLfOYXA.jpg', 'inactive', 'user', '1972-02-15 15:27:06', '1972-04-26 16:44:32', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(25, 'khauck', 'Garett Ankunding I', 'ifay@example.com', '$2y$12$M6uRaSwMT4XnoQMr7YMMveu5YeQdqYFQ7.b/KN74VB08v5HwFGR2q', '571.544.8959', '1971-03-29 13:42:28', 'storage/pfp_images/PGBkBSdWBz1vwU03Tql3mOtzoQFg9eiCkDIvt7km.jpg', 'suspended', 'user', '1971-10-19 21:17:27', '2002-06-01 20:38:49', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(26, 'ihyatt', 'Carrie Barton PhD', 'tressie26@example.com', '$2y$12$tIS/gK5go.r1Pfry.yWt5OS6gFtgs11mxck.NH5t60IfrVge7XQMe', '(947) 428-7952', '2006-07-11 08:30:59', 'storage/pfp_images/tPQiwPCXREycsDSb4Y7i72HWSjbIxmkvKNCGNcEW.jpg', 'inactive', 'user', '2020-01-18 09:16:38', '1984-08-11 02:48:56', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(27, 'mcclure.tressa', 'Zoey Toy', 'prudence88@example.com', '$2y$12$6HLyDev8uDQkNyu0dAuk4.Cz6UsQJY9Q4pIn/.tQo0gUPTmEjddFm', '+1 (865) 836-1994', '2023-09-08 00:10:41', 'storage/pfp_images/eucrU75LF1hunMg3dwQZruzlg5EW5p3zKFuULz2y.jpg', 'suspended', 'user', '2017-04-25 03:17:03', '2012-07-31 02:49:34', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(28, 'caleigh.borer', 'Candelario Orn', 'keyshawn76@example.org', '$2y$12$bWRkFJ.BP2YdyJafGOFlE.i104kkp.r8OOSgYTlAvdbMGvjKm9W4O', '+1-531-447-1285', '1990-08-06 06:29:27', 'storage/pfp_images/0EpagAsRpBbykBddqvX6IKry3PiDzRoJi6YTtv2H.jpg', 'active', 'user', '2001-02-22 09:18:36', '1977-06-27 10:50:14', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(29, 'foconnell', 'Viola Hyatt I', 'don.oconner@example.org', '$2y$12$kYaxXusDdEVp6AedXcQFxu9xBPsS6hISaBe7x2GnW61AX/5lwLZsq', '1-320-250-6595', '1983-12-21 08:55:34', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'active', 'user', '1989-10-07 20:34:15', '2009-02-25 02:27:10', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(30, 'zemlak.lesly', 'Mr. Gregg Zboncak', 'dell.daugherty@example.net', '$2y$12$xj2Xc8c4CWbC6m/ET3UxwuESoFUKVdMw9vQ7YDzl7kvYYuL17bHCS', '+1 (325) 912-8847', '1992-11-27 12:25:36', 'storage/pfp_images/xh0dSrM3SvyGZb6Xb99BGYnDgq1L5syhH6rvnLGD.jpg', 'suspended', 'user', '2021-09-08 22:34:45', '2019-06-24 18:13:30', '2024-11-20 16:22:11', '2024-11-20 16:22:11'),
	(31, 'jonas10', 'Ernest Gerlach PhD', 'alberta.pfannerstill@example.org', '$2y$12$/Pz7Bk27C9RzNAZTmvV1HeVotG4u9WRf5CaNKcHTp/1AkD/suwqAu', '678.931.1705', '2002-01-15 19:59:04', 'storage/pfp_images/umdyyK62FfQovVdrDZkwu2sBHtMI8MHSLEZbZX1y.jpg', 'suspended', 'user', '2013-05-12 22:15:54', '2003-05-28 23:13:31', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(32, 'ronny.jast', 'Jayce Mertz', 'vmayert@example.net', '$2y$12$FHHEftXOCyeI/crP9d4dz.BhdwQTR9R.jxYOFJ3bLVejLDANyhbpW', '+1 (469) 593-7021', '2016-08-13 13:54:46', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'active', 'user', '1990-09-10 17:10:15', '1996-07-29 19:33:56', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(33, 'jules.oconnell', 'Annette Gerlach I', 'hermann.fernando@example.net', '$2y$12$y60k3fQxOJAheo33I1rYO.Sdz2GL2hICvTXhFvyl8KlWOUla0KDWW', '458.521.3974', '1978-12-13 16:25:17', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'active', 'user', '1988-10-20 18:52:50', '1973-07-01 10:14:24', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(34, 'uhuels', 'Idella Beer', 'dmurazik@example.net', '$2y$12$JrywdPQm/uYMfo1OCQrvwukL9krgQVpQPVtzm1MN9YY7FWQD.fktK', '351.956.6009', '1995-01-21 03:33:12', 'storage/pfp_images/7RRyThhMbmkSyUsaUrWHtkIdRFjgNSpguA3IGbdF.jpg', 'suspended', 'user', '1988-12-29 00:28:34', '1989-01-31 06:07:47', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(35, 'reina.kovacek', 'Justen Collier', 'bailey.claire@example.org', '$2y$12$K.V2l9/CwqzTKien8huH9.kfgGDvxhiNZR6.oJmYMVlDg2uzoEp3.', '820.642.8877', '1986-02-28 01:25:08', 'storage/pfp_images/pfphyakkisai.jpg', 'inactive', 'user', '1998-10-19 08:37:05', '2000-01-07 00:54:53', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(36, 'rosamond89', 'Vivian Doyle Sr.', 'laury.bauch@example.com', '$2y$12$v9RK8HuYWMWpHz8gMyFIDOLH9lb0j3EkFbWijI5d9ePo.kGh7.LY6', '915.617.4880', '1992-03-03 21:26:27', 'storage/pfp_images/1ntnbVRmq7eCFUp5jJG6NlUCbDGEH28CbJLfOYXA.jpg', 'inactive', 'user', '2009-05-17 10:47:10', '2020-08-30 05:39:22', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(37, 'sierra.brakus', 'Dr. Ardith Streich', 'dane28@example.net', '$2y$12$lnX4Q/ttdfV6fSni3BPWtOBwEtfLHbCSClxeZ4lYDb6V2ZEwow8xK', '(828) 219-5558', '1982-09-15 02:13:31', 'storage/pfp_images/eucrU75LF1hunMg3dwQZruzlg5EW5p3zKFuULz2y.jpg', 'inactive', 'user', '2014-10-09 07:46:33', '2003-05-21 22:08:45', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(38, 'botsford.general', 'Maxie Wunsch', 'quitzon.kacie@example.org', '$2y$12$ToVORg1mN0n1sHAewwji3uoO1qe91gV7yqG9yQUYayhDC.ZlEA6em', '1-901-595-5317', '1990-09-15 22:06:19', 'storage/pfp_images/UG68MIC91hLhhHMLxanFmoipABF0JVPnwcddrFlF.jpg', 'inactive', 'user', '1991-08-06 13:14:06', '1996-02-06 19:28:27', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(39, 'kyleigh.casper', 'Dr. Oran Kuvalis I', 'okon.randall@example.net', '$2y$12$0gHOgioPepqDijTAOhd61.Ajy11DdYzoFIYvpa7lPuRqDrKIQungy', '+15596328441', '1996-04-10 03:52:04', 'storage/pfp_images/Yj2oG0vwz9iHniDmHxdcNmWrGhQSb3FstFcxwxq0.jpg', 'inactive', 'user', '2006-12-16 04:02:52', '1970-09-11 21:24:30', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(40, 'bernier.giovanny', 'Mr. Keyshawn Prohaska', 'maggio.alivia@example.com', '$2y$12$lo3XlVhZiqcQLXBOkwQP0.PD9TKy4rSf.obxvycZhTPunpHperKoi', '+1.864.497.1565', '1986-03-02 20:16:13', 'storage/pfp_images/PGBkBSdWBz1vwU03Tql3mOtzoQFg9eiCkDIvt7km.jpg', 'inactive', 'user', '1984-11-13 14:12:48', '2017-12-24 05:47:30', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(41, 'vabshire', 'Mr. Heber Bayer MD', 'foster52@example.com', '$2y$12$tldpTirgY20V.N3qdKeB0Oq85A6FItp7rbCCLSTtba3gvfYT3.wEK', '+1-667-709-6350', '2010-08-30 12:43:05', 'storage/pfp_images/02jJwKCiQLhPZT7N0v3zM3ZXNwAfNgHj2tOIpdcv.jpg', 'inactive', 'user', '1979-08-02 13:41:01', '2001-12-07 04:18:09', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(42, 'bwilliamson', 'Unique O\'Keefe', 'jace86@example.com', '$2y$12$s95xUtSjM.n94AfCi7FkTOyqrGFRw9HvRAQVCLJPS11gG7.jSAKsm', '424-729-1801', '2008-06-16 11:50:59', 'storage/pfp_images/Yj2oG0vwz9iHniDmHxdcNmWrGhQSb3FstFcxwxq0.jpg', 'inactive', 'user', '1980-08-29 11:08:52', '1990-08-04 21:29:37', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(43, 'harvey.anne', 'Karianne Weber', 'robin86@example.org', '$2y$12$Adp9GeWDfhzngsBNjbvSF.eomuVIiS8FJe4Rtm7VVPIspUwKASyzG', '+1.678.291.6771', '2008-10-24 23:52:05', 'storage/pfp_images/ydmiPVsF4getPJHMBvm2MZBsYMiwFIGy6E7GQcee.jpg', 'active', 'user', '1992-09-25 06:02:08', '2008-09-06 10:58:04', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(44, 'elise31', 'Cristian O\'Conner', 'hector90@example.org', '$2y$12$goIpqlTr6BtvFVOlTtnvG.v2w.8W9gSqIFigjb5qERqlbkAghhzl6', '320-274-7379', '2003-02-03 18:47:50', 'storage/pfp_images/Yj2oG0vwz9iHniDmHxdcNmWrGhQSb3FstFcxwxq0.jpg', 'suspended', 'user', '2001-08-07 20:04:01', '1999-07-09 14:31:19', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(45, 'istrosin', 'Aliya Anderson', 'bertrand64@example.com', '$2y$12$toZfU2Cx.fIIojC/qqMF2eoLLJuKaPbqhZpiwlyqk3CwDWb.MIWCe', '858-820-7117', '1992-12-30 19:28:24', 'storage/pfp_images/qGsr0vE1ULcdlaWrMghsdHaWZUgMnbs7gEFnqMtP.jpg', 'inactive', 'user', '2024-04-03 08:36:21', '2015-05-17 07:22:22', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(46, 'julia.ratke', 'Prof. Parker Yost V', 'madison.ryan@example.com', '$2y$12$e55r/OCvsGx748fogVFzS.GnvuYuGlpb8qRvD4EkvPQKeF0ZJL5A6', '+17374549903', '2009-05-29 08:29:17', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'suspended', 'user', '2015-11-29 20:01:31', '2010-12-10 21:25:07', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(47, 'carroll51', 'Thaddeus Blick', 'greenholt.adonis@example.org', '$2y$12$CMSSEKvaz5u50vJUKOL1quPD0/XTcAgnOM3dirz/x22WjOxdJFEsW', '603-538-4194', '1998-01-05 03:36:03', 'storage/pfp_images/eucrU75LF1hunMg3dwQZruzlg5EW5p3zKFuULz2y.jpg', 'inactive', 'user', '2020-04-27 10:07:53', '1985-06-08 20:38:59', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(48, 'arielle15', 'Prof. Keith Halvorson PhD', 'sanford.herbert@example.org', '$2y$12$8igmWETuXaUiax./G6.TTORTYsnCFH28bw3a1CtDMp4XlIcwGKSUy', '1-512-435-0783', '1977-10-03 20:04:52', 'storage/pfp_images/eucrU75LF1hunMg3dwQZruzlg5EW5p3zKFuULz2y.jpg', 'suspended', 'user', '1971-08-13 16:31:13', '2014-10-06 09:11:50', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(49, 'christy45', 'Krystal King', 'kyle99@example.com', '$2y$12$YE95o0uNrEr1o3krsmoPKOSwSBZW0.9gxCTZhWmLiVMIn4eUVuPbm', '+1-458-888-5282', '2007-05-25 08:58:30', 'storage/pfp_images/02jJwKCiQLhPZT7N0v3zM3ZXNwAfNgHj2tOIpdcv.jpg', 'inactive', 'user', '1979-01-28 03:23:31', '2017-06-09 01:56:21', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(50, 'sstroman', 'Sandy Stoltenberg', 'jdonnelly@example.net', '$2y$12$aBvj4abHtqzwKxEZUqkjO.QBu0yBv7l523nBpaErfkkqJJ1ODOJ72', '+1 (727) 861-3559', '1999-10-31 08:55:31', 'storage/pfp_images/02jJwKCiQLhPZT7N0v3zM3ZXNwAfNgHj2tOIpdcv.jpg', 'active', 'user', '1997-07-14 15:08:37', '1994-06-24 11:30:12', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(51, 'arthur.yundt', 'Mr. Bradley Satterfield', 'matt.schulist@example.net', '$2y$12$2TAH2IfYrhcta99z0qz81udyOUB0RiXoPihD/iIovDET44Dd4ECcq', '+1-713-766-6822', '2005-01-21 16:28:54', 'storage/pfp_images/qogiZIyHJYvWyvVG7tteyewx3rrUmdjJO3qptZZ7.jpg', 'active', 'user', '2008-12-15 01:10:55', '2012-12-18 13:07:42', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(52, 'bianka35', 'Candelario Mills', 'deshaun.witting@example.net', '$2y$12$U/lSbKMilrCT1iXxyxdPa.clzprEvBsSP5GKnUz4qRRq7spmu4oym', '+1 (812) 219-6704', '2006-08-06 23:02:53', 'storage/pfp_images/7RRyThhMbmkSyUsaUrWHtkIdRFjgNSpguA3IGbdF.jpg', 'active', 'user', '1971-04-28 04:42:22', '1979-03-14 04:08:29', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(53, 'hdibbert', 'Maryjane Bailey', 'kling.alejandra@example.org', '$2y$12$vHd.32sJrL6tDvxULazfdevdvpGvZ/615HrzX06lze7UvuQG8md2a', '+1-260-294-4833', '2005-11-08 04:43:59', 'storage/pfp_images/iH3r7kLfCjkYa3e26rSngqszFksTjSOdFMJxkutp.jpg', 'suspended', 'user', '1982-01-23 13:24:23', '1983-03-22 14:30:23', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(54, 'eframi', 'Sabryna Pfannerstill', 'abbigail.streich@example.net', '$2y$12$To9y4yBezxyjSQm7megd/.bh7xfi2tzYxVTmdntxacECJDUsPfKVW', '1-470-867-2795', '1999-03-25 13:14:29', 'storage/pfp_images/iH3r7kLfCjkYa3e26rSngqszFksTjSOdFMJxkutp.jpg', 'suspended', 'user', '1988-11-15 03:02:00', '2016-06-18 21:11:14', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(55, 'jkoch', 'Ocie Parker', 'nfeil@example.net', '$2y$12$52eeNQQ7t1F2LILYGlitc.6.FF8BRxi7KSIkGyX6NCUOXzlWTlG82', '1-272-205-4495', '2022-11-22 14:00:02', 'storage/pfp_images/UG68MIC91hLhhHMLxanFmoipABF0JVPnwcddrFlF.jpg', 'inactive', 'user', '1979-01-23 12:22:45', '1979-01-30 16:00:22', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(56, 'iortiz', 'Mrs. Aisha Dietrich', 'myriam.heller@example.net', '$2y$12$kB9zg.lI6HYwDbL/7SBgo.XAGXsdjG0/PpJyEDPYkHyff7nBAuXGW', '+1.541.946.0771', '2008-03-12 14:02:26', 'storage/pfp_images/02jJwKCiQLhPZT7N0v3zM3ZXNwAfNgHj2tOIpdcv.jpg', 'inactive', 'user', '1994-06-04 03:46:37', '2022-07-03 07:39:01', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(57, 'eldora.steuber', 'Everardo DuBuque', 'erwin65@example.com', '$2y$12$woIi3yASL3uj3spZq0u8uuDiIYg9bNe0mXdTvJ63bM/9EyTc155ra', '+13372012586', '2000-04-10 16:16:30', 'storage/pfp_images/1nYhyguneKAMoaipwocHGRFmYzsNI3a7e1g94Sen.jpg', 'active', 'user', '1990-07-24 00:14:21', '2004-09-15 07:56:43', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(58, 'gorczany.murphy', 'Nyasia Reichel', 'yrosenbaum@example.org', '$2y$12$.uU6ubSfg1jKxLkwynNWfulGden2lhA45o.F4ytnTJOoTVv1RbKFq', '+1.740.994.8842', '1992-12-23 02:10:36', 'storage/pfp_images/0EpagAsRpBbykBddqvX6IKry3PiDzRoJi6YTtv2H.jpg', 'suspended', 'user', '1990-11-17 02:52:48', '2002-05-12 19:38:18', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(59, 'kris08', 'Ms. Citlalli Kuhn', 'jadon.herman@example.org', '$2y$12$c6HO02QZcGQ8i2RSLXCQauNDPolHCEFPDXWS2D.2duzQ11m.wQKX.', '281-391-8126', '2002-03-10 01:49:51', 'storage/pfp_images/iH3r7kLfCjkYa3e26rSngqszFksTjSOdFMJxkutp.jpg', 'active', 'user', '1970-04-25 22:28:44', '2020-03-15 15:45:00', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(60, 'afunk', 'Prof. Missouri Wyman DVM', 'clarabelle.eichmann@example.org', '$2y$12$/3OP5pH/PjyODq9Cot3OPOKHulQRZyp4eD/jhLiwMKtppqRr9HDt2', '+1-301-857-9857', '2015-07-26 00:51:49', 'storage/pfp_images/Yj2oG0vwz9iHniDmHxdcNmWrGhQSb3FstFcxwxq0.jpg', 'inactive', 'user', '2017-11-15 05:47:51', '1996-07-10 12:15:03', '2024-11-22 06:57:26', '2024-11-22 06:57:26'),
	(61, 'wahyu@mail.ugm.ac.id', 'wahyu@mail.ugm.ac.id', 'wahyu@mail.ugm.ac.id', '$2y$12$0LNzBlMlKdgs0cvz5Qk5u.KLItbh7mfZqenHCaNRgfnylV3l9fr..', NULL, '2024-11-29 08:22:03', NULL, 'active', 'user', NULL, NULL, '2024-11-29 01:22:03', '2024-11-29 01:22:03'),
	(62, '1234567890', '1234567890', 'wahyuaaa@gmail.com', '$2y$12$gdi./R02WuRVJubQ6tLwZOlSdGDn6XDZTolcD6lfo9AJqhWAbngeW', NULL, '2024-11-29 08:44:36', NULL, 'active', 'user', NULL, NULL, '2024-11-29 01:44:36', '2024-11-29 01:44:36');

-- Dumping structure for table db_refinds.subkategori
CREATE TABLE IF NOT EXISTS `subkategori` (
  `id_subkategori` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` bigint unsigned NOT NULL,
  `nama_subkategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_subkategori` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_subkategori`),
  KEY `subkategori_id_kategori_foreign` (`id_kategori`),
  CONSTRAINT `subkategori_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_refinds.subkategori: ~16 rows (approximately)
INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `nama_subkategori`, `deskripsi_subkategori`, `created_at`, `updated_at`) VALUES
	(1, 1, 'laptop', 'Omnis aspernatur autem doloribus quia ut nam nisi occaecati. Sit fuga temporibus repellendus odit eveniet. Et possimus veritatis rerum. Similique pariatur sunt ut non.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(2, 1, 'mouse', 'Fugit laudantium quia quisquam ex odit. Vel molestias facilis est consequatur praesentium aut deleniti. Quae omnis est soluta expedita. Ut non illum omnis repudiandae officiis.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(3, 1, 'keyboard', 'Vitae vitae eius mollitia nostrum. Sint voluptatem laudantium qui neque autem odit fugit. Officiis velit asperiores delectus asperiores. Et neque ut dolor est aut.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(4, 1, 'hp', 'Minus ea sunt quidem asperiores. Aut sunt et esse autem cumque. Eum aut et sunt voluptatem magni. Nesciunt tempora a molestiae quibusdam.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(5, 2, 'kursi', 'Perspiciatis autem velit animi dignissimos nulla nobis est similique. Voluptate ratione animi laudantium expedita ea. Optio totam asperiores at aut sit sequi. Laudantium nam qui eos.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(6, 2, 'lampu', 'Voluptatum sint unde corporis asperiores ut. Vero aut fuga voluptatem aspernatur. In rem perferendis ratione ut.', '2024-10-24 16:16:13', '2024-11-07 06:32:54'),
	(7, 2, 'meja', 'Aliquam fuga et voluptatem vitae ipsa illum. A sint quas voluptates beatae omnis quia sed. Omnis aut dolore unde magnam autem quia enim in. Ut reprehenderit dolore magnam tempora cupiditate error.', '2024-10-24 16:16:14', '2024-11-07 06:32:54'),
	(8, 2, 'rak', 'Quo quidem id reiciendis accusamus labore eos exercitationem. Voluptas odio sint odio consectetur minima officiis eos. Velit recusandae non iusto quis sapiente voluptatem.', '2024-10-24 16:16:14', '2024-11-07 06:32:54'),
	(9, 3, 'topi', 'Molestiae consectetur veritatis qui doloremque et. Et perferendis nihil porro ipsum repellat necessitatibus. Qui quaerat tempora qui necessitatibus sit ipsam molestiae.', '2024-10-24 16:16:15', '2024-11-07 06:32:54'),
	(10, 3, 'sepatu', 'Quia aspernatur labore ipsa inventore hic aut. Recusandae dolore facilis repudiandae animi unde sint.', '2024-10-24 16:16:15', '2024-11-07 06:32:54'),
	(11, 3, 'celana', 'Magnam ab sit consequatur architecto nemo et. Id sint non dolore voluptatem maiores.', '2024-10-24 16:16:15', '2024-11-07 06:32:54'),
	(12, 3, 'baju', 'Eos tempora amet non sapiente mollitia deserunt ratione. Quasi qui aliquam nihil quod amet. Non suscipit voluptatum non deserunt recusandae aliquid.', '2024-10-24 16:16:16', '2024-11-07 06:32:54'),
	(13, 4, 'piring', 'Atque quibusdam tempora dolorem reprehenderit facere. Nemo commodi autem illo pariatur. Neque qui id adipisci eius velit consequatur quia. Doloremque veritatis et aliquam deleniti modi numquam.', '2024-10-24 16:16:16', '2024-11-07 06:32:54'),
	(14, 4, 'gelas', 'Molestias quia earum illo dolore. At facere soluta dolores blanditiis. Alias unde quam numquam fuga enim est. Sunt suscipit placeat expedita ut nihil suscipit rerum.', '2024-10-24 16:16:17', '2024-11-07 06:32:54'),
	(15, 4, 'wajan', 'Qui rem autem neque qui. Autem sunt temporibus mollitia eos ducimus id quo atque. Unde ea quisquam ipsa et molestiae culpa.', '2024-10-24 16:16:17', '2024-11-07 06:32:54'),
	(16, 4, 'mangkok', 'Ea et consequatur earum reprehenderit non eum alias aut. Dolorum sed est veniam voluptatum ducimus provident ea. Eos velit quia ut illo qui eius.', '2024-10-24 16:16:17', '2024-11-07 06:32:54');

