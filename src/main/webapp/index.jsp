```html
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Premium Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* ================================
   VARIABLES
================================ */

:root{

    --primary:#6c63ff;
    --secondary:#8b5cf6;
    --pink:#ec4899;

    --bg:#f5f7ff;
    --card:rgba(255,255,255,.85);

    --text:#1e293b;
    --muted:#64748b;

    --border:rgba(148,163,184,.25);

    --shadow:
    0 20px 50px rgba(31,38,135,.12);

}

.dark{

    --bg:#0b1020;

    --card:rgba(22,27,45,.85);

    --text:#f1f5f9;

    --muted:#94a3b8;

    --border:rgba(255,255,255,.1);

}


/* ================================
   RESET
================================ */

*{

    margin:0;
    padding:0;

    box-sizing:border-box;

}

html{

    scroll-behavior:smooth;

}

body{

    font-family:"Poppins",sans-serif;

    background:

    radial-gradient(
        circle at top left,
        rgba(108,99,255,.12),
        transparent 30%
    ),

    radial-gradient(
        circle at bottom right,
        rgba(236,72,153,.10),
        transparent 30%
    ),

    var(--bg);

    color:var(--text);

    transition:.3s;

}

button{

    font-family:inherit;

    cursor:pointer;

    border:none;

}

a{

    text-decoration:none;

    color:inherit;

}

img{

    width:100%;

    display:block;

}


/* ================================
   CONTAINER
================================ */

.container{

    width:min(1400px,94%);

    margin:auto;

}


/* ================================
   HEADER
================================ */

header{

    position:sticky;

    top:0;

    z-index:1000;

    backdrop-filter:blur(20px);

    background:rgba(255,255,255,.7);

    border-bottom:1px solid var(--border);

}

.dark header{

    background:rgba(11,16,32,.75);

}


.navbar{

    height:80px;

    display:flex;

    align-items:center;

    justify-content:space-between;

    gap:25px;

}


.logo{

    font-size:25px;

    font-weight:800;

    display:flex;

    align-items:center;

    gap:10px;

}


.logo-icon{

    width:45px;

    height:45px;

    display:grid;

    place-items:center;

    border-radius:15px;

    color:white;

    background:

    linear-gradient(
        135deg,
        var(--primary),
        var(--pink)
    );

}


.logo span{

    background:

    linear-gradient(
        135deg,
        var(--primary),
        var(--pink)
    );

    background-clip:text;

    -webkit-background-clip:text;

    color:transparent;

}


/* ================================
   SEARCH
================================ */

.search-box{

    flex:1;

    max-width:550px;

    display:flex;

    align-items:center;

    padding:5px 10px 5px 18px;

    border-radius:16px;

    background:var(--card);

    border:1px solid var(--border);

    box-shadow:var(--shadow);

}


.search-box input{

    flex:1;

    border:none;

    outline:none;

    padding:12px;

    background:transparent;

    color:var(--text);

}


.search-box button{

    width:45px;

    height:45px;

    border-radius:13px;

    color:white;

    background:var(--primary);

}


.nav-actions{

    display:flex;

    gap:10px;

}


.icon-button{

    width:45px;

    height:45px;

    border-radius:14px;

    background:var(--card);

    color:var(--text);

    border:1px solid var(--border);

    position:relative;

    transition:.3s;

}


.icon-button:hover{

    transform:translateY(-3px);

    color:white;

    background:var(--primary);

}


.count{

    position:absolute;

    top:-7px;

    right:-5px;

    width:20px;

    height:20px;

    display:grid;

    place-items:center;

    border-radius:50%;

    background:#ef4444;

    color:white;

    font-size:10px;

}


/* ================================
   HERO
================================ */

.hero{

    padding:45px 0;

}


.hero-grid{

    display:grid;

    grid-template-columns:

    1.2fr
    .8fr;

    gap:25px;

}


.hero-main{

    min-height:480px;

    padding:60px;

    border-radius:30px;

    color:white;

    position:relative;

    overflow:hidden;

    background:

    linear-gradient(
        135deg,
        #6c63ff,
        #8b5cf6,
        #ec4899
    );

}


.hero-main::after{

    content:"";

    position:absolute;

    width:400px;

    height:400px;

    border-radius:50%;

    background:rgba(255,255,255,.08);

    right:-150px;

    top:-150px;

}


.hero-main h1{

    position:relative;

    z-index:2;

    font-size:clamp(40px,5vw,70px);

    line-height:1.1;

}


.hero-main p{

    position:relative;

    z-index:2;

    margin:20px 0;

    max-width:500px;

    opacity:.9;

}


.hero-buttons{

    position:relative;

    z-index:2;

    display:flex;

    gap:15px;

}


.btn{

    padding:14px 25px;

    border-radius:14px;

    font-weight:600;

    transition:.3s;

}


.btn-white{

    background:white;

    color:var(--primary);

}


.btn-white:hover{

    transform:translateY(-4px);

}


.btn-glass{

    background:rgba(255,255,255,.15);

    color:white;

    border:1px solid rgba(255,255,255,.3);

}


/* ================================
   DEAL CARDS
================================ */

.hero-side{

    display:grid;

    gap:20px;

}


.deal-card{

    padding:30px;

    border-radius:25px;

    background:var(--card);

    backdrop-filter:blur(15px);

    border:1px solid var(--border);

    box-shadow:var(--shadow);

    position:relative;

    overflow:hidden;

}


.deal-card h3{

    font-size:24px;

}


.deal-card p{

    color:var(--muted);

    margin:10px 0;

}


.deal-card .discount{

    font-size:45px;

    font-weight:800;

    color:var(--primary);

}


/* ================================
   MAIN SHOP AREA
================================ */

.shop-layout{

    display:grid;

    grid-template-columns:

    260px
    1fr;

    gap:25px;

}


/* ================================
   SIDEBAR
================================ */

.sidebar{

    background:var(--card);

    border-radius:25px;

    padding:22px;

    border:1px solid var(--border);

    height:max-content;

    box-shadow:var(--shadow);

    position:sticky;

    top:105px;

}


.sidebar h3{

    margin-bottom:18px;

}


.category-btn{

    width:100%;

    display:flex;

    align-items:center;

    gap:12px;

    padding:13px;

    border-radius:12px;

    margin-bottom:7px;

    background:transparent;

    color:var(--muted);

    text-align:left;

}


.category-btn:hover,

.category-btn.active{

    background:

    linear-gradient(
        135deg,
        var(--primary),
        var(--secondary)
    );

    color:white;

}


/* ================================
   PRODUCTS
================================ */

.product-toolbar{

    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-bottom:20px;

}


.products{

    display:grid;

    grid-template-columns:

    repeat(3,1fr);

    gap:20px;

}


.product-card{

    border-radius:23px;

    overflow:hidden;

    background:var(--card);

    border:1px solid var(--border);

    box-shadow:var(--shadow);

    transition:.3s;

}


.product-card:hover{

    transform:

    translateY(-8px);

}


.product-image{

    height:230px;

    overflow:hidden;

    position:relative;

}


.product-image img{

    height:100%;

    object-fit:cover;

    transition:.4s;

}


.product-card:hover img{

    transform:scale(1.08);

}


.product-tag{

    position:absolute;

    top:12px;

    left:12px;

    padding:6px 12px;

    border-radius:20px;

    font-size:11px;

    font-weight:600;

    color:white;

    background:var(--pink);

}


.heart{

    position:absolute;

    top:12px;

    right:12px;

    width:40px;

    height:40px;

    border-radius:50%;

    background:white;

    color:#64748b;

}


.heart.active{

    color:#ef4444;

}


.product-info{

    padding:18px;

}


.product-info small{

    color:var(--primary);

    font-weight:600;

}


.product-info h3{

    margin:7px 0;

}


.rating{

    color:#f59e0b;

    font-size:13px;

}


.rating span{

    color:var(--muted);

}


.price-row{

    margin-top:14px;

    display:flex;

    justify-content:space-between;

    align-items:center;

}


.price{

    font-size:20px;

    font-weight:800;

}


.add-btn{

    width:42px;

    height:42px;

    border-radius:13px;

    background:var(--primary);

    color:white;

    font-size:16px;

}


/* ================================
   CART DRAWER
================================ */

.overlay{

    position:fixed;

    inset:0;

    background:rgba(0,0,0,.45);

    opacity:0;

    visibility:hidden;

    transition:.3s;

    z-index:2000;

}


.overlay.show{

    opacity:1;

    visibility:visible;

}


.cart{

    position:fixed;

    top:0;

    right:-450px;

    width:min(430px,100%);

    height:100vh;

    z-index:2001;

    background:var(--card);

    backdrop-filter:blur(25px);

    transition:.4s;

    display:flex;

    flex-direction:column;

}


.cart.show{

    right:0;

}


.cart-header{

    padding:25px;

    display:flex;

    justify-content:space-between;

    border-bottom:1px solid var(--border);

}


.cart-items{

    flex:1;

    overflow:auto;

    padding:20px;

}


.cart-product{

    display:flex;

    gap:12px;

    margin-bottom:18px;

}


.cart-product img{

    width:70px;

    height:70px;

    object-fit:cover;

    border-radius:13px;

}


.cart-footer{

    padding:20px;

    border-top:1px solid var(--border);

}


.checkout{

    width:100%;

    padding:15px;

    border-radius:14px;

    background:

    linear-gradient(
        135deg,
        var(--primary),
        var(--pink)
    );

    color:white;

    font-weight:700;

}


/* ================================
   TOAST
================================ */

.toast{

    position:fixed;

    bottom:25px;

    right:25px;

    padding:15px 20px;

    background:#111827;

    color:white;

    border-radius:14px;

    transform:translateY(150px);

    transition:.3s;

    z-index:3000;

}


.toast.show{

    transform:translateY(0);

}


/* ================================
   RESPONSIVE
================================ */

@media(max-width:1100px){

    .products{

        grid-template-columns:
        repeat(2,1fr);

    }

}


@media(max-width:850px){

    .hero-grid{

        grid-template-columns:1fr;

    }

    .shop-layout{

        grid-template-columns:1fr;

    }

    .sidebar{

        position:relative;

        top:auto;

        display:flex;

        gap:10px;

        overflow:auto;

    }

    .sidebar h3{

        display:none;

    }

    .category-btn{

        min-width:150px;

        margin:0;

    }

}


@media(max-width:650px){

    .search-box{

        position:absolute;

        top:85px;

        left:3%;

        width:94%;

    }

    header{

        margin-bottom:65px;

    }

    .hero-main{

        padding:35px;

        min-height:430px;

    }

    .products{

        grid-template-columns:1fr;

    }

    .hero-buttons{

        flex-direction:column;

    }

}

</style>

</head>


<body>


<!-- HEADER -->

<header>

<div class="container navbar">

<a href="#" class="logo">

<div class="logo-icon">

<i class="fa-solid fa-bag-shopping"></i>

</div>

Nexus<span>Shop</span>

</a>


<div class="search-box">

<i class="fa-solid fa-magnifying-glass"></i>

<input
id="search"
placeholder="Search premium products..."
>

<button>

<i class="fa-solid fa-arrow-right"></i>

</button>

</div>


<div class="nav-actions">

<button
class="icon-button"
id="theme">

<i class="fa-solid fa-moon"></i>

</button>


<button
class="icon-button"
id="cartButton">

<i class="fa-solid fa-cart-shopping"></i>

<span
class="count"
id="cartCount"
>
0
</span>

</button>

</div>

</div>

</header>



<!-- HERO -->

<section class="hero">

<div class="container hero-grid">


<div class="hero-main">

<h1>

Discover Your
<br>

Next

<span>

Favorite Thing

</span>

</h1>


<p>

Shop premium products, latest technology
and trending fashion with an amazing
shopping experience.

</p>


<div class="hero-buttons">

<button
class="btn btn-white"
onclick="document.getElementById('shop').scrollIntoView()"
>

Shop Now

<i class="fa-solid fa-arrow-right"></i>

</button>


<button
class="btn btn-glass"
>

View Collection

</button>

</div>

</div>



<div class="hero-side">


<div class="deal-card">

<h3>

Flash Deal

</h3>

<div class="discount">

40% OFF

</div>

<p>

Limited time offer on selected products.

</p>

</div>


<div class="deal-card">

<h3>

Free Delivery 🚚

</h3>

<p>

Free shipping on orders above $100.

</p>

</div>


</div>

</div>

</section>



<!-- SHOP -->

<section
id="shop"
class="container shop-layout"
>


<!-- SIDEBAR -->

<aside class="sidebar">

<h3>

Categories

</h3>


<button
class="category-btn active"
data-category="all"
>

<i class="fa-solid fa-border-all"></i>

All Products

</button>


<button
class="category-btn"
data-category="Smartphones"
>

<i class="fa-solid fa-mobile"></i>

Smartphones

</button>


<button
class="category-btn"
data-category="Laptops"
>

<i class="fa-solid fa-laptop"></i>

Laptops

</button>


<button
class="category-btn"
data-category="Accessories"
>

<i class="fa-solid fa-headphones"></i>

Accessories

</button>


<button
class="category-btn"
data-category="Footwear"
>

<i class="fa-solid fa-shoe-prints"></i>

Footwear

</button>

</aside>



<!-- PRODUCTS -->

<div>


<div class="product-toolbar">

<div>

<h2>

Trending Products

</h2>

<p style="color:var(--muted)">

Explore our latest collection

</p>

</div>


<strong
id="productCount"
>

0 Products

</strong>

</div>


<div
class="products"
id="products"
>

</div>


</div>


</section>



<!-- CART -->

<div
class="overlay"
id="overlay"
></div>


<div
class="cart"
id="cart"
>


<div class="cart-header">

<h2>

Your Cart

</h2>


<button
class="icon-button"
id="closeCart"
>

<i class="fa-solid fa-xmark"></i>

</button>

</div>


<div
class="cart-items"
id="cartItems"
>

Your cart is empty.

</div>


<div class="cart-footer">

<h3>

Total:

<span
id="total"
>

$0

</span>

</h3>


<br>


<button
class="checkout"
>

Proceed To Checkout

</button>

</div>


</div>



<!-- TOAST -->

<div
class="toast"
id="toast"
>

Product Added

</div>



<script>


/* ================================
   PRODUCTS DATA
================================ */

const products = [

{

id:1,

name:"iPhone 15 Pro",

category:"Smartphones",

price:999,

rating:5,

tag:"New",

image:
"https://images.unsplash.com/photo-1592750475338-74b7b21085ab?auto=format&fit=crop&w=700&q=80"

},

{

id:2,

name:"MacBook Pro",

category:"Laptops",

price:1899,

rating:5,

tag:"Popular",

image:
"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"

},

{

id:3,

name:"AirPods Pro",

category:"Accessories",

price:249,

rating:5,

tag:"Hot",

image:
"https://images.unsplash.com/photo-1588423771073-b8903fbb85b5?auto=format&fit=crop&w=700&q=80"

},

{

id:4,

name:"Nike Air Max",

category:"Footwear",

price:180,

rating:4,

tag:"Sale",

image:
"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"

},

{

id:5,

name:"Smart Watch",

category:"Accessories",

price:299,

rating:5,

tag:"Trending",

image:
"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"

},

{

id:6,

name:"Gaming Laptop",

category:"Laptops",

price:1499,

rating:5,

tag:"Best Seller",

image:
"https://images.unsplash.com/photo-1603302576837-37561b2e2302?auto=format&fit=crop&w=700&q=80"

}

];


/* ================================
   STATE
================================ */

let cartItems = [];

let wishlist = new Set();

let currentCategory = "all";


/* ================================
   ELEMENTS
================================ */

const productsContainer =
document.getElementById("products");

const searchInput =
document.getElementById("search");

const cartCount =
document.getElementById("cartCount");

const productCount =
document.getElementById("productCount");


/* ================================
   RENDER PRODUCTS
================================ */

function renderProducts(){

const search =
searchInput.value
.toLowerCase();


const filtered =
products.filter(product =>

(currentCategory === "all"
||
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


productsContainer.innerHTML = "";


productCount.textContent =
filtered.length + " Products";


filtered.forEach(product => {

const wished =
wishlist.has(product.id);


productsContainer.innerHTML += `

<div class="product-card">


<div class="product-image">

<img
src="${product.image}"
alt="${product.name}"
>


<div class="product-tag">

${product.tag}

</div>


<button
class="heart ${wished ? "active" : ""}"
onclick="toggleWishlist(${product.id})"
>

<i class="fa-${wished ? "solid" : "regular"} fa-heart"></i>

</button>

</div>


<div class="product-info">

<small>

${product.category}

</small>


<h3>

${product.name}

</h3>


<div class="rating">

★★★★★

<span>

(${product.rating}.0)

</span>

</div>


<div class="price-row">

<div
class="price"
>

$${product.price}

</div>


<button
class="add-btn"
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


/* ================================
   CATEGORY FILTER
================================ */

document
.querySelectorAll(".category-btn")
.forEach(button => {

button.addEventListener(
"click",
() => {

document
.querySelectorAll(".category-btn")
.forEach(btn =>
btn.classList.remove("active")
);

button.classList.add("active");

currentCategory =
button.dataset.category;

renderProducts();

}

);

});


/* ================================
   SEARCH
================================ */

searchInput.addEventListener(
"input",
renderProducts
);


/* ================================
   WISHLIST
================================ */

function toggleWishlist(id){

if(wishlist.has(id)){

wishlist.delete(id);

showToast(
"Removed from wishlist"
);

}

else{

wishlist.add(id);

showToast(
"Added to wishlist ❤️"
);

}

renderProducts();

}


/* ================================
   CART
================================ */

function addToCart(id){

const product =
products.find(
p => p.id === id
);


const existing =
cartItems.find(
item => item.id === id
);


if(existing){

existing.quantity++;

}

else{

cartItems.push({

...product,

quantity:1

});

}


updateCart();

showToast(
product.name + " added to cart 🛒"
);

}


function updateCart(){

const count =
cartItems.reduce(
(total,item) =>
total + item.quantity,
0
);


cartCount.textContent =
count;


const cartContainer =
document.getElementById("cartItems");


if(cartItems.length === 0){

cartContainer.innerHTML =
"Your cart is empty.";

document.getElementById("total")
.textContent =
"$0";

return;

}


cartContainer.innerHTML =
cartItems.map(item => `

<div
class="cart-product"
>

<img
src="${item.image}"
>


<div>

<strong>

${item.name}

</strong>


<p>

$${item.price}

× ${item.quantity}

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
.getElementById("total")
.textContent =

"$" +
total.toLocaleString();

}


/* ================================
   CART DRAWER
================================ */

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


function closeCart(){

cart.classList.remove("show");

overlay.classList.remove("show");

}


/* ================================
   DARK MODE
================================ */

document
.getElementById("theme")
.addEventListener(
"click",
() => {

document.body
.classList.toggle("dark");


const icon =
document
.querySelector("#theme i");


icon.className =

document.body
.classList.contains("dark")

?

"fa-solid fa-sun"

:

"fa-solid fa-moon";

}
);


/* ================================
   TOAST
================================ */

function showToast(message){

const toast =
document.getElementById("toast");


toast.textContent =
message;


toast.classList.add(
"show"
);


setTimeout(
() => {

toast.classList.remove(
"show"
);

},
2500
);

}


/* ================================
   INITIAL LOAD
================================ */

renderProducts();


</script>


</body>

</html>
```
