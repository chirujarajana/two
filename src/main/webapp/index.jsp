<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Modern Shopping</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://cdnjs.cloudflare.com">

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        /* ================================
           ROOT
        ================================= */

        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --accent: #f97316;
            --success: #16a34a;
            --danger: #ef4444;

            --bg: #f8fafc;
            --surface: #ffffff;
            --surface-2: #f1f5f9;

            --text: #0f172a;
            --muted: #64748b;
            --border: #e2e8f0;

            --shadow-sm: 0 2px 8px rgba(15, 23, 42, .06);
            --shadow: 0 10px 30px rgba(15, 23, 42, .08);
            --shadow-lg: 0 20px 50px rgba(15, 23, 42, .15);

            --radius: 20px;
            --radius-md: 14px;
            --radius-sm: 10px;

            --transition: all .25s ease;
            --container: 1280px;
        }

        body.dark {
            --bg: #0f172a;
            --surface: #172033;
            --surface-2: #1e293b;
            --text: #f8fafc;
            --muted: #94a3b8;
            --border: #334155;
        }

        /* ================================
           RESET
        ================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
            transition: var(--transition);
        }

        img {
            max-width: 100%;
            display: block;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            border: none;
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: auto;
        }

        /* ================================
           BUTTONS
        ================================= */

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 13px 22px;
            border-radius: 12px;
            font-weight: 700;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: var(--surface);
            color: var(--text);
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        /* ================================
           TOP HEADER
        ================================= */

        .topbar {
            background: var(--text);
            color: white;
            padding: 9px 0;
            font-size: 13px;
        }

        .topbar-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* ================================
           HEADER
        ================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: color-mix(in srgb, var(--surface) 92%, transparent);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            height: 78px;
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 23px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo-icon {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 12px;
            background: var(--primary);
            color: white;
        }

        .logo span {
            color: var(--primary);
        }

        .search {
            flex: 1;
            max-width: 520px;
            display: flex;
            align-items: center;
            background: var(--surface-2);
            border: 1px solid transparent;
            border-radius: 14px;
            padding: 0 14px;
            transition: var(--transition);
        }

        .search:focus-within {
            background: var(--surface);
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(37, 99, 235, .1);
        }

        .search input {
            flex: 1;
            padding: 14px 10px;
            border: none;
            outline: none;
            background: transparent;
            color: var(--text);
        }

        .search button {
            background: transparent;
            color: var(--muted);
            font-size: 17px;
        }

        .header-actions {
            display: flex;
            gap: 8px;
        }

        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 12px;
            background: var(--surface-2);
            color: var(--text);
            position: relative;
            transition: var(--transition);
        }

        .icon-btn:hover {
            background: var(--primary);
            color: white;
        }

        .badge-count {
            position: absolute;
            top: -5px;
            right: -5px;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--danger);
            color: white;
            font-size: 11px;
            font-weight: 700;
            display: grid;
            place-items: center;
        }

        .mobile-menu-btn {
            display: none;
        }

        /* ================================
           NAVIGATION
        ================================= */

        .nav {
            border-bottom: 1px solid var(--border);
            background: var(--surface);
        }

        .nav-inner {
            display: flex;
            gap: 30px;
            align-items: center;
            height: 54px;
        }

        .nav a {
            font-size: 14px;
            font-weight: 600;
            color: var(--muted);
        }

        .nav a:hover,
        .nav a.active {
            color: var(--primary);
        }

        /* ================================
           HERO
        ================================= */

        .hero {
            padding: 40px 0;
        }

        .hero-card {
            min-height: 460px;
            border-radius: 28px;
            overflow: hidden;
            position: relative;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg, rgba(15,23,42,.94), rgba(15,23,42,.45)),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=80")
                center/cover;
        }

        .hero-content {
            width: min(620px, 100%);
            padding: 55px;
            color: white;
        }

        .hero-label {
            display: inline-flex;
            gap: 8px;
            align-items: center;
            padding: 8px 14px;
            border-radius: 999px;
            background: rgba(255,255,255,.15);
            backdrop-filter: blur(10px);
            font-size: 13px;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: clamp(38px, 5vw, 64px);
            line-height: 1.08;
            margin-bottom: 18px;
        }

        .hero h1 span {
            color: #60a5fa;
        }

        .hero p {
            max-width: 520px;
            color: rgba(255,255,255,.8);
            font-size: 17px;
            margin-bottom: 28px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ================================
           TRUST BAR
        ================================= */

        .trust-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 16px;
            margin: 5px 0 45px;
        }

        .trust-card {
            padding: 20px;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .trust-card i {
            font-size: 24px;
            color: var(--primary);
        }

        .trust-card strong {
            display: block;
            font-size: 14px;
        }

        .trust-card small {
            color: var(--muted);
        }

        /* ================================
           SECTIONS
        ================================= */

        section {
            padding: 35px 0;
        }

        .section-head {
            display: flex;
            align-items: end;
            justify-content: space-between;
            margin-bottom: 25px;
            gap: 15px;
        }

        .section-head h2 {
            font-size: 28px;
            margin-bottom: 5px;
        }

        .section-head p {
            color: var(--muted);
        }

        /* ================================
           CATEGORIES
        ================================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .category {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 25px 15px;
            border-radius: var(--radius-md);
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .category:hover {
            transform: translateY(-6px);
            border-color: var(--primary);
            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            margin: auto auto 14px;
            border-radius: 16px;
            display: grid;
            place-items: center;
            background: rgba(37, 99, 235, .1);
            color: var(--primary);
            font-size: 24px;
        }

        .category h4 {
            font-size: 14px;
        }

        .category small {
            color: var(--muted);
        }

        /* ================================
           FILTER BAR
        ================================= */

        .filters {
            display: flex;
            gap: 10px;
            overflow-x: auto;
            padding-bottom: 8px;
            margin-bottom: 25px;
        }

        .filter {
            padding: 10px 18px;
            border-radius: 999px;
            white-space: nowrap;
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            font-weight: 600;
        }

        .filter.active,
        .filter:hover {
            background: var(--primary);
            border-color: var(--primary);
            color: white;
        }

        /* ================================
           PRODUCTS
        ================================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            position: relative;
        }

        .product:hover {
            transform: translateY(-7px);
            box-shadow: var(--shadow-lg);
        }

        .product-image {
            height: 240px;
            background: var(--surface-2);
            overflow: hidden;
            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product:hover img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: white;
            padding: 6px 10px;
            border-radius: 8px;
            font-size: 11px;
            font-weight: 700;
        }

        .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255,255,255,.95);
            color: #475569;
        }

        .wishlist-btn.active {
            color: var(--danger);
        }

        .product-content {
            padding: 18px;
        }

        .product-category {
            color: var(--primary);
            font-size: 11px;
            text-transform: uppercase;
            font-weight: 700;
            letter-spacing: .6px;
        }

        .product h3 {
            margin: 7px 0;
            font-size: 16px;
        }

        .rating {
            color: #f59e0b;
            font-size: 13px;
        }

        .rating span {
            color: var(--muted);
        }

        .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 12px;
        }

        .price {
            font-size: 20px;
            font-weight: 800;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 13px;
        }

        .product-footer {
            padding: 0 18px 18px;
        }

        .add-cart {
            width: 100%;
            padding: 12px;
            border-radius: 12px;
            background: var(--surface-2);
            color: var(--text);
            font-weight: 700;
            transition: var(--transition);
        }

        .add-cart:hover {
            background: var(--primary);
            color: white;
        }

        /* ================================
           PROMO
        ================================= */

        .promo {
            margin: 40px 0;
            border-radius: 24px;
            overflow: hidden;
            background: linear-gradient(135deg, #2563eb, #4f46e5);
            color: white;
            padding: 45px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .promo h2 {
            font-size: 34px;
        }

        .promo p {
            opacity: .85;
            margin-top: 10px;
        }

        /* ================================
           CART DRAWER
        ================================= */

        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15,23,42,.45);
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
            z-index: 2000;
        }

        .cart-overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: -430px;
            width: min(420px, 100%);
            height: 100vh;
            background: var(--surface);
            z-index: 2001;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.show {
            right: 0;
        }

        .cart-header {
            padding: 22px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            margin-bottom: 16px;
            font-size: 18px;
            font-weight: 800;
        }

        /* ================================
           TOAST
        ================================= */

        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;
            background: var(--text);
            color: white;
            padding: 14px 20px;
            border-radius: 12px;
            box-shadow: var(--shadow-lg);
            transform: translateY(120px);
            transition: var(--transition);
            z-index: 3000;
        }

        .toast.show {
            transform: translateY(0);
        }

        /* ================================
           FOOTER
        ================================= */

        footer {
            margin-top: 50px;
            padding: 50px 0 25px;
            border-top: 1px solid var(--border);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(3, 1fr);
            gap: 35px;
        }

        .footer-grid h4 {
            margin-bottom: 15px;
        }

        .footer-grid a {
            display: block;
            color: var(--muted);
            margin: 8px 0;
            font-size: 14px;
        }

        .footer-bottom {
            border-top: 1px solid var(--border);
            margin-top: 35px;
            padding-top: 20px;
            text-align: center;
            color: var(--muted);
            font-size: 13px;
        }

        /* ================================
           RESPONSIVE
        ================================= */

        @media (max-width: 1100px) {

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

        }

        @media (max-width: 768px) {

            .topbar {
                display: none;
            }

            .header-inner {
                gap: 10px;
                height: 70px;
            }

            .search {
                order: 3;
                position: absolute;
                top: 70px;
                left: 20px;
                right: 20px;
                max-width: none;
            }

            header {
                margin-bottom: 58px;
            }

            .nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .hero {
                padding-top: 20px;
            }

            .hero-card {
                min-height: 420px;
            }

            .hero-content {
                padding: 30px;
            }

            .trust-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .product-image {
                height: 180px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .promo {
                padding: 30px;
                flex-direction: column;
                align-items: flex-start;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

        }

        @media (max-width: 480px) {

            .container {
                width: min(100% - 24px, var(--container));
            }

            .logo {
                font-size: 18px;
            }

            .logo-icon {
                width: 36px;
                height: 36px;
            }

            .icon-btn {
                width: 38px;
                height: 38px;
            }

            .header-actions {
                gap: 4px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .hero-content {
                padding: 24px;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-content {
                padding: 12px;
            }

            .product h3 {
                font-size: 13px;
            }

            .product-footer {
                padding: 0 12px 12px;
            }

            .trust-grid {
                grid-template-columns: 1fr;
            }

        }

    </style>
</head>

<body>

<!-- TOP BAR -->

<div class="topbar">
    <div class="container topbar-content">
        <span>🚚 Free shipping on orders above $100</span>
        <span>Secure payments • Easy returns</span>
    </div>
</div>


<!-- HEADER -->

<header>

    <div class="container header-inner">

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>
            Nexus<span>Shop</span>
        </a>


        <div class="search">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                id="searchInput"
                type="search"
                placeholder="Search products..."
            >

        </div>


        <div class="header-actions">

            <button class="icon-btn" id="themeBtn">
                <i class="fa-solid fa-moon"></i>
            </button>

            <button class="icon-btn">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="icon-btn" id="cartBtn">

                <i class="fa-solid fa-cart-shopping"></i>

                <span class="badge-count" id="cartCount">0</span>

            </button>

        </div>

    </div>

</header>


<!-- NAVIGATION -->

<nav class="nav">

    <div class="container nav-inner">

        <a class="active" href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Trending</a>
        <a href="#products">New Arrivals</a>
        <a href="#products">Best Sellers</a>

    </div>

</nav>


<main>


<!-- HERO -->

<section class="hero">

    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <div class="hero-label">
                    <i class="fa-solid fa-sparkles"></i>
                    New Collection 2026
                </div>

                <h1>
                    Shop Smarter.
                    <span>Live Better.</span>
                </h1>

                <p>
                    Discover trending fashion, premium technology,
                    accessories and more—all in one seamless shopping
                    experience.
                </p>

                <div class="hero-actions">

                    <a href="#products" class="btn btn-primary">
                        Shop Now
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>

                    <button class="btn btn-outline" id="dealBtn">
                        Explore Deals
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- TRUST -->

<div class="container">

    <div class="trust-grid">

        <div class="trust-card">
            <i class="fa-solid fa-truck-fast"></i>
            <div>
                <strong>Free Delivery</strong>
                <small>On selected orders</small>
            </div>
        </div>

        <div class="trust-card">
            <i class="fa-solid fa-shield-halved"></i>
            <div>
                <strong>Secure Payment</strong>
                <small>100% protected</small>
            </div>
        </div>

        <div class="trust-card">
            <i class="fa-solid fa-rotate-left"></i>
            <div>
                <strong>Easy Returns</strong>
                <small>30 day return policy</small>
            </div>
        </div>

        <div class="trust-card">
            <i class="fa-solid fa-headset"></i>
            <div>
                <strong>24/7 Support</strong>
                <small>Always here to help</small>
            </div>
        </div>

    </div>

</div>


<!-- CATEGORIES -->

<section id="categories">

    <div class="container">

        <div class="section-head">

            <div>
                <h2>Shop by Category</h2>
                <p>Find exactly what you're looking for</p>
            </div>

        </div>

        <div class="categories" id="categoryList"></div>

    </div>

</section>


<!-- PRODUCTS -->

<section id="products">

    <div class="container">

        <div class="section-head">

            <div>
                <h2>Trending Products</h2>
                <p>Popular products selected for you</p>
            </div>

        </div>


        <div class="filters">

            <button class="filter active" data-filter="all">
                All Products
            </button>

            <button class="filter" data-filter="Smartphones">
                Smartphones
            </button>

            <button class="filter" data-filter="Laptops">
                Laptops
            </button>

            <button class="filter" data-filter="Accessories">
                Accessories
            </button>

            <button class="filter" data-filter="Footwear">
                Footwear
            </button>

            <button class="filter" data-filter="Gadgets">
                Gadgets
            </button>

        </div>


        <div class="products" id="productList"></div>

    </div>

</section>


<!-- PROMOTION -->

<div class="container">

    <div class="promo">

        <div>

            <h2>🔥 Weekend Mega Sale</h2>

            <p>
                Save up to 40% on selected premium products.
                Limited time only!
            </p>

        </div>

        <a href="#products" class="btn btn-outline">
            Shop Offers
            <i class="fa-solid fa-arrow-right"></i>
        </a>

    </div>

</div>


</main>


<!-- FOOTER -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <h2>Nexus<span style="color:var(--primary)">Shop</span></h2>

                <p style="color:var(--muted); margin-top:12px;">
                    Modern shopping made simple, secure and enjoyable.
                </p>

            </div>


            <div>

                <h4>Shop</h4>

                <a href="#">New Arrivals</a>
                <a href="#">Trending</a>
                <a href="#">Deals</a>

            </div>


            <div>

                <h4>Support</h4>

                <a href="#">Help Center</a>
                <a href="#">Returns</a>
                <a href="#">Contact Us</a>

            </div>


            <div>

                <h4>Company</h4>

                <a href="#">About</a>
                <a href="#">Privacy</a>
                <a href="#">Terms</a>

            </div>

        </div>


        <div class="footer-bottom">

            © 2026 NexusShop. All Rights Reserved.

        </div>

    </div>

</footer>


<!-- CART -->

<div class="cart-overlay" id="cartOverlay"></div>

<div class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h2>Your Cart</h2>

        <button class="icon-btn" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>


    <div class="cart-items" id="cartItems">

        <p style="color:var(--muted); text-align:center;">
            Your cart is empty
        </p>

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <span id="cartTotal">$0</span>

        </div>

        <button class="btn btn-primary" style="width:100%">
            Proceed to Checkout
        </button>

    </div>

</div>


<!-- TOAST -->

<div class="toast" id="toast">
    Product added to cart
</div>


<script>


/* =====================================
   DATA
===================================== */

const categories = [

    {
        name: "Smartphones",
        icon: "fa-mobile-screen",
        count: 24
    },

    {
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },

    {
        name: "Accessories",
        icon: "fa-headphones",
        count: 39
    },

    {
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    },

    {
        name: "Gadgets",
        icon: "fa-camera",
        count: 31
    },

    {
        name: "Fashion",
        icon: "fa-shirt",
        count: 42
    }

];


const products = [

    {
        id: 1,
        name: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",

        image:
        "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 2,
        name: "MacBook Pro 14",
        category: "Laptops",
        price: 1999,
        oldPrice: null,
        rating: 5,
        reviews: 86,
        badge: "",

        image:
        "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 3,
        name: "Apple Watch Series 8",
        category: "Accessories",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",

        image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 4,
        name: "Nike Air Max",
        category: "Footwear",
        price: 150,
        oldPrice: null,
        rating: 4,
        reviews: 53,
        badge: "",

        image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 5,
        name: "Sony A7 Camera",
        category: "Gadgets",
        price: 2499,
        oldPrice: null,
        rating: 5,
        reviews: 42,
        badge: "New",

        image:
        "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 6,
        name: "Sony Wireless Headphones",
        category: "Accessories",
        price: 399,
        oldPrice: 449,
        rating: 5,
        reviews: 156,
        badge: "Sale",

        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
    }

];


/* =====================================
   STATE
===================================== */

let cart = [];
let wishlist = new Set();


/* =====================================
   ELEMENTS
===================================== */

const categoryList =
    document.getElementById("categoryList");

const productList =
    document.getElementById("productList");

const searchInput =
    document.getElementById("searchInput");

const cartCount =
    document.getElementById("cartCount");

const cartItems =
    document.getElementById("cartItems");

const cartTotal =
    document.getElementById("cartTotal");

const cartDrawer =
    document.getElementById("cartDrawer");

const cartOverlay =
    document.getElementById("cartOverlay");

const toast =
    document.getElementById("toast");


/* =====================================
   RENDER CATEGORIES
===================================== */

function renderCategories() {

    categoryList.innerHTML = "";

    categories.forEach(category => {

        const card =
            document.createElement("div");

        card.className =
            "category";

        card.innerHTML = `

            <div class="category-icon">

                <i class="fa-solid ${category.icon}"></i>

            </div>

            <h4>${category.name}</h4>

            <small>${category.count} Products</small>

        `;


        card.addEventListener(
            "click",
            () => {

                filterProducts(
                    category.name
                );

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );


        categoryList.appendChild(
            card
        );

    });

}


/* =====================================
   RENDER PRODUCTS
===================================== */

function renderProducts(productArray) {

    productList.innerHTML = "";


    if (!productArray.length) {

        productList.innerHTML = `

            <p style="
                grid-column:1/-1;
                text-align:center;
                padding:50px;
                color:var(--muted);
            ">

                No products found.

            </p>

        `;

        return;

    }


    productArray.forEach(product => {

        const isWishlisted =
            wishlist.has(product.id);


        const oldPrice = product.oldPrice
            ? `<span class="old-price">$${product.oldPrice}</span>`
            : "";


        const badge = product.badge
            ? `<div class="product-badge">${product.badge}</div>`
            : "";


        const card =
            document.createElement("article");

        card.className =
            "product";


        card.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                >

                ${badge}


                <button
                    class="wishlist-btn ${isWishlisted ? "active" : ""}"
                    data-wishlist="${product.id}"
                >

                    <i class="
                        ${isWishlisted
                            ? "fa-solid"
                            : "fa-regular"}
                        fa-heart
                    "></i>

                </button>

            </div>


            <div class="product-content">

                <div class="product-category">

                    ${product.category}

                </div>


                <h3>
                    ${product.name}
                </h3>


                <div class="rating">

                    ★★★★★

                    <span>
                        (${product.reviews})
                    </span>

                </div>


                <div class="price-row">

                    <span class="price">

                        $${product.price}

                    </span>

                    ${oldPrice}

                </div>

            </div>


            <div class="product-footer">

                <button
                    class="add-cart"
                    data-id="${product.id}"
                >

                    <i class="fa-solid fa-cart-plus"></i>

                    Add to Cart

                </button>

            </div>

        `;


        productList.appendChild(
            card
        );

    });


    attachProductEvents();

}


/* =====================================
   PRODUCT EVENTS
===================================== */

function attachProductEvents() {


    document
        .querySelectorAll(".add-cart")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const id =
                        Number(
                            button.dataset.id
                        );

                    addToCart(id);

                }
            );

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const id =
                        Number(
                            button.dataset.wishlist
                        );


                    if (wishlist.has(id)) {

                        wishlist.delete(id);

                        showToast(
                            "Removed from wishlist"
                        );

                    } else {

                        wishlist.add(id);

                        showToast(
                            "Added to wishlist ❤️"
                        );

                    }


                    renderProducts(
                        getCurrentProducts()
                    );

                }
            );

        });

}


/* =====================================
   FILTER PRODUCTS
===================================== */

let currentFilter =
    "all";


function filterProducts(category) {

    currentFilter =
        category;


    document
        .querySelectorAll(".filter")
        .forEach(button => {

            button.classList.remove(
                "active"
            );


            if (
                button.dataset.filter === category ||
                category === "all"
                &&
                button.dataset.filter === "all"
            ) {

                button.classList.add(
                    "active"
                );

            }

        });


    renderProducts(
        getCurrentProducts()
    );

}


function getCurrentProducts() {

    let result =
        [...products];


    if (
        currentFilter !== "all"
    ) {

        result =
            result.filter(
                product =>
                    product.category
                        .toLowerCase()
                        .includes(
                            currentFilter
                                .toLowerCase()
                        )
            );

    }


    const query =
        searchInput.value
            .toLowerCase()
            .trim();


    if (query) {

        result =
            result.filter(product =>
                product.name
                    .toLowerCase()
                    .includes(query)
                ||
                product.category
                    .toLowerCase()
                    .includes(query)
            );

    }


    return result;

}


/* =====================================
   SEARCH
===================================== */

searchInput.addEventListener(
    "input",
    () => {

        renderProducts(
            getCurrentProducts()
        );

    }
);


/* =====================================
   FILTER BUTTONS
===================================== */

document
    .querySelectorAll(".filter")
    .forEach(button => {

        button.addEventListener(
            "click",
            () => {

                currentFilter =
                    button.dataset.filter;


                document
                    .querySelectorAll(".filter")
                    .forEach(btn =>
                        btn.classList.remove(
                            "active"
                        )
                    );


                button.classList.add(
                    "active"
                );


                renderProducts(
                    getCurrentProducts()
                );

            }
        );

    });


/* =====================================
   ADD TO CART
===================================== */

function addToCart(id) {

    const product =
        products.find(
            product =>
                product.id === id
        );


    const existing =
        cart.find(
            item =>
                item.id === id
        );


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }


    updateCart();

    showToast(
        product.name +
        " added to cart 🛒"
    );

}


/* =====================================
   UPDATE CART
===================================== */

function updateCart() {

    const totalItems =
        cart.reduce(
            (total, item) =>
                total + item.quantity,
            0
        );


    cartCount.textContent =
        totalItems;


    if (!cart.length) {

        cartItems.innerHTML = `

            <p style="
                text-align:center;
                color:var(--muted);
                padding:40px 0;
            ">

                Your cart is empty.

            </p>

        `;

        cartTotal.textContent =
            "$0";

        return;

    }


    cartItems.innerHTML =
        cart.map(item => `

            <div class="cart-item">

                <img
                    src="${item.image}"
                    alt="${item.name}"
                >


                <div style="flex:1">

                    <strong>
                        ${item.name}
                    </strong>


                    <p style="
                        color:var(--muted);
                        font-size:13px;
                    ">

                        $${item.price}
                        ×
                        ${item.quantity}

                    </p>

                </div>

            </div>

        `).join("");


    const total =
        cart.reduce(
            (sum, item) =>
                sum +
                item.price *
                item.quantity,
            0
        );


    cartTotal.textContent =
        "$" +
        total.toLocaleString();

}


/* =====================================
   CART OPEN / CLOSE
===================================== */

document
    .getElementById("cartBtn")
    .addEventListener(
        "click",
        () => {

            cartDrawer.classList.add(
                "show"
            );

            cartOverlay.classList.add(
                "show"
            );

        }
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        closeCart
    );


cartOverlay.addEventListener(
    "click",
    closeCart
);


function closeCart() {

    cartDrawer.classList.remove(
        "show"
    );

    cartOverlay.classList.remove(
        "show"
    );

}


/* =====================================
   DARK MODE
===================================== */

document
    .getElementById("themeBtn")
    .addEventListener(
        "click",
        () => {

            document.body.classList.toggle(
                "dark"
            );


            const icon =
                document
                    .querySelector(
                        "#themeBtn i"
                    );


            if (
                document.body.classList.contains(
                    "dark"
                )
            ) {

                icon.className =
                    "fa-solid fa-sun";

            } else {

                icon.className =
                    "fa-solid fa-moon";

            }

        }
    );


/* =====================================
   TOAST
===================================== */

let toastTimer;


function showToast(message) {

    toast.textContent =
        message;

    toast.classList.add(
        "show"
    );


    clearTimeout(
        toastTimer
    );


    toastTimer =
        setTimeout(
            () => {

                toast.classList.remove(
                    "show"
                );

            },
            2500
        );

}


/* =====================================
   INITIAL LOAD
===================================== */

renderCategories();

renderProducts(products);

</script>

</body>
</html>
