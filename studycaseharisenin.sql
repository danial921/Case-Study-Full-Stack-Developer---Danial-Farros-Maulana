-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Agu 2022 pada 10.27
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studycaseharisenin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`id`, `name`, `path`, `size`, `created_at`, `updated_at`) VALUES
(1, 'kopi1', 'https://raw.githubusercontent.com/danial921/dumyimage/main/kopi1.jpg', 11, '2022-08-10 05:59:24', '2022-08-10 05:59:24'),
(2, 'kopi2', 'https://raw.githubusercontent.com/danial921/dumyimage/main/kopi2.jpeg', 12, '2022-08-10 06:00:28', '2022-08-10 06:00:28'),
(3, 'kopi3', 'https://raw.githubusercontent.com/danial921/dumyimage/main/kopi3.jpg', 17, '2022-08-10 06:00:46', '2022-08-10 06:00:46'),
(4, 'kursi1', 'https://raw.githubusercontent.com/danial921/dumyimage/main/kursi.png', 12, '2022-08-10 06:01:02', '2022-08-10 06:01:02'),
(5, 'kursi2', 'https://raw.githubusercontent.com/danial921/dumyimage/main/kursi2.jpg', 14, '2022-08-10 06:01:17', '2022-08-10 06:01:17'),
(6, 'notebook', 'https://raw.githubusercontent.com/danial921/dumyimage/main/notebook.jpg', 10, '2022-08-10 08:11:47', '2022-08-10 08:11:47'),
(7, 'notebook1', 'https://raw.githubusercontent.com/danial921/dumyimage/main/notebook1.jpg', 13, '2022-08-10 08:11:58', '2022-08-10 08:11:58'),
(8, 'notebook2', 'https://raw.githubusercontent.com/danial921/dumyimage/main/notebook2.jpg', 50, '2022-08-10 08:12:15', '2022-08-10 08:12:15'),
(9, 'salad', 'https://raw.githubusercontent.com/danial921/dumyimage/main/salad.png', 15, '2022-08-10 08:12:27', '2022-08-10 08:12:27'),
(10, 'salad2', 'https://raw.githubusercontent.com/danial921/dumyimage/main/salad2.jpg', 30, '2022-08-10 08:12:45', '2022-08-10 08:12:45'),
(11, 'salad3', 'https://raw.githubusercontent.com/danial921/dumyimage/main/salad3.jpg', 11, '2022-08-10 08:12:57', '2022-08-10 08:12:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `asset_id`, `created_at`, `updated_at`) VALUES
(1, 'minuman', 'minuman sehat', 1, '2022-08-10 06:03:07', '2022-08-10 06:03:07'),
(2, 'perabotan rumah tangga', 'perabotan', 4, '2022-08-10 06:03:23', '2022-08-10 06:03:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_08_10_024924_create_assets_table', 1),
(5, '2022_08_10_113527_create_products_table', 1),
(6, '2022_08_10_120039_create_categories_table', 1),
(7, '2022_08_10_120958_create_productassets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `productassets`
--

CREATE TABLE `productassets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `productassets`
--

INSERT INTO `productassets` (`id`, `asset_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-08-10 06:03:59', '2022-08-10 06:03:59'),
(2, 2, 2, '2022-08-10 06:04:02', '2022-08-10 06:04:02'),
(3, 3, 2, '2022-08-10 06:04:04', '2022-08-10 06:04:04'),
(4, 4, 1, '2022-08-10 06:04:10', '2022-08-10 06:04:10'),
(5, 5, 1, '2022-08-10 06:04:14', '2022-08-10 06:04:14'),
(6, 6, 3, '2022-08-10 08:14:23', '2022-08-10 08:14:23'),
(7, 7, 3, '2022-08-10 08:14:29', '2022-08-10 08:14:29'),
(8, 8, 3, '2022-08-10 08:14:33', '2022-08-10 08:14:33'),
(9, 9, 4, '2022-08-10 08:15:00', '2022-08-10 08:15:00'),
(10, 10, 4, '2022-08-10 08:15:04', '2022-08-10 08:15:04'),
(11, 11, 4, '2022-08-10 08:15:07', '2022-08-10 08:15:07'),
(12, 12, 3, '2022-08-10 08:15:10', '2022-08-10 08:15:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_slug`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'kursi', 'kursi-pegawai', 50000, 'Kursi adalah sebuah perabotan rumah tangga yang digunakan sebagai tempat duduk', '2022-08-10 06:02:12', '2022-08-10 06:02:12'),
(2, 'kopi', 'kopi-luwak', 30000, 'kopi luwak nyaman untuk diminum', '2022-08-10 06:02:30', '2022-08-10 06:02:30'),
(3, 'notebook', 'notebook', 15000, 'Notebook adalah perangkat pengganti buku tulis yang lebih fleksibel dan praktis, serta memiliki ukuran layar yang lebih kecil dibandingkan', '2022-08-10 08:09:52', '2022-08-10 08:09:52'),
(4, 'salad', 'salad-sehat', 12000, 'Selada (bahasa Belanda: salade; bahasa Inggris: salad) adalah jenis makanan yang terdiri dari campuran sayur-sayuran dan bahan-bahan makanan siap santap.', '2022-08-10 08:10:16', '2022-08-10 08:10:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `productassets`
--
ALTER TABLE `productassets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `productassets`
--
ALTER TABLE `productassets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
