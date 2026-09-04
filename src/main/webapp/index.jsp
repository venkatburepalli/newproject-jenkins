<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NovaMart — Modern E‑Commerce Experience</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header class="glass-header">
        <div class="container header-flex">
            <div class="logo"><i class="fas fa-bolt" style="color: #3b82f6;"></i> NovaMart</div>
            <div class="nav-links">
                <a href="#" class="nav-link" data-nav="home">Home</a>
                <a href="#" class="nav-link" data-nav="shop">Shop</a>
                <a href="#" class="nav-link" data-nav="deals">Deals</a>
                <a href="#" class="nav-link" data-nav="insights">Insights</a>
            </div>
            <div class="search-bar">
                <i class="fas fa-search" style="color: var(--text-secondary);"></i>
                <input type="text" id="globalSearch" placeholder="Search products, categories...">
            </div>
            <div class="action-icons">
                <div class="icon-circle theme-toggle" id="themeToggle"><i class="fas fa-moon"></i></div>
                <div class="icon-circle"><i class="far fa-heart"></i></div>
                <div class="icon-circle cart-badge" id="cartIconBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count-badge" id="cartCountDisplay">0</span>
                </div>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero revamped -->
        <section class="hero-modern">
            <div class="container hero-content">
                <div class="hero-badge"><i class="fas fa-gem"></i> Limited Edition Drops</div>
                <h1>Make Your <span style="color: #3b82f6;">EveryDay</span> Style</h1>
                <p style="font-size: 1.2rem; max-width: 600px; margin: 0 auto; opacity: 0.9;">premium materials, and exclusive flash sales.</p>
                <div class="hero-buttons">
                    <button class="btn-primary" id="shopNowHero">My New Collection →</button>
                    <button class="btn-outline-light" id="exploreDealsHero">Explore Deals</button>
                </div>
            </div>
        </section>

        <div class="container">
            <!-- Categories Section -->
            <div class="section-header">
                <h2>Curated Categories</h2>
                <p style="color: var(--text-secondary)">Shop by interest — handpicked for you</p>
            </div>
            <div class="category-grid" id="categoryGrid"></div>

            <!-- Products section -->
            <div class="section-header" id="productsSection">
                <h2>✨ Trending Now</h2>
                <p style="color: var(--text-secondary)">Most loved by our community</p>
            </div>
            <div class="product-grid" id="productGrid"></div>

            <!-- Flash Sale Premium -->
            <div id="dealsSection">
                <div class="flash-sale">
                    <div class="sale-flex">
                        <div class="sale-image">
                            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Pro">
                        </div>
                        <div class="sale-content">
                            <h2 style="font-size: 36px; font-weight: 800;">⚡ Flash Sale</h2>
                            <p style="margin: 12px 0">MacBook Pro M3 — up to 20% off + exclusive bundle</p>
                            <div class="timer-group" id="countdownTimer">
                                <div class="time-card"><div class="time-number" id="days">00</div><span>Days</span></div>
                                <div class="time-card"><div class="time-number" id="hours">00</div><span>Hours</span></div>
                                <div class="time-card"><div class="time-number" id="minutes">00</div><span>Mins</span></div>
                                <div class="time-card"><div class="time-number" id="seconds">00</div><span>Secs</span></div>
                            </div>
                            <div class="price-tag" style="font-size: 32px;">$1,299 <span class="old-price-tag" style="font-size: 20px;">$1,699</span></div>
                            <button class="btn-primary" id="flashDealBtn" style="margin-top: 20px;">Grab Deal Now <i class="fas fa-arrow-right"></i></button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Testimonials -->
            <div class="section-header">
                <h2>❤️ Customer Love</h2>
                <p>Real stories from real shoppers</p>
            </div>
            <div class="testimonial-scroll" id="testimonialList"></div>

            <!-- Newsletter Premium -->
            <div class="newsletter-modern">
                <h3 style="font-size: 28px;">Join the inner circle</h3>
                <p>Get early access to sales, new arrivals & exclusive rewards</p>
                <form id="newsletterFormModern" class="newsletter-form">
                    <input type="email" id="newsEmail" placeholder="you@example.com" required>
                    <button type="submit" class="btn-primary" style="background: white; color: #0f172a;">Subscribe →</button>
                </form>
                <div id="newsletterMsgModern" style="margin-top: 16px; font-size: 14px;"></div>
            </div>
        </div>
    </main>

    <footer class="footer-modern">
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
            <div><div class="logo" style="font-size: 24px;">NovaMart</div><p style="margin-top: 12px; max-width: 260px;">Next-gen e-commerce experience. Innovation meets style.</p></div>
            <div><h4>Explore</h4><p>About<br>Careers<br>Sustainability</p></div>
            <div><h4>Support</h4><p>Help Center<br>Returns<br>Contact</p></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 48px; padding-top: 24px; border-top: 1px solid var(--border-light);">© 2026 NovaMart — Redefining modern retail</div>
    </footer>

    <script>
        // --- ENHANCED DATA (more premium) ---
        const CATEGORIES = [
            { id: "audio", name: "Audio & Hi-Fi", icon: "fa-headphones" },
            { id: "wearables", name: "Wearables", icon: "fa-apple-alt" },
            { id: "gaming", name: "Gaming Gear", icon: "fa-gamepad" },
            { id: "fashion", name: "Streetwear", icon: "fa-vest" },
            { id: "accessories", name: "Luxury Acc.", icon: "fa-gem" },
            { id: "smart-home", name: "Smart Home", icon: "fa-microchip" }
        ];

        const PRODUCTS = [
            { id: 101, title: "Sony WH-1000XM6", price: 399, oldPrice: 499, rating: 5, reviews: 324, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "Best Seller" },
            { id: 102, title: "Apple Watch Ultra 2", price: 749, oldPrice: 799, rating: 5, reviews: 512, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80", category: "wearables", badge: "New" },
            { id: 103, title: "Razer Blade 16", price: 2799, oldPrice: 3199, rating: 4.8, reviews: 210, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category: "gaming" },
            { id: 104, title: "Off-White Hoodie", price: 420, oldPrice: 650, rating: 4.7, reviews: 89, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "fashion", badge: "Limited" },
            { id: 105, title: "Dyson V15 Detect", price: 599, oldPrice: 749, rating: 4.9, reviews: 178, img: "https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80", category: "smart-home" },
            { id: 106, title: "Bose QC Ultra", price: 379, oldPrice: 429, rating: 4.9, reviews: 267, img: "https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80", category: "audio" }
        ];

        let cartCount = 0;
        let currentFilter = "";

        // DOM elements
        const categoryGrid = document.getElementById('categoryGrid');
        const productGrid = document.getElementById('productGrid');
        const cartCountSpan = document.getElementById('cartCountDisplay');
        const searchInput = document.getElementById('globalSearch');

        function renderCategories() {
            categoryGrid.innerHTML = CATEGORIES.map(cat => `
                <div class="category-card" data-cat="${cat.name}">
                    <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                    <h4 style="font-weight: 700;">${cat.name}</h4>
                    <span style="font-size: 13px; color: var(--text-secondary)">shop now →</span>
                </div>
            `).join('');
            document.querySelectorAll('.category-card').forEach(card => {
                card.addEventListener('click', () => {
                    const catName = card.getAttribute('data-cat');
                    searchInput.value = catName;
                    filterProducts(catName);
                    document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        function renderProducts(productsArray) {
            productGrid.innerHTML = productsArray.map(p => `
                <div class="product-card">
                    ${p.badge ? `<div style="position: absolute; top: 12px; left: 12px; background: var(--accent); color: white; padding: 4px 12px; border-radius: 40px; font-size: 12px; font-weight: 700; z-index:2;">${p.badge}</div>` : ''}
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div class="product-title">${p.title}</div>
                        <div style="display: flex; align-items: baseline; gap: 6px; margin: 8px 0;">
                            <span class="price-tag">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price-tag">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div><i class="fas fa-star" style="color: #fbbf24;"></i> ${p.rating} (${p.reviews})</div>
                        <div class="product-actions">
                            <button class="btn-add" data-id="${p.id}"><i class="fas fa-cart-shopping"></i> Add to cart</button>
                            <button class="btn-add" style="width: auto;"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                </div>
            `).join('');
            document.querySelectorAll('.btn-add[data-id]').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    const id = parseInt(btn.dataset.id);
                    addToCartById(id);
                });
            });
        }

        function addToCartById(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;
            cartCount++;
            cartCountSpan.innerText = cartCount;
            // micro feedback
            const originalText = btn => btn.innerHTML;
            const targetBtn = document.querySelector(`.btn-add[data-id="${productId}"]`);
            if(targetBtn) {
                targetBtn.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => { targetBtn.innerHTML = '<i class="fas fa-cart-shopping"></i> Add to cart'; }, 1200);
            }
            showToast(`${product.title} added ✨`);
        }

        function showToast(msg) {
            let toast = document.createElement('div');
            toast.innerText = msg;
            toast.style.position = 'fixed';
            toast.style.bottom = '20px';
            toast.style.left = '50%';
            toast.style.transform = 'translateX(-50%)';
            toast.style.backgroundColor = 'var(--accent)';
            toast.style.color = 'white';
            toast.style.padding = '12px 24px';
            toast.style.borderRadius = '60px';
            toast.style.zIndex = '999';
            toast.style.fontWeight = 'bold';
            toast.style.backdropFilter = 'blur(8px)';
            document.body.appendChild(toast);
            setTimeout(() => toast.remove(), 2000);
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if(!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // Deal countdown (ends in 2 days 5h)
        function startCountdown() {
            const targetDate = new Date();
            targetDate.setDate(targetDate.getDate() + 2);
            targetDate.setHours(targetDate.getHours() + 5);
            function update() {
                const now = new Date();
                const diff = targetDate - now;
                if(diff <= 0) {
                    document.getElementById('days').innerText = '00';
                    document.getElementById('hours').innerText = '00';
                    document.getElementById('minutes').innerText = '00';
                    document.getElementById('seconds').innerText = '00';
                    return;
                }
                const days = Math.floor(diff/(1000*60*60*24));
                const hours = Math.floor((diff/(1000*60*60)) % 24);
                const mins = Math.floor((diff/(1000*60)) % 60);
                const secs = Math.floor((diff/1000) % 60);
                document.getElementById('days').innerText = days < 10 ? '0'+days : days;
                document.getElementById('hours').innerText = hours < 10 ? '0'+hours : hours;
                document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
                document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
            }
            update();
            setInterval(update, 1000);
        }

        // testimonials dynamic
        const testimonialsData = [
            { name: "Sophia Chen", text: "Absolutely love the minimalist design and fast shipping. My new favorite store.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
            { name: "James Walker", text: "The flash sale was insane! Grabbed the MacBook at incredible price.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
            { name: "Elena Rodriguez", text: "Customer support helped me within minutes. Premium experience all the way.", rating: 4.9, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
        ];
        function renderTestimonials() {
            const container = document.getElementById('testimonialList');
            container.innerHTML = testimonialsData.map(t => `
                <div class="testimonial-card">
                    <div style="display: flex; gap: 12px; align-items: center; margin-bottom: 14px;">
                        <img src="${t.avatar}" style="width: 48px; height: 48px; border-radius: 60px; object-fit: cover;">
                        <div><strong>${t.name}</strong><div style="color: #fbbf24;">${'★'.repeat(Math.floor(t.rating))} ${t.rating}</div></div>
                    </div>
                    <p style="line-height: 1.4;">“${t.text}”</p>
                </div>
            `).join('');
        }

        // dark/light mode
        const themeToggle = document.getElementById('themeToggle');
        themeToggle.addEventListener('click', () => {
            document.body.classList.toggle('dark');
            const icon = themeToggle.querySelector('i');
            if(document.body.classList.contains('dark')) icon.classList.replace('fa-moon', 'fa-sun');
            else icon.classList.replace('fa-sun', 'fa-moon');
        });

        // newsletter modern
        const newsletterForm = document.getElementById('newsletterFormModern');
        const newsMsg = document.getElementById('newsletterMsgModern');
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value.trim();
            if(!email.includes('@')) {
                newsMsg.style.color = '#ffb3b3';
                newsMsg.innerText = 'Valid email required';
                return;
            }
            newsMsg.style.color = '#c3e6cb';
            newsMsg.innerText = `🎉 Thanks! ${email} is now subscribed.`;
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsg.innerText = '', 3000);
        });

        // flash deal add to cart
        document.getElementById('flashDealBtn').addEventListener('click', () => {
            cartCount++;
            cartCountSpan.innerText = cartCount;
            showToast('MacBook Pro M3 added to cart!');
        });
        document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDealsHero').addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({ behavior: 'smooth' }));
        
        // search live
        searchInput.addEventListener('input', (e) => filterProducts(e.target.value));
        searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

        // cart icon simple alert
        document.getElementById('cartIconBtn').addEventListener('click', () => showToast(`Cart has ${cartCount} item(s)`));

        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            startCountdown();
            renderTestimonials();
        }
        init();
    </script>
</body>
</html>
