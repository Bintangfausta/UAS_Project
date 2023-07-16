-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2023 pada 19.05
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_produk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(4, 'Boots'),
(3, 'Comfort Shoes'),
(1, 'Sneaker'),
(2, 'Sport');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `alamat_pemesan` varchar(45) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(1, '2023-04-08', 'Abdurrahman Ziyad', 'Depok', '082094374577', 'ziyad@gmail.com', 2, 'Pesanan Meja Belajar', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(11) NOT NULL,
  `min_stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_jual`, `harga_beli`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(1, 'SN01', 'Men\'s Lacoste Carnaby', 1599000, 1000000, 10, 2, 'The Carnaby Piquée is the ideal off-duty sneaker. Combining Lacoste tennis heritage with modern hits.', 1),
(2, 'SN02', 'PUMA All Day Active Sneakers', 2000000, 1500000, 6, 2, 'Best for lifestyle,  Monochrome mesh panelled sneakers with contrast formstrip, Textile insole', 1),
(5, 'SB01', 'Caterpillar Trespass', 2599000, 2000000, 12, 2, 'Warna curry (coklat)\r\n- Upper leather\r\n- Memory foam insole\r\n- Rubber outsole', 4),
(6, 'SB02', 'Jack & Jones Frances Leather Boots', 800000, 700000, 10, 2, '- Solid tone leather boots\r\n- Cow leather and cow suede upper\r\n- Cotton inner\r\n- Rubber outsole\r\n- Round toe\r\n- Lace closure', 4),
(7, 'CS01', 'Playboy Elroy', 1000000, 7000000, 14, 2, '- Cow leather upper\r\n- Lycra insole\r\n- Rubber foam outsole\r\n- Round toe', 3),
(8, 'CS02', 'Hush Puppies Advance Knit Slipon', 129900, 100000, 8, 2, '- Knit upper\r\n- Knit insole\r\n- Rubber outsoel\r\n- Round toe\r\n-Black Color', 3),
(9, 'SS01', 'ADIDAS alphaboost v1 shoes', 150000, 120000, 30, 2, 'Step up your weekend running game in these adidas Alphaboost shoes. Lace them up and hit the track, the local park or the treadmill. A Bounce midsole makes the ride soft and springy. BOOST on the heel returns energy as you go, so you always have something left in the tank for the end of your run.', 2),
(10, 'SS02', 'Nike Legend Essential 3 Nn', 819000, 600000, 20, 2, '- Built Tough High-abrasion honeycomb mesh upper dengan durable overlay\r\n- Insole tekstil\r\n- Rubber outsole\r\n- Round toe\r\nLight Silver/Summit White/Iron Grey', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` enum('admin','manager','pelanggan') NOT NULL DEFAULT 'pelanggan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Bintang Fausta Listianto', 'bintang.faust@gmail.com', NULL, '$2y$10$5/CmEadzstvV5.QKYxMpz.4EUM5rdcAkDejUq7bYmJyOcw0VEaGSO', NULL, 'admin', '2023-06-14 22:39:05', '2023-06-14 22:39:05'),
(2, 'Bintang Fausta Listianto', 'bintangfausta@gmail.com', NULL, '$2y$10$wqmO/f2zuldIbA1MRvcFueNgXb6esGgD7nv1aXDE4a8fU7p6IRuNG', NULL, 'pelanggan', '2023-07-12 07:38:54', '2023-07-12 07:38:54'),
(3, 'Nurul Fikri', 'orang@gmail.com', NULL, '$2y$10$aPBq5qDiuKU2.m1cntin..4xhVIxbhHZdLpY9C/ZNb2Y.A/JYeS6y', NULL, 'pelanggan', '2023-07-14 19:56:52', '2023-07-14 19:56:52'),
(4, 'bintang aja', 'bintang@gmail.com', NULL, '$2y$10$9i..CuUk53SWIvzv4yPHp.OZ5uLNNma3B4G87LFTqgcgIJptk1bbK', NULL, 'admin', '2023-07-15 01:34:40', '2023-07-15 01:34:40'),
(5, 'rafan', 'rafan@gmail.com', NULL, '$2y$10$dI5W2RSbd.DORQLE9KR3p.o9tsT.W6Vxv4z5OfGuWKNW9tyawRMh6', NULL, 'pelanggan', '2023-07-15 01:45:33', '2023-07-15 01:45:33'),
(6, 'mahasiswa1', 'mahasiswa1@gmail.com', NULL, '$2y$10$OTfGiT5bGjqxX3HAqasrPe9R/AFX4ttmtgaj7ZFCDGhGZH86t1tte', NULL, 'pelanggan', '2023-07-15 02:16:01', '2023-07-15 02:16:01'),
(7, 'mahasiswa2', 'mahasiswa2@gmail.com', NULL, '$2y$10$SYoWqXtY.QoQ4JPBBcxWT.0l/xWwwTBZZp9T0Gh11xPZkLLQIfmLq', NULL, 'pelanggan', '2023-07-15 05:09:31', '2023-07-15 05:09:31'),
(8, 'user1', 'user1@gmail.com', NULL, '$2y$10$cwNliQ4o/o5uJdDmaQ0a4uDwdYu/zAXzXRLOwIijRzsrG6KP7UCOK', NULL, 'pelanggan', '2023-07-15 09:47:27', '2023-07-15 09:47:27'),
(9, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$Fs89Y.FmTIWf3Ze9vn6ea.XgFpFIoxJXmdvvaTNErd9Bfzb1nH30e', NULL, 'admin', '2023-07-15 10:00:54', '2023-07-15 10:00:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`tanggal`),
  ADD KEY `fk_pesanan_produk1_idx` (`produk_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_kategori_produk_idx` (`kategori_produk_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori_produk` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
