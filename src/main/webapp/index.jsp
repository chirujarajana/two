```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop - Premium Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

:root {
    --black: #111111;
    --white: #ffffff;
    --gray: #f5f5f7;
    --gray-dark: #86868b;
    --border: #e5e5e7;
    --blue: #0071e3;
    --green: #34c759;
    --red: #ff3b30;
    --radius: 22px;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "DM Sans", sans-serif;
    background: var(--gray);
    color: var(--black);
}

button {
    border: none;
    cursor: pointer;
    font-family: inherit;
}

a {
    text-decoration: none;
    color: inherit;
}

.container {
    width: min(1380px, 94%);
    margin: auto;
}

/* HEADER */

header {
    height: 76px;
    background: rgba(255,255,255,.88);
    backdrop-filter: blur(20px);
    border-bottom: 1px solid var(--border);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.navbar {
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.logo {
    font-size: 25px;
    font-weight: 800;
}

.logo span {
    color: var(--blue);
}

.nav-links {
    display: flex;
    gap: 28px;
}

.nav-links a {
    font-size: 14px;
    font-weight: 600;
    color: var(--gray-dark);
}

.nav-links a:hover {
    color: var(--black);
}

.nav-actions {
    display: flex;
    gap: 10px;
}

.action-btn {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    background: var(--gray);
    font-size: 16px;
    position: relative;
}

.cart-count {
    position: absolute;
    top: -3px;
    right: -3px;
    width: 18px;
    height: 18px;
    border-radius: 50%;
    background: var(--red);
    color: white;
    font-size: 10px;
    display: grid;
    place-items: center;
}

/* HERO */

.hero {
    padding: 25px 0;
}

.hero-card {
    min-height: 570px;
    border-radius: 32px;
    background: #000;
    color: white;
    position: relative;
    overflow: hidden;
    display: flex;
    align-items: center;
    padding: 70px;
}

.hero-card::before {
    content: "";
    position: absolute;
    inset: 0;
    background:
    linear-gradient(90deg, rgba(0,0,0,.85), rgba(0,0,0,.15)),
    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=80")
    center/cover;
}

.hero-content {
    position: relative;
    max-width: 650px;
}

.hero-label {
    display: inline-block;
    padding: 8px 14px;
    background: rgba(255,255,255,.15);
    border-radius: 50px;
    margin-bottom: 20px;
    font-size: 13px;
}

.hero h1 {
    font-size: clamp(45px, 6vw, 78px);
    line-height: 1.05;
    margin-bottom: 20px;
}

.hero p {
    color: #d1d1d6;
    font-size: 18px;
    max-width: 550px;
    margin-bottom: 28px;
}

.hero-btn {
    background: white;
    color: black;
    padding: 15px 25px;
    border-radius: 50px;
    font-weight: 700;
    display: inline-flex;
    gap: 10px;
    align-items: center;
}

/* SEARCH */

.search-section {
    margin: 25px 0 35px;
}

.search {
    background: white;
    border: 1px solid var(--border);
    height: 65px;
    border-radius: 20px;
    display: flex;
    align-items: center;
    padding: 0 20px;
}

.search input {
    flex: 1;
    border: none;
    outline: none;
    font-size: 16px;
    padding: 15px;
}

/* CATEGORY CHIPS */

.category-scroll {
    display: flex;
    gap: 12px;
    overflow-x: auto;
    padding-bottom: 10px;
}

.category-chip {
    white-space: nowrap;
    padding: 13px 22px;
    background: white;
    border-radius: 50px;
    border: 1px solid var(--border);
    color: var(--gray-dark);
    font-weight: 600;
}

.category-chip.active,
.category-chip:hover {
    background: black;
    color: white;
}

/* SECTION HEADER */

.section-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 30px 0 20px;
}

.section-header h2 {
    font-size: 32px;
}

.section-header p {
    color: var(--gray-dark);
}

/* PRODUCT GRID */

.products {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 18px;
}

.product-card {
    background: white;
    border-radius: var(--radius);
    overflow: hidden;
    transition: .3s;
}

.product-card:hover {
    transform: translateY(-7px);
    box-shadow: 0 20px 45px rgba(0,0,0,.12);
}

.product-image {
    height: 280px;
    position: relative;
    background: #f2f2f4;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .4s;
}

.product-card:hover img {
    transform: scale(1.06);
}

.product-badge {
    position: absolute;
    top: 15px;
    left: 15px;
    background: black;
    color: white;
    padding: 7px 12px;
    border-radius: 50px;
    font-size: 11px;
}

.wishlist {
    position: absolute;
    top: 15px;
    right: 15px;
    width: 42px;
    height: 42px;
    background: white;
    border-radius: 50%;
    font-size: 16px;
}

.wishlist.active {
    color: var(--red);
}

.product-details {
    padding: 20px;
}

.product-category {
    color: var(--gray-dark);
    font-size: 12px;
}

.product-name {
    margin: 8px 0;
    font-size: 17px;
}

.product-bottom {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: 18px;
}

.product-price {
    font-size: 21px;
    font-weight: 800;
}

.add-cart {
    width: 44px;
    height: 44px;
    border-radius: 50%;
    background: var(--black);
    color: white;
    font-size: 16px;
}

/* FEATURE CARDS */

.features {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 20px;
    margin: 60px 0;
}

.feature-card {
    background: white;
    padding: 35px;
    border-radius: 24px;
}

.feature-card i {
    font-size: 30px;
    color: var(--blue);
    margin-bottom: 18px;
}

.feature-card h3 {
    margin-bottom: 8px;
}

.feature-card p {
    color: var(--gray-dark);
}

/* CART */

.overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.4);
    opacity: 0;
    visibility: hidden;
    transition: .3s;
    z-index: 2000;
}

.overlay.show {
    opacity: 1;
    visibility: visible;
}

.cart {
    position: fixed;
    right: -440px;
    top: 0;
    width: min(430px, 100%);
    height: 100vh;
    background: white;
    z-index: 2001;
    transition: .35s;
    display: flex;
    flex-direction: column;
}

.cart.show {
    right: 0;
}

.cart-header {
    padding: 25px;
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid var(--border);
}

.cart-items {
    padding: 20px;
    flex: 1;
    overflow-y: auto;
}

.cart-product {
    display: flex;
    gap: 15px;
    margin-bottom: 18px;
}

.cart-product img {
    width: 80px;
    height: 80px;
    border-radius: 15px;
    object-fit: cover;
}

.cart-footer {
    padding: 25px;
    border-top: 1px solid var(--border);
}

.checkout {
    width: 100%;
    margin-top: 18px;
    padding: 16px;
    border-radius: 14px;
    background: black;
    color: white;
    font-weight: 700;
}

/* TOAST */

.toast {
    position: fixed;
    bottom: 25px;
    right: 25px;
    background: black;
    color: white;
    padding: 15px 20px;
    border-radius: 15px;
    transform: translateY(120px);
    transition: .3s;
    z-index: 3000;
}

.toast.show {
    transform: translateY(0);
}

/* RESPONSIVE */

@media(max-width:1050px) {
    .products {
        grid-template-columns: repeat(3,1fr);
    }
}

@media(max-width:750px) {

    .nav-links {
        display: none;
    }

    .hero-card {
        padding: 35px;
        min-height: 480px;
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .features {
        grid-template-columns: 1fr;
    }

    .product-image {
        height: 210px;
    }
}

@media(max-width:480px) {

    .products {
        grid-template-columns: 1fr;
    }

    .hero h1 {
        font-size: 45px;
    }

    .section-header {
        align-items: flex-start;
        flex-direction: column;
    }

}

</style>
</head>

<body>

<header>
    <div class="container navbar">

        <a class="logo" href="#">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav-links">
            <a href="#">Home</a>
            <a href="#shop">Shop</a>
            <a href="#">Collections</a>
            <a href="#">Deals</a>
        </nav>

        <div class="nav-actions">

            <button class="action-btn">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="action-btn" id="cartButton">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>

    </div>
</header>

<main>

<section class="hero">
<div class="container">

    <div class="hero-card">

        <div class="hero-content">

            <div class="hero-label">
                ✨ The new collection is here
            </div>

            <h1>
                Everything you love.
                All in one place.
            </h1>

            <p>
                Discover beautifully selected products designed to make your everyday shopping experience better.
            </p>

            <a href="#shop" class="hero-btn">
                Start Shopping
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

    </div>

</div>
</section>

<section id="shop">
<div class="container">

    <div class="search-section">

        <div class="search">
            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                type="text"
                id="searchInput"
                placeholder="Search products, brands and categories..."
            >
        </div>

    </div>

    <div class="category-scroll">

        <button class="category-chip active" data-category="All">
            All
        </button>

        <button class="category-chip" data-category="Technology">
            Technology
        </button>

        <button class="category-chip" data-category="Audio">
            Audio
        </button>

        <button class="category-chip" data-category="Fashion">
            Fashion
        </button>

        <button class="category-chip" data-category="Accessories">
            Accessories
        </button>

    </div>

    <div class="section-header">

        <div>
            <h2>Explore products</h2>
            <p>Handpicked products just for you</p>
        </div>

        <strong id="productCount"></strong>

    </div>

    <div class="products" id="products"></div>

</div>
</section>

<div class="container">

    <section class="features">

        <div class="feature-card">
            <i class="fa-solid fa-truck-fast"></i>
            <h3>Fast delivery</h3>
            <p>Quick and reliable delivery to your doorstep.</p>
        </div>

        <div class="feature-card">
            <i class="fa-solid fa-shield-halved"></i>
            <h3>Secure shopping</h3>
            <p>Your payment and personal information are protected.</p>
        </div>

        <div class="feature-card">
            <i class="fa-solid fa-arrow-rotate-left"></i>
            <h3>Easy returns</h3>
            <p>Simple returns and hassle-free customer support.</p>
        </div>

    </section>

</div>

</main>

<!-- CART -->

<div class="overlay" id="overlay"></div>

<div class="cart" id="cart">

    <div class="cart-header">

        <h2>Your Bag</h2>

        <button class="action-btn" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems">
        Your bag is empty.
    </div>

    <div class="cart-footer">

        <h3>
            Total:
            <span id="cartTotal">$0</span>
        </h3>

        <button class="checkout">
            Checkout
        </button>

    </div>

</div>

<div class="toast" id="toast"></div>

<script>

/* PRODUCT DATA */

const products = [

{
    id: 1,
    name: "Premium Smartphone",
    category: "Technology",
    price: 899,
    tag: "New",
    image: "https://images.unsplash.com/photo-1592750475338-74b7b21085ab?auto=format&fit=crop&w=700&q=80"
},

{
    id: 2,
    name: "Wireless Headphones",
    category: "Audio",
    price: 249,
    tag: "Popular",
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
},

{
    id: 3,
    name: "Minimal Smart Watch",
    category: "Accessories",
    price: 299,
    tag: "Trending",
    image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
},

{
    id: 4,
    name: "Classic Sneakers",
    category: "Fashion",
    price: 160,
    tag: "Best Seller",
    image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
},

{
    id: 5,
    name: "Professional Laptop",
    category: "Technology",
    price: 1499,
    tag: "Premium",
    image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"
},

{
    id: 6,
    name: "Wireless Speaker",
    category: "Audio",
    price: 180,
    tag: "Hot",
    image: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=700&q=80"
}

];


/* STATE */

let currentCategory = "All";
let cartItems = [];
let wishlist = new Set();


/* ELEMENTS */

const productContainer =
document.getElementById("products");

const searchInput =
document.getElementById("searchInput");


/* RENDER PRODUCTS */

function renderProducts() {

    const search =
    searchInput.value.toLowerCase();

    const filteredProducts =
    products.filter(product =>

        (currentCategory === "All" ||
        product.category === currentCategory)

        &&

        (
            product.name
            .toLowerCase()
            .includes(search)

            ||

            product.category
            .toLowerCase()
            .includes(search)
        )
    );


    productContainer.innerHTML = "";

    document
    .getElementById("productCount")
    .textContent =
    filteredProducts.length + " products";


    filteredProducts.forEach(product => {

        const wished =
        wishlist.has(product.id);

        productContainer.innerHTML += `

        <div class="product-card">

            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                >

                <div class="product-badge">
                    ${product.tag}
                </div>

                <button
                    class="wishlist ${wished ? "active" : ""}"
                    onclick="toggleWishlist(${product.id})"
                >

                    <i class="fa-${wished ? "solid" : "regular"} fa-heart"></i>

                </button>

            </div>

            <div class="product-details">

                <div class="product-category">
                    ${product.category}
                </div>

                <h3 class="product-name">
                    ${product.name}
                </h3>

                <div class="product-bottom">

                    <div class="product-price">
                        $${product.price}
                    </div>

                    <button
                        class="add-cart"
                        onclick="addToCart(${product.id})"
                    >
                        <i class="fa-solid fa-plus"></i>
                    </button>

                </div>

            </div>

        </div>

        `;

    });

}


/* CATEGORY FILTER */

document
.querySelectorAll(".category-chip")
.forEach(button => {

    button.addEventListener("click", () => {

        document
        .querySelectorAll(".category-chip")
        .forEach(btn =>
            btn.classList.remove("active")
        );

        button.classList.add("active");

        currentCategory =
        button.dataset.category;

        renderProducts();

    });

});


/* SEARCH */

searchInput.addEventListener(
    "input",
    renderProducts
);


/* WISHLIST */

function toggleWishlist(id) {

    if(wishlist.has(id)) {

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

    renderProducts();

}


/* CART */

function addToCart(id) {

    const product =
    products.find(
        product => product.id === id
    );

    const existing =
    cartItems.find(
        item => item.id === id
    );

    if(existing) {

        existing.quantity++;

    } else {

        cartItems.push({
            ...product,
            quantity: 1
        });

    }

    updateCart();

    showToast(
        product.name + " added to bag"
    );

}


function updateCart() {

    const count =
    cartItems.reduce(
        (total,item) =>
        total + item.quantity,
        0
    );

    document
    .getElementById("cartCount")
    .textContent = count;


    const cartContainer =
    document
    .getElementById("cartItems");


    if(cartItems.length === 0) {

        cartContainer.innerHTML =
        "Your bag is empty.";

        document
        .getElementById("cartTotal")
        .textContent = "$0";

        return;

    }


    cartContainer.innerHTML =
    cartItems.map(item => `

        <div class="cart-product">

            <img
                src="${item.image}"
            >

            <div>

                <strong>
                    ${item.name}
                </strong>

                <p>
                    $${item.price}
                    ×
                    ${item.quantity}
                </p>

            </div>

        </div>

    `).join("");


    const total =
    cartItems.reduce(
        (sum,item) =>
        sum +
        item.price *
        item.quantity,
        0
    );


    document
    .getElementById("cartTotal")
    .textContent =
    "$" + total.toLocaleString();

}


/* CART DRAWER */

const cart =
document.getElementById("cart");

const overlay =
document.getElementById("overlay");


document
.getElementById("cartButton")
.addEventListener(
    "click",
    () => {

        cart.classList.add("show");

        overlay.classList.add("show");

    }
);


function closeCart() {

    cart.classList.remove("show");

    overlay.classList.remove("show");

}


document
.getElementById("closeCart")
.addEventListener(
    "click",
    closeCart
);


overlay.addEventListener(
    "click",
    closeCart
);


/* TOAST */

function showToast(message) {

    const toast =
    document.getElementById("toast");

    toast.textContent = message;

    toast.classList.add("show");

    setTimeout(() => {

        toast.classList.remove("show");

    }, 2500);

}


/* INITIAL LOAD */

renderProducts();

</script>

</body>
</html>
```
