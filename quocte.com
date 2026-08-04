<!DOCTYPE html>
<html lang="vi" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PTL Logistics - Giải Pháp Vận Chuyển Trung Việt Uy Tín & Tốc Độ</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts Inter -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        ptl: {
                            50: '#f0f7ff',
                            100: '#e0effe',
                            500: '#0284c7',
                            600: '#0369a1',
                            800: '#075985',
                            900: '#0c4a6e',
                            dark: '#081726',
                        },
                        brand: {
                            orange: '#f97316',
                            gold: '#eab308',
                            red: '#dc2626',
                        }
                    },
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                    }
                }
            }
        }
    </script>
    <style>
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: #f1f5f9;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #cbd5e1;
            border-radius: 4px;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb:hover {
            background: #94a3b8;
        }
        .gradient-border {
            background: linear-gradient(135deg, #0284c7 0%, #f97316 100%);
        }
    </style>
</head>
<body class="bg-slate-50 text-slate-800 font-sans antialiased selection:bg-ptl-500 selection:text-white custom-scrollbar">

    <!-- Top Announcement & Live Exchange Rate Bar -->
    <div class="bg-slate-900 text-slate-300 text-xs py-2 px-4 border-b border-slate-800">
        <div class="max-w-7xl mx-auto flex flex-col md:flex-row justify-between items-center gap-2">
            <div class="flex items-center gap-4 flex-wrap justify-center md:justify-start">
                <span class="flex items-center gap-1.5 text-amber-400 font-bold">
                    <i class="fa-solid fa-bolt"></i> PTL LOGISTICS: Tốc độ - Chính xác - Tối ưu
                </span>
                <span class="hidden md:inline text-slate-700">|</span>
                <a href="https://vantaiquocte.com" target="_blank" class="text-amber-300 hover:underline flex items-center gap-1 font-mono font-semibold">
                    <i class="fa-solid fa-globe text-ptl-500"></i> Vantaiquocte.com
                </a>
                <span class="hidden md:inline text-slate-700">|</span>
                <span class="flex items-center gap-1.5 bg-slate-800 px-2 py-0.5 rounded border border-slate-700">
                    <i class="fa-solid fa-yen-sign text-emerald-400"></i> Tỷ giá RMB hôm nay: <strong id="top-rate-display" class="text-white font-mono">3.620</strong> VNĐ
                </span>
            </div>
            <div class="flex items-center gap-4">
                <a href="tel:0336935222" class="hover:text-amber-400 transition-colors font-semibold flex items-center gap-1">
                    <i class="fa-solid fa-phone text-brand-orange"></i> Hotline CSKH: 033.69.35.222
                </a>
                <span class="text-slate-700">|</span>
                <div class="flex items-center gap-1.5">
                    <span class="w-2 h-2 rounded-full bg-emerald-500 animate-ping"></span>
                    <span class="text-emerald-400 text-[11px]">Kho Quảng Châu Đang Nhận Hàng</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Navigation Bar -->
    <header class="sticky top-0 z-50 bg-white/95 backdrop-blur-md shadow-sm border-b border-slate-100">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-20">
                <!-- Logo -->
                <a href="https://vantaiquocte.com" target="_blank" class="flex items-center gap-3">
                    <div class="w-12 h-12 bg-slate-900 rounded-xl flex items-center justify-center text-white shadow-lg relative overflow-hidden group">
                        <div class="absolute inset-0 bg-gradient-to-tr from-ptl-600 to-brand-orange opacity-90 group-hover:scale-105 transition-transform"></div>
                        <span class="relative z-10 font-black text-xl tracking-tighter text-white">PTL</span>
                    </div>
                    <div>
                        <div class="flex items-center gap-1">
                            <span class="text-2xl font-black tracking-tight text-slate-900 leading-none">PTL</span>
                            <span class="text-2xl font-extrabold text-brand-orange leading-none">LOGISTICS</span>
                        </div>
                        <span class="text-[10px] font-bold uppercase tracking-widest text-slate-500 block mt-1">VANTAIQUOCTE.COM • GIAO THƯƠNG TRUNG - VIỆT</span>
                    </div>
                </a>

                <!-- Desktop Navigation Links -->
                <nav class="hidden lg:flex items-center gap-7 font-semibold text-sm text-slate-700">
                    <a href="#about" class="hover:text-ptl-600 transition-colors">Về PTL</a>
                    <a href="#tracking" class="hover:text-ptl-600 transition-colors flex items-center gap-1"><i class="fa-solid fa-magnifying-glass text-brand-orange text-xs"></i> Tra Cứu Đơn</a>
                    <a href="#calculator" class="hover:text-ptl-600 transition-colors">Tính Cước Auto</a>
                    <a href="#pricing" class="hover:text-ptl-600 transition-colors">Bảng Giá</a>
                    <a href="#services" class="hover:text-ptl-600 transition-colors">Dịch Vụ</a>
                    <a href="#warehouses" class="hover:text-ptl-600 transition-colors">Địa Chỉ Kho</a>
                    <a href="#contact" class="hover:text-ptl-600 transition-colors">Liên Hệ</a>
                </nav>

                <!-- Header Actions -->
                <div class="hidden sm:flex items-center gap-3">
                    <a href="#converter-modal" onclick="toggleConverterModal()" class="px-3.5 py-2 rounded-lg text-xs font-bold text-slate-700 bg-slate-100 hover:bg-slate-200 transition-all border border-slate-200 flex items-center gap-1.5">
                        <i class="fa-solid fa-calculator text-ptl-600"></i> Đổi RMB
                    </a>
                    <a href="#contact" class="px-5 py-2.5 rounded-xl text-sm font-bold text-white bg-gradient-to-r from-ptl-600 to-ptl-800 hover:from-ptl-700 hover:to-ptl-900 shadow-md shadow-ptl-600/20 transition-all flex items-center gap-2">
                        <i class="fa-solid fa-headset"></i> Đặt Chuyến Ngay
                    </a>
                </div>

                <!-- Mobile menu button -->
                <button id="mobile-menu-btn" class="lg:hidden text-slate-700 p-2 rounded-lg hover:bg-slate-100">
                    <i class="fa-solid fa-bars text-xl"></i>
                </button>
            </div>
        </div>

        <!-- Mobile Navigation Drawer -->
        <div id="mobile-menu" class="hidden lg:hidden border-b border-slate-200 bg-white px-4 pt-2 pb-6 space-y-3">
            <a href="#about" class="block py-2 text-slate-700 font-medium hover:text-ptl-600">Về PTL Logistics</a>
            <a href="#tracking" class="block py-2 text-slate-700 font-medium hover:text-ptl-600">Tra Cứu Mã Vận Đơn</a>
            <a href="#calculator" class="block py-2 text-slate-700 font-medium hover:text-ptl-600">Dự Tính Chi Phí Vận Chuyển</a>
            <a href="#pricing" class="block py-2 text-slate-700 font-medium hover:text-ptl-600">Bảng Cước Phí Niêm Yết</a>
            <a href="#services" class="block py-2 text-slate-700 font-medium hover:text-ptl-600">Các Dịch Vụ Logistics</a>
            <a href="#warehouses" class="block py-2 text-slate-700 font-medium hover:text-ptl-600">Địa Chỉ Hệ Thống Kho</a>
            <div class="pt-4 border-t border-slate-100 flex flex-col gap-2">
                <button onclick="toggleConverterModal()" class="w-full text-center py-2.5 rounded-lg text-sm font-semibold text-slate-800 bg-slate-100">Đổi Tiền Tệ RMB ➔ VND</button>
                <a href="#contact" class="w-full text-center py-2.5 rounded-lg text-sm font-bold text-white bg-brand-orange">Gửi Yêu Cầu Báo Giá</a>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="relative bg-ptl-dark text-white pt-12 pb-24 overflow-hidden">
        <div class="absolute inset-0 opacity-15 bg-[radial-gradient(#38bdf8_1px,transparent_1px)] [background-size:20px_20px]"></div>
        <div class="absolute -top-24 -right-24 w-96 h-96 bg-ptl-500/20 rounded-full blur-3xl"></div>
        <div class="absolute -bottom-24 -left-24 w-96 h-96 bg-brand-orange/15 rounded-full blur-3xl"></div>

        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                
                <!-- Left Hero Content -->
                <div class="lg:col-span-7 space-y-6 text-center lg:text-left">
                    <div class="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-white/10 border border-white/20 text-xs font-bold text-amber-300">
                        <span class="w-2.5 h-2.5 rounded-full bg-emerald-400 animate-pulse"></span>
                        Hệ Thống Vận ChuyểnKL
                         - Chuyên Tuyến Trung Quốc ➔ Việt Nam
                    </div>

                    <h1 class="text-3xl sm:text-5xl lg:text-6xl font-black leading-tight tracking-tight">
                        VẬN CHUYỂN HÀNG <br/>
                        <span class="text-transparent bg-clip-text bg-gradient-to-r from-amber-400 via-orange-400 to-rose-500">TRUNG VIỆT PTL LOGISTICS</span> <br/>
                        Chính Ngạch & Gom Hàng Siêu Tốc
                    </h1>

                    <p class="text-slate-300 text-base sm:text-lg max-w-2xl mx-auto lg:mx-0 font-normal leading-relaxed">
                        Chuyên nghiệp - An toàn - Tối ưu chi phí. Hàng về Hà Nội từ <strong class="text-white font-bold">2 - 4 ngày</strong>, TP.HCM từ <strong class="text-white font-bold">4 - 6 ngày</strong>. Đền bù 100% rủi ro mất mát hàng hóa.
                    </p>

                    <!-- Fast Track Search Box -->
                    <div class="bg-slate-800/90 backdrop-blur-xl p-3 rounded-2xl border border-slate-700 shadow-2xl max-w-xl mx-auto lg:mx-0">
                        <form onsubmit="handleQuickTrack(event)" class="flex flex-col sm:flex-row gap-2">
                            <div class="relative flex-grow">
                                <i class="fa-solid fa-magnifying-glass absolute left-4 top-1/2 -translate-y-1/2 text-slate-400"></i>
                                <input type="text" id="hero-track-input" placeholder="Nhập mã vận đơn PTL (VD: PTL889966CN)" 
                                       class="w-full pl-11 pr-4 py-3 bg-slate-900 border border-slate-700 rounded-xl text-white placeholder-slate-400 focus:outline-none focus:border-amber-400 font-mono text-sm">
                            </div>
                            <button type="submit" class="bg-gradient-to-r from-brand-orange to-amber-500 hover:from-orange-600 hover:to-amber-600 text-white font-bold px-6 py-3 rounded-xl transition-all flex items-center justify-center gap-2 text-sm shadow-lg shadow-brand-orange/30 whitespace-nowrap">
                                <i class="fa-solid fa-location-arrow"></i> Tra Đơn PTL
                            </button>
                        </form>
                    </div>

                    <!-- Trust Stats -->
                    <div class="grid grid-cols-3 gap-4 pt-4 border-t border-white/10 max-w-lg mx-auto lg:mx-0 text-left">
                        <div>
                            <div class="text-2xl sm:text-3xl font-black text-amber-400">12.000+</div>
                            <div class="text-xs text-slate-400">Đơn hàng / Tháng</div>
                        </div>
                        <div>
                            <div class="text-2xl sm:text-3xl font-black text-amber-400">99.8%</div>
                            <div class="text-xs text-slate-400">Giao đúng cam kết</div>
                        </div>
                        <div>
                            <div class="text-2xl sm:text-3xl font-black text-amber-400">05 Kho</div>
                            <div class="text-xs text-slate-400">TQ & Việt Nam</div>
                        </div>
                    </div>
                </div>

                <!-- Right Card Graphic -->
                <div class="lg:col-span-5">
                    <div class="bg-gradient-to-b from-slate-800/90 to-slate-900 border border-slate-700/80 rounded-3xl p-6 sm:p-8 shadow-2xl relative">
                        <div class="flex justify-between items-center border-b border-slate-700 pb-4 mb-6">
                            <span class="text-xs uppercase font-extrabold text-amber-400 tracking-wider flex items-center gap-1.5">
                                <i class="fa-solid fa-truck-fast"></i> Lịch xe khởi hành hôm nay
                            </span>
                            <span class="bg-emerald-500/20 text-emerald-400 text-xs px-2.5 py-1 rounded-full font-bold border border-emerald-500/30">Chạy cố định 20:00</span>
                        </div>

                        <!-- Route visual timeline -->
                        <div class="space-y-5">
                            <div class="flex gap-4 items-start">
                                <div class="w-8 h-8 rounded-full bg-amber-500/20 text-amber-400 border border-amber-500/40 flex items-center justify-center text-xs shrink-0 mt-0.5">
                                    <i class="fa-solid fa-warehouse"></i>
                                </div>
                                <div>
                                    <div class="text-[11px] text-slate-400 uppercase font-semibold">Tập kết hàng Trung Quốc</div>
                                    <div class="font-bold text-white text-sm">Kho Quảng Châu / Bằng Tường / Đông Hưng</div>
                                    <div class="text-xs text-slate-400 mt-0.5">Nhận hàng 24/7, bắn mã Barcode & phân loại</div>
                                </div>
                            </div>

                            <div class="ml-4 pl-4 border-l-2 border-dashed border-slate-700 py-1">
                                <span class="text-[11px] text-amber-300 bg-amber-950/80 px-2 py-1 rounded border border-amber-800/60 inline-block font-mono">
                                    <i class="fa-solid fa-passport mr-1"></i> Thông quan cửa khẩu Hữu Nghị / Tân Thanh
                                </span>
                            </div>

                            <div class="flex gap-4 items-start">
                                <div class="w-8 h-8 rounded-full bg-ptl-500/20 text-ptl-400 border border-ptl-500/40 flex items-center justify-center text-xs shrink-0 mt-0.5">
                                    <i class="fa-solid fa-truck"></i>
                                </div>
                                <div>
                                    <div class="text-[11px] text-slate-400 uppercase font-semibold">Trung chuyển nội địa</div>
                                    <div class="font-bold text-white text-sm">Tải đường bộ siêu tốc & Container đường sắt</div>
                                    <div class="text-xs text-slate-400 mt-0.5">Chuyển thẳng kho Hà Nội / TP. Hồ Chí Minh</div>
                                </div>
                            </div>

                            <div class="ml-4 pl-4 border-l-2 border-dashed border-slate-700 py-1">
                                <span class="text-[11px] text-emerald-400 bg-emerald-950/80 px-2 py-1 rounded border border-emerald-800/60 inline-block font-mono">
                                    <i class="fa-solid fa-house-circle-check mr-1"></i> Giao hàng tận tay khách hàng
                                </span>
                            </div>

                            <div class="flex gap-4 items-start">
                                <div class="w-8 h-8 rounded-full bg-emerald-500/20 text-emerald-400 border border-emerald-500/40 flex items-center justify-center text-xs shrink-0 mt-0.5">
                                    <i class="fa-solid fa-box-open"></i>
                                </div>
                                <div>
                                    <div class="text-[11px] text-slate-400 uppercase font-semibold">Hoàn tất & Đền bù</div>
                                    <div class="font-bold text-white text-sm">Kiểm đếm kiện & Nghiệm thu</div>
                                    <div class="text-xs text-slate-400 mt-0.5">Cam kết đền bù 100% nếu thất lạc hàng</div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Order Tracking Section -->
    <section id="tracking" class="py-20 bg-slate-100">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center max-w-3xl mx-auto mb-12">
                <span class="text-ptl-600 font-extrabold text-sm uppercase tracking-wider bg-ptl-50 px-3.5 py-1.5 rounded-full border border-ptl-100">Hệ Thống PTL Real-Time</span>
                <h2 class="text-3xl sm:text-4xl font-extrabold text-slate-900 mt-3">Tra Cứu Vận Đơn PTL Logistics</h2>
                <p class="text-slate-600 mt-2 text-sm sm:text-base">Kiểm tra lộ trình di chuyển chính xác theo thời gian thực của kiện hàng Trung - Việt.</p>
            </div>

            <!-- Sample Track Code Buttons -->
            <div class="flex flex-wrap justify-center items-center gap-2 mb-8">
                <span class="text-xs text-slate-500 font-bold mr-1">Thử mã mẫu demo:</span>
                <button onclick="setTrackCode('PTL889966CN')" class="text-xs bg-white hover:bg-slate-200 border border-slate-300 text-slate-800 font-mono font-bold px-3 py-1.5 rounded-lg transition-all shadow-sm">
                    PTL889966CN (Đang giao hàng)
                </button>
                <button onclick="setTrackCode('PTL552211CN')" class="text-xs bg-white hover:bg-slate-200 border border-slate-300 text-slate-800 font-mono font-bold px-3 py-1.5 rounded-lg transition-all shadow-sm">
                    PTL552211CN (Đã thông quan)
                </button>
                <button onclick="setTrackCode('PTL991100CN')" class="text-xs bg-white hover:bg-slate-200 border border-slate-300 text-slate-800 font-mono font-bold px-3 py-1.5 rounded-lg transition-all shadow-sm">
                    PTL991100CN (Tại kho Quảng Châu)
                </button>
            </div>

            <!-- Main Tracking Display Box -->
            <div class="max-w-4xl mx-auto bg-white rounded-3xl border border-slate-200 shadow-xl overflow-hidden">
                <div class="bg-slate-900 p-6 sm:p-8 text-white">
                    <form onsubmit="handleMainTrack(event)" class="flex flex-col sm:flex-row gap-3">
                        <div class="relative flex-grow">
                            <input type="text" id="main-track-input" value="PTL889966CN" placeholder="Nhập mã vận đơn PTL..." 
                                   class="w-full pl-4 pr-10 py-3 bg-slate-800 border border-slate-700 rounded-xl text-white placeholder-slate-400 focus:outline-none focus:border-amber-400 font-mono text-sm">
                            <button type="button" onclick="clearTrackInput()" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400 hover:text-white">
                                <i class="fa-solid fa-circle-xmark"></i>
                            </button>
                        </div>
                        <button type="submit" class="bg-brand-orange hover:bg-orange-600 text-white font-bold px-8 py-3 rounded-xl transition-all text-sm flex items-center justify-center gap-2 shrink-0">
                            <i class="fa-solid fa-magnifying-glass"></i> Tra Cứu Đơn
                        </button>
                    </form>
                </div>

                <div id="tracking-result-container" class="p-6 sm:p-10">
                    <!-- Dynamic Tracking Content rendered by JS -->
                </div>
            </div>
        </div>
    </section>

    <!-- Auto Freight Rate Calculator Section -->
    <section id="calculator" class="py-20 bg-slate-900 text-white relative">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center max-w-3xl mx-auto mb-12">
                <span class="text-amber-400 font-extrabold text-sm uppercase tracking-wider bg-amber-400/10 border border-amber-400/20 px-3.5 py-1 rounded-full">Tính Cước Minh Bạch</span>
                <h2 class="text-3xl sm:text-4xl font-extrabold text-white mt-3">Dự Tính Cước Phí Vận Chuyển PTL</h2>
                <p class="text-slate-400 mt-2 text-sm sm:text-base">Nhập khối lượng hoặc kích thước kiện hàng để ước tính cước phí chính xác ngay lập tức.</p>
            </div>

            <div class="bg-slate-800 border border-slate-700 rounded-3xl p-6 sm:p-10 shadow-2xl grid grid-cols-1 lg:grid-cols-12 gap-8">
                
                <!-- Calculator Controls -->
                <div class="lg:col-span-7 space-y-6">
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-xs font-semibold text-slate-300 mb-2">Kho xuất phát (Trung Quốc)</label>
                            <select id="calc-origin" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm focus:outline-none focus:border-ptl-500 text-slate-200">
                                <option value="guangzhou">Kho Quảng Châu (Guangzhou)</option>
                                <option value="pingxiang">Kho Bằng Tường (Pingxiang)</option>
                                <option value="dongxing">Kho Đông Hưng (Dongxing)</option>
                                <option value="yiwu">Kho Nghĩa Ô (Yiwu)</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-xs font-semibold text-slate-300 mb-2">Điểm nhận hàng (Việt Nam)</label>
                            <select id="calc-dest" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm focus:outline-none focus:border-ptl-500 text-slate-200" onchange="calculateRate()">
                                <option value="hanoi">Kho Hà Nội (Miền Bắc)</option>
                                <option value="hcm">Kho TP. Hồ Chí Minh (Miền Nam)</option>
                                <option value="danang">Kho Đà Nẵng (Miền Trung)</option>
                            </select>
                        </div>
                    </div>

                    <!-- Mode selection -->
                    <div>
                        <label class="block text-xs font-semibold text-slate-300 mb-2">Hình thức vận chuyển</label>
                        <div class="grid grid-cols-3 gap-3">
                            <label class="cursor-pointer">
                                <input type="radio" name="calc-type" value="road_fast" checked class="peer sr-only" onchange="calculateRate()">
                                <div class="p-3 bg-slate-900 border border-slate-700 rounded-xl text-center peer-checked:border-amber-400 peer-checked:bg-amber-400/10 transition-all">
                                    <i class="fa-solid fa-truck-fast text-amber-400 text-lg block mb-1"></i>
                                    <span class="text-xs font-bold block text-white">Đường Bộ Siêu Tốc</span>
                                    <span class="text-[10px] text-slate-400">2 - 4 Ngày</span>
                                </div>
                            </label>
                            <label class="cursor-pointer">
                                <input type="radio" name="calc-type" value="rail" class="peer sr-only" onchange="calculateRate()">
                                <div class="p-3 bg-slate-900 border border-slate-700 rounded-xl text-center peer-checked:border-amber-400 peer-checked:bg-amber-400/10 transition-all">
                                    <i class="fa-solid fa-train text-amber-400 text-lg block mb-1"></i>
                                    <span class="text-xs font-bold block text-white">Đường Sắt Liên Vận</span>
                                    <span class="text-[10px] text-slate-400">4 - 6 Ngày</span>
                                </div>
                            </label>
                            <label class="cursor-pointer">
                                <input type="radio" name="calc-type" value="sea" class="peer sr-only" onchange="calculateRate()">
                                <div class="p-3 bg-slate-900 border border-slate-700 rounded-xl text-center peer-checked:border-amber-400 peer-checked:bg-amber-400/10 transition-all">
                                    <i class="fa-solid fa-ship text-amber-400 text-lg block mb-1"></i>
                                    <span class="text-xs font-bold block text-white">Đường Biển Container</span>
                                    <span class="text-[10px] text-slate-400">7 - 10 Ngày</span>
                                </div>
                            </label>
                        </div>
                    </div>

                    <!-- Mass & Dimensions -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-xs font-semibold text-slate-300 mb-2">Trọng Lượng Thực (Kg)</label>
                            <input type="number" id="calc-weight" value="80" min="1" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-ptl-500 font-mono" oninput="calculateRate()">
                        </div>
                        <div>
                            <label class="block text-xs font-semibold text-slate-300 mb-2">Thể Tích Kiện (m³ / Khối)</label>
                            <input type="number" id="calc-volume" value="0.4" step="0.05" min="0.01" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-ptl-500 font-mono" oninput="calculateRate()">
                        </div>
                    </div>

                    <!-- Extra Services Options -->
                    <div>
                        <label class="block text-xs font-semibold text-slate-300 mb-2">Dịch vụ bảo vệ kiện hàng</label>
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-3 text-xs">
                            <label class="flex items-center gap-2 bg-slate-900 p-3 rounded-xl border border-slate-700 cursor-pointer">
                                <input type="checkbox" id="calc-wooden-box" class="rounded text-brand-orange focus:ring-0" onchange="calculateRate()">
                                <span>Đóng khung gỗ chống va đập (+150k)</span>
                            </label>
                            <label class="flex items-center gap-2 bg-slate-900 p-3 rounded-xl border border-slate-700 cursor-pointer">
                                <input type="checkbox" id="calc-insurance" class="rounded text-brand-orange focus:ring-0" onchange="calculateRate()">
                                <span>Bảo hiểm rủi ro PTL 100% (+2%)</span>
                            </label>
                        </div>
                    </div>

                </div>

                <!-- Calculator Output -->
                <div class="lg:col-span-5 bg-gradient-to-br from-slate-900 to-slate-950 p-6 sm:p-8 rounded-2xl border border-slate-700 flex flex-col justify-between">
                    <div>
                        <div class="flex justify-between items-center border-b border-slate-800 pb-4 mb-4">
                            <span class="text-xs uppercase font-bold text-slate-400">Kết quả dự tính</span>
                            <span class="text-xs text-amber-400 font-mono"><i class="fa-solid fa-sync fa-spin mr-1"></i> Tự động tính</span>
                        </div>

                        <div class="space-y-3 text-sm">
                            <div class="flex justify-between text-slate-300">
                                <span>Đơn giá Trọng lượng:</span>
                                <span id="res-weight-rate" class="font-mono text-white">22.000 VNĐ / kg</span>
                            </div>
                            <div class="flex justify-between text-slate-300">
                                <span>Đơn giá Thể tích:</span>
                                <span id="res-volume-rate" class="font-mono text-white">2.700.000 VNĐ / m³</span>
                            </div>
                            <div class="flex justify-between text-slate-300">
                                <span>Phụ phí kiện / Bảo hiểm:</span>
                                <span id="res-extra-fee" class="font-mono text-white">0 VNĐ</span>
                            </div>
                            <div class="text-[11px] text-slate-400 italic bg-slate-800/80 p-3 rounded-xl border border-slate-800">
                                <i class="fa-solid fa-lightbulb text-amber-400 mr-1"></i> Quy tắc PTL: Hệ thống tự chọn cách tính có lợi nhất giữa Trọng lượng thực & Thể tích đóng gói.
                            </div>
                        </div>

                        <div class="mt-6 border-t border-slate-800 pt-6">
                            <span class="text-xs text-slate-400 block mb-1">Tổng cước tạm tính dự kiến:</span>
                            <div id="res-total" class="text-3xl sm:text-4xl font-black text-amber-400 font-mono">
                                1.760.000 VNĐ
                            </div>
                        </div>
                    </div>

                    <div class="mt-8">
                        <a href="#contact" class="block w-full text-center bg-gradient-to-r from-brand-orange to-amber-500 hover:from-orange-600 hover:to-amber-600 text-white font-bold py-3.5 rounded-xl transition-all text-sm shadow-lg shadow-brand-orange/20">
                            Chốt Đơn Với PTL Logistics
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center max-w-3xl mx-auto mb-16">
                <span class="text-ptl-600 font-extrabold text-sm uppercase tracking-wider bg-ptl-50 px-3.5 py-1.5 rounded-full border border-ptl-100">Giải Pháp Toàn Diện</span>
                <h2 class="text-3xl sm:text-4xl font-extrabold text-slate-900 mt-3">Dịch Vụ Nổi Bật Tại PTL Logistics</h2>
                <p class="text-slate-600 mt-3 text-base">Đáp ứng hoàn hảo nhu cầu vận tải chính ngạch, tiểu ngạch, mua hàng hộ và ủy thác nhập khẩu.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                
                <!-- Service 1 -->
                <div class="bg-slate-50 rounded-2xl p-8 border border-slate-200 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 group">
                    <div class="w-14 h-14 bg-amber-500/10 text-brand-orange rounded-2xl flex items-center justify-center text-2xl mb-6 group-hover:bg-brand-orange group-hover:text-white transition-colors">
                        <i class="fa-solid fa-truck-ramp-box"></i>
                    </div>
                    <h3 class="text-xl font-bold text-slate-900 mb-3">Vận Tải Đường Bộ Siêu Tốc</h3>
                    <p class="text-slate-600 text-sm leading-relaxed mb-4">
                        Xe chạy 2 chuyến mỗi ngày qua Cửa khẩu Hữu Nghị & Tân Thanh. Thời gian hàng về Hà Nội 2-4 ngày, TP.HCM 4-6 ngày.
                    </p>
                    <ul class="text-xs text-slate-700 space-y-2 mb-6 border-t border-slate-200 pt-4">
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Gom hàng lẻ LTL ghép xe tiết kiệm</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Nguyên xe FTL 5T - 30T chạy thẳng</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Theo dõi GPS lộ trình xe real-time</li>
                    </ul>
                    <a href="#contact" class="text-ptl-600 font-bold text-sm flex items-center gap-2 group-hover:gap-3 transition-all">Tư vấn vận tải <i class="fa-solid fa-arrow-right"></i></a>
                </div>

                <!-- Service 2 -->
                <div class="bg-slate-50 rounded-2xl p-8 border border-slate-200 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 group">
                    <div class="w-14 h-14 bg-ptl-500/10 text-ptl-600 rounded-2xl flex items-center justify-center text-2xl mb-6 group-hover:bg-ptl-600 group-hover:text-white transition-colors">
                        <i class="fa-solid fa-file-contract"></i>
                    </div>
                    <h3 class="text-xl font-bold text-slate-900 mb-3">Thông Quan Hải Quan Chính Ngạch</h3>
                    <p class="text-slate-600 text-sm leading-relaxed mb-4">
                        Xử lý trọn gói tờ khai Hải quan, hỗ trợ xin cấp C/O Form E miễn giảm thuế nhập khẩu tối đa cho doanh nghiệp.
                    </p>
                    <ul class="text-xs text-slate-700 space-y-2 mb-6 border-t border-slate-200 pt-4">
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Đầy đủ hóa đơn VAT chuẩn pháp lý</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Tra cứu mã HS Code ưu đãi thuế</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Ủy thác nhập khẩu doanh nghiệp trọn gói</li>
                    </ul>
                    <a href="#contact" class="text-ptl-600 font-bold text-sm flex items-center gap-2 group-hover:gap-3 transition-all">Tư vấn thông quan <i class="fa-solid fa-arrow-right"></i></a>
                </div>

                <!-- Service 3 -->
                <div class="bg-slate-50 rounded-2xl p-8 border border-slate-200 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 group">
                    <div class="w-14 h-14 bg-emerald-500/10 text-emerald-600 rounded-2xl flex items-center justify-center text-2xl mb-6 group-hover:bg-emerald-600 group-hover:text-white transition-colors">
                        <i class="fa-solid fa-cart-flatbed"></i>
                    </div>
                    <h3 class="text-xl font-bold text-slate-900 mb-3">Tìm Nguồn Hàng & Đặt Hàng 1688</h3>
                    <p class="text-slate-600 text-sm leading-relaxed mb-4">
                        Đội ngũ PTL nói tiếng Trung lưu khoát hỗ trợ đàm phán giá tận xưởng sản xuất Taobao, 1688, Tmall, Pinduoduo.
                    </p>
                    <ul class="text-xs text-slate-700 space-y-2 mb-6 border-t border-slate-200 pt-4">
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Đàm phán giảm 5-15% giá xưởng</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Thanh toán hộ Nhân Dân Tệ (RMB) an toàn</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Kiểm tra chất lượng mẫu trước khi gom</li>
                    </ul>
                    <a href="#contact" class="text-ptl-600 font-bold text-sm flex items-center gap-2 group-hover:gap-3 transition-all">Tư vấn tìm nguồn <i class="fa-solid fa-arrow-right"></i></a>
                </div>

                <!-- Service 4 -->
                <div class="bg-slate-50 rounded-2xl p-8 border border-slate-200 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 group">
                    <div class="w-14 h-14 bg-purple-500/10 text-purple-600 rounded-2xl flex items-center justify-center text-2xl mb-6 group-hover:bg-purple-600 group-hover:text-white transition-colors">
                        <i class="fa-solid fa-boxes-stacked"></i>
                    </div>
                    <h3 class="text-xl font-bold text-slate-900 mb-3">Hệ Thống Kho Bãi & Lưu Kho</h3>
                    <p class="text-slate-600 text-sm leading-relaxed mb-4">
                        Sở hữu diện tích kho bãi hơn 8.000m² tại Quảng Châu, Bằng Tường, Hà Nội, TP.HCM trang bị hệ thống nâng hạ chuyên nghiệp.
                    </p>
                    <ul class="text-xs text-slate-700 space-y-2 mb-6 border-t border-slate-200 pt-4">
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Miễn phí lưu kho lên đến 7 ngày</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Đóng khung gỗ & quấn màng co bubble</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Chụp ảnh thực tế kiện hàng trước khi đóng</li>
                    </ul>
                    <a href="#contact" class="text-ptl-600 font-bold text-sm flex items-center gap-2 group-hover:gap-3 transition-all">Xem chi tiết kho <i class="fa-solid fa-arrow-right"></i></a>
                </div>

                <!-- Service 5 -->
                <div class="bg-slate-50 rounded-2xl p-8 border border-slate-200 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 group">
                    <div class="w-14 h-14 bg-cyan-500/10 text-cyan-600 rounded-2xl flex items-center justify-center text-2xl mb-6 group-hover:bg-cyan-600 group-hover:text-white transition-colors">
                        <i class="fa-solid fa-train text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold text-slate-900 mb-3">Vận Chuyển Đường Sắt Liên Vận</h3>
                    <p class="text-slate-600 text-sm leading-relaxed mb-4">
                        Tuyến đường sắt Nam Ninh - Đồng Đăng - Yên Viên thích hợp cho nguyên vật liệu, siêu trọng, chi phí tiết kiệm 20-30%.
                    </p>
                    <ul class="text-xs text-slate-700 space-y-2 mb-6 border-t border-slate-200 pt-4">
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Không lo tắc biên mùa cao điểm</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Đảm bảo an toàn tuyệt đối hàng nặng</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Lịch tàu chạy cố định hàng tuần</li>
                    </ul>
                    <a href="#contact" class="text-ptl-600 font-bold text-sm flex items-center gap-2 group-hover:gap-3 transition-all">Tư vấn đường sắt <i class="fa-solid fa-arrow-right"></i></a>
                </div>

                <!-- Service 6 -->
                <div class="bg-slate-50 rounded-2xl p-8 border border-slate-200 hover:shadow-xl hover:-translate-y-1 transition-all duration-300 group">
                    <div class="w-14 h-14 bg-rose-500/10 text-rose-600 rounded-2xl flex items-center justify-center text-2xl mb-6 group-hover:bg-rose-600 group-hover:text-white transition-colors">
                        <i class="fa-solid fa-ship"></i>
                    </div>
                    <h3 class="text-xl font-bold text-slate-900 mb-3">Vận Chuyển Đường Biển FCL / LCL</h3>
                    <p class="text-slate-600 text-sm leading-relaxed mb-4">
                        Vận tải Container từ Quảng Châu, Thâm Quyến, Ninh Ba về các cảng Hải Phòng, Cát Lái, Đà Nẵng với giá cước cạnh tranh.
                    </p>
                    <ul class="text-xs text-slate-700 space-y-2 mb-6 border-t border-slate-200 pt-4">
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Đầy đủ dịch vụ Door-to-Door</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Gom container lẻ LCL tối ưu</li>
                        <li class="flex items-center gap-2"><i class="fa-solid fa-circle-check text-emerald-500"></i> Booking hãng tàu giá gốc</li>
                    </ul>
                    <a href="#contact" class="text-ptl-600 font-bold text-sm flex items-center gap-2 group-hover:gap-3 transition-all">Tư vấn đường biển <i class="fa-solid fa-arrow-right"></i></a>
                </div>

            </div>
        </div>
    </section>

    <!-- Transparent Pricing Tables Section -->
    <section id="pricing" class="py-20 bg-slate-50 border-t border-slate-200">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center max-w-3xl mx-auto mb-16">
                <span class="text-ptl-600 font-extrabold text-sm uppercase tracking-wider bg-ptl-50 px-3.5 py-1.5 rounded-full border border-ptl-100">Bảng Giá Niêm Yết</span>
                <h2 class="text-3xl sm:text-4xl font-extrabold text-slate-900 mt-3">Bảng Cước Vận Chuyển PTL Logistics</h2>
                <p class="text-slate-600 mt-3 text-base">Cam kết minh bạch, không phát sinh chi phí ẩn. Chiết khấu thêm cho khách hàng thương mại lâu dài.</p>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
                
                <!-- Table North Route -->
                <div class="bg-white rounded-3xl border border-slate-200 shadow-lg overflow-hidden">
                    <div class="bg-gradient-to-r from-ptl-800 to-ptl-600 text-white p-6 flex justify-between items-center">
                        <div>
                            <span class="bg-white/20 text-xs px-2.5 py-1 rounded-full font-bold uppercase">Tuyến Miền Bắc</span>
                            <h3 class="font-extrabold text-xl mt-2 flex items-center gap-2">
                                <i class="fa-solid fa-location-dot text-amber-400"></i> Trung Quốc ➔ Hà Nội
                            </h3>
                            <p class="text-xs text-ptl-100 mt-1">Thời gian nhận hàng: 2 - 4 ngày làm việc</p>
                        </div>
                    </div>
                    <div class="p-6">
                        <table class="w-full text-left text-sm">
                            <thead>
                                <tr class="border-b border-slate-200 text-slate-500 font-bold text-xs uppercase">
                                    <th class="pb-3">Mức Trọng Lượng / Thể Tích</th>
                                    <th class="pb-3">Hàng Nặng (Đồng/Kg)</th>
                                    <th class="pb-3">Hàng Nhẹ (Đồng/m³)</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-slate-100 text-slate-700">
                                <tr>
                                    <td class="py-3.5 font-medium">Dưới 30 Kg / Dưới 0.5 m³</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">24.000 đ</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">2.800.000 đ</td>
                                </tr>
                                <tr>
                                    <td class="py-3.5 font-medium">Từ 30 - 100 Kg</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">21.000 đ</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">2.600.000 đ</td>
                                </tr>
                                <tr>
                                    <td class="py-3.5 font-medium">Từ 100 - 500 Kg</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">18.000 đ</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">2.400.000 đ</td>
                                </tr>
                                <tr>
                                    <td class="py-3.5 font-medium">Trên 500 Kg / Trên 5 m³</td>
                                    <td class="py-3.5 text-brand-orange font-bold font-mono">15.000 đ</td>
                                    <td class="py-3.5 text-brand-orange font-bold font-mono">2.100.000 đ</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Table South Route -->
                <div class="bg-white rounded-3xl border border-slate-200 shadow-lg overflow-hidden">
                    <div class="bg-gradient-to-r from-slate-900 to-slate-800 text-white p-6 flex justify-between items-center">
                        <div>
                            <span class="bg-white/20 text-xs px-2.5 py-1 rounded-full font-bold uppercase">Tuyến Miền Nam</span>
                            <h3 class="font-extrabold text-xl mt-2 flex items-center gap-2">
                                <i class="fa-solid fa-location-dot text-amber-400"></i> Trung Quốc ➔ TP. Hồ Chí Minh
                            </h3>
                            <p class="text-xs text-slate-300 mt-1">Thời gian nhận hàng: 4 - 6 ngày làm việc</p>
                        </div>
                    </div>
                    <div class="p-6">
                        <table class="w-full text-left text-sm">
                            <thead>
                                <tr class="border-b border-slate-200 text-slate-500 font-bold text-xs uppercase">
                                    <th class="pb-3">Mức Trọng Lượng / Thể Tích</th>
                                    <th class="pb-3">Hàng Nặng (Đồng/Kg)</th>
                                    <th class="pb-3">Hàng Nhẹ (Đồng/m³)</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-slate-100 text-slate-700">
                                <tr>
                                    <td class="py-3.5 font-medium">Dưới 30 Kg / Dưới 0.5 m³</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">28.000 đ</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">3.300.000 đ</td>
                                </tr>
                                <tr>
                                    <td class="py-3.5 font-medium">Từ 30 - 100 Kg</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">25.000 đ</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">3.000.000 đ</td>
                                </tr>
                                <tr>
                                    <td class="py-3.5 font-medium">Từ 100 - 500 Kg</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">22.000 đ</td>
                                    <td class="py-3.5 text-ptl-600 font-bold font-mono">2.700.000 đ</td>
                                </tr>
                                <tr>
                                    <td class="py-3.5 font-medium">Trên 500 Kg / Trên 5 m³</td>
                                    <td class="py-3.5 text-brand-orange font-bold font-mono">19.000 đ</td>
                                    <td class="py-3.5 text-brand-orange font-bold font-mono">2.400.000 đ</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Warehouses System Section -->
    <section id="warehouses" class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center max-w-3xl mx-auto mb-16">
                <span class="text-ptl-600 font-extrabold text-sm uppercase tracking-wider bg-ptl-50 px-3.5 py-1.5 rounded-full border border-ptl-100">Hệ Thống Mạng Lưới PTL</span>
                <h2 class="text-3xl sm:text-4xl font-extrabold text-slate-900 mt-3">Địa Chỉ Kho Hàng PTL Logistics</h2>
                <p class="text-slate-600 mt-2 text-sm sm:text-base">Quý khách hàng có thể copy địa chỉ tiếng Trung dưới đây để dán trực tiếp vào địa chỉ nhận hàng trên Taobao, 1688, Tmall.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                
                <!-- Guangzhou Warehouse -->
                <div class="bg-slate-50 rounded-2xl p-6 border border-slate-200 shadow-sm relative hover:border-ptl-500 transition-all">
                    <div class="flex justify-between items-start mb-4">
                        <span class="bg-amber-100 text-amber-800 text-xs font-bold px-2.5 py-1 rounded-md uppercase">Kho Quảng Châu (TQ)</span>
                        <button onclick="copyAddress('gz-addr')" class="text-xs bg-white border border-slate-300 hover:bg-ptl-50 hover:text-ptl-600 text-slate-700 px-3 py-1.5 rounded-lg font-bold transition-all shadow-sm">
                            <i class="fa-regular fa-copy mr-1"></i> Copy
                        </button>
                    </div>
                    <div class="space-y-2 text-xs text-slate-700">
                        <p class="font-bold text-slate-900 text-sm">Kho Tập Kết Quảng Châu PTL</p>
                        <div id="gz-addr" class="bg-white p-3 rounded-xl border border-slate-200 font-mono text-[11px] leading-relaxed select-all">
                            收货人: PTL物流-(MãKhách)<br/>
                            手机号码: 138 2222 8888<br/>
                            广东省 广州市 白云区 太和镇物流园区B区9号仓库
                        </div>
                        <p class="text-slate-500"><i class="fa-solid fa-clock text-emerald-500 mr-1"></i> Nhận hàng: 08:30 - 22:00 hằng ngày</p>
                    </div>
                </div>

                <!-- Pingxiang Warehouse -->
                <div class="bg-slate-50 rounded-2xl p-6 border border-slate-200 shadow-sm relative hover:border-ptl-500 transition-all">
                    <div class="flex justify-between items-start mb-4">
                        <span class="bg-amber-100 text-amber-800 text-xs font-bold px-2.5 py-1 rounded-md uppercase">Kho Bằng Tường (TQ)</span>
                        <button onclick="copyAddress('px-addr')" class="text-xs bg-white border border-slate-300 hover:bg-ptl-50 hover:text-ptl-600 text-slate-700 px-3 py-1.5 rounded-lg font-bold transition-all shadow-sm">
                            <i class="fa-regular fa-copy mr-1"></i> Copy
                        </button>
                    </div>
                    <div class="space-y-2 text-xs text-slate-700">
                        <p class="font-bold text-slate-900 text-sm">Kho Cửa Khẩu Bằng Tường PTL</p>
                        <div id="px-addr" class="bg-white p-3 rounded-xl border border-slate-200 font-mono text-[11px] leading-relaxed select-all">
                            收货人: PTL物流-(MãKhách)<br/>
                            手机号码: 139 7777 9999<br/>
                            广西壮族自治区 崇左市 凭祥市 南山物流园C栋12号
                        </div>
                        <p class="text-slate-500"><i class="fa-solid fa-clock text-emerald-500 mr-1"></i> Nhận hàng: 24/7 không nghỉ</p>
                    </div>
                </div>

                <!-- Hanoi Hub -->
                <div class="bg-slate-50 rounded-2xl p-6 border border-slate-200 shadow-sm relative hover:border-ptl-500 transition-all">
                    <div class="flex justify-between items-start mb-4">
                        <span class="bg-ptl-100 text-ptl-800 text-xs font-bold px-2.5 py-1 rounded-md uppercase">Kho Tổng Hà Nội (VN)</span>
                    </div>
                    <div class="space-y-2 text-xs text-slate-700">
                        <p class="font-bold text-slate-900 text-sm">Kho Phân Loại Hà Nội PTL</p>
                        <div class="bg-white p-3 rounded-xl border border-slate-200 font-sans text-xs leading-relaxed">
                            <strong>Địa chỉ:</strong> Cụm CN Triều Khúc, Tân Triều, Thanh Trì, Hà Nội<br/>
                            <strong>Hotline kho:</strong> 033.69.35.222<br/>
                            <strong>Quản lý:</strong> Mr. Phát (0912.345.678)
                        </div>
                        <p class="text-slate-500"><i class="fa-solid fa-clock text-emerald-500 mr-1"></i> Phát hàng: 08:00 - 18:30 (Thứ 2 - T7)</p>
                    </div>
                </div>

                <!-- HCMC Hub -->
                <div class="bg-slate-50 rounded-2xl p-6 border border-slate-200 shadow-sm relative hover:border-ptl-500 transition-all">
                    <div class="flex justify-between items-start mb-4">
                        <span class="bg-ptl-100 text-ptl-800 text-xs font-bold px-2.5 py-1 rounded-md uppercase">Kho Tổng TP.HCM (VN)</span>
                    </div>
                    <div class="space-y-2 text-xs text-slate-700">
                        <p class="font-bold text-slate-900 text-sm">Kho Phân Loại Miền Nam PTL</p>
                        <div class="bg-white p-3 rounded-xl border border-slate-200 font-sans text-xs leading-relaxed">
                            <strong>Địa chỉ:</strong> Số 168 Đường Tân Thới Nhất 8, Q.12, TP. Hồ Chí Minh<br/>
                            <strong>Hotline kho:</strong> 0977.889.900<br/>
                            <strong>Quản lý:</strong> Mr. Tiến (0909.123.888)
                        </div>
                        <p class="text-slate-500"><i class="fa-solid fa-clock text-emerald-500 mr-1"></i> Phát hàng: 08:00 - 19:00 (Hằng ngày)</p>
                    </div>
                </div>

                <!-- Dongxing Warehouse -->
                <div class="bg-slate-50 rounded-2xl p-6 border border-slate-200 shadow-sm relative hover:border-ptl-500 transition-all">
                    <div class="flex justify-between items-start mb-4">
                        <span class="bg-amber-100 text-amber-800 text-xs font-bold px-2.5 py-1 rounded-md uppercase">Kho Đông Hưng (TQ)</span>
                        <button onclick="copyAddress('dx-addr')" class="text-xs bg-white border border-slate-300 hover:bg-ptl-50 hover:text-ptl-600 text-slate-700 px-3 py-1.5 rounded-lg font-bold transition-all shadow-sm">
                            <i class="fa-regular fa-copy mr-1"></i> Copy
                        </button>
                    </div>
                    <div class="space-y-2 text-xs text-slate-700">
                        <p class="font-bold text-slate-900 text-sm">Kho Biên Giới Đông Hưng PTL</p>
                        <div id="dx-addr" class="bg-white p-3 rounded-xl border border-slate-200 font-mono text-[11px] leading-relaxed select-all">
                            收货人: PTL物流-(MãKhách)<br/>
                            手机号码: 137 6666 5555<br/>
                            广西壮族自治区 防城港市 东兴市 冲卜路88号
                        </div>
                        <p class="text-slate-500"><i class="fa-solid fa-clock text-emerald-500 mr-1"></i> Chuyên tuyến Móng Cái - Quảng Ninh</p>
                    </div>
                </div>

                <!-- Da Nang Hub -->
                <div class="bg-slate-50 rounded-2xl p-6 border border-slate-200 shadow-sm relative hover:border-ptl-500 transition-all">
                    <div class="flex justify-between items-start mb-4">
                        <span class="bg-ptl-100 text-ptl-800 text-xs font-bold px-2.5 py-1 rounded-md uppercase">Kho Đà Nẵng (VN)</span>
                    </div>
                    <div class="space-y-2 text-xs text-slate-700">
                        <p class="font-bold text-slate-900 text-sm">Kho Miền Trung PTL</p>
                        <div class="bg-white p-3 rounded-xl border border-slate-200 font-sans text-xs leading-relaxed">
                            <strong>Địa chỉ:</strong> đường Hòa Minh 16, Q. Liên Chiểu, TP. Đà Nẵng<br/>
                            <strong>Hotline kho:</strong> 0935.445.566<br/>
                            <strong>Quản lý:</strong> Ms. Lợi (0935.112.334)
                        </div>
                        <p class="text-slate-500"><i class="fa-solid fa-clock text-emerald-500 mr-1"></i> Phát hàng: 08:00 - 18:00</p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section id="contact" class="py-20 bg-slate-900 text-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12">
                
                <div class="lg:col-span-5 space-y-6">
                    <div>
                        <span class="text-amber-400 font-extrabold text-sm uppercase tracking-wider bg-amber-400/10 px-3.5 py-1.5 rounded-full border border-amber-400/20">Đồng Hành Phát Triển</span>
                        <h2 class="text-3xl sm:text-4xl font-extrabold text-white mt-3">Liên Hệ PTL Logistics</h2>
                        <p class="text-slate-400 mt-2 text-sm sm:text-base">Nhận tư vấn phương án vận chuyển tối ưu và báo giá chi tiết trong vòng 5 phút.</p>
                    </div>

                    <div class="space-y-4 pt-4">
                        <div class="flex items-center gap-4 bg-slate-800 p-4 rounded-2xl border border-slate-700">
                            <div class="w-12 h-12 rounded-xl bg-brand-orange/20 text-brand-orange flex items-center justify-center text-xl shrink-0">
                                <i class="fa-solid fa-headset"></i>
                            </div>
                            <div>
                                <span class="text-xs text-slate-400 uppercase font-semibold">Tổng Đài CSKH Hotline</span>
                                <div class="text-xl font-black text-amber-400 font-mono">033.69.35.222</div>
                            </div>
                        </div>

                        <div class="flex items-center gap-4 bg-slate-800 p-4 rounded-2xl border border-slate-700">
                            <div class="w-12 h-12 rounded-xl bg-ptl-500/20 text-ptl-400 flex items-center justify-center text-xl shrink-0">
                                <i class="fa-solid fa-envelope"></i>
                            </div>
                            <div>
                                <span class="text-xs text-slate-400 uppercase font-semibold">Email Tiếp Nhận Yêu Cầu</span>
                                <div class="text-sm font-bold text-white font-mono">Phamtuan15102005@gmail.com</div>
                            </div>
                        </div>

                        <div class="flex items-center gap-4 bg-slate-800 p-4 rounded-2xl border border-slate-700">
                            <div class="w-12 h-12 rounded-xl bg-amber-500/20 text-amber-400 flex items-center justify-center text-xl shrink-0">
                                <i class="fa-solid fa-globe"></i>
                            </div>
                            <div>
                                <span class="text-xs text-slate-400 uppercase font-semibold">Website Chính Thức</span>
                                <a href="https://vantaiquocte.com" target="_blank" class="text-sm font-bold text-amber-400 hover:underline font-mono block">Vantaiquocte.com</a>
                            </div>
                        </div>

                        <div class="flex items-center gap-4 bg-slate-800 p-4 rounded-2xl border border-slate-700">
                            <div class="w-12 h-12 rounded-xl bg-emerald-500/20 text-emerald-400 flex items-center justify-center text-xl shrink-0">
                                <i class="fa-solid fa-comments"></i>
                            </div>
                            <div>
                                <span class="text-xs text-slate-400 uppercase font-semibold">Tư Vấn Trực Tiếp Qua Zalo</span>
                                <div class="text-sm font-bold text-white">Zalo Official: PTL Logistics VN</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Form Card -->
                <div class="lg:col-span-7">
                    <div class="bg-slate-800 p-6 sm:p-10 rounded-3xl border border-slate-700 shadow-2xl">
                        <h3 class="text-xl font-bold text-white mb-6 flex items-center gap-2">
                            <i class="fa-solid fa-paper-plane text-brand-orange"></i> Gửi Yêu Cầu Báo Giá Trực Tiếp
                        </h3>

                        <form onsubmit="handleContactSubmit(event)" class="space-y-4">
                            <div>
                                <label class="block text-xs font-semibold text-slate-300 mb-1.5">Họ và Tên (*)</label>
                                <input type="text" required placeholder="Nguyễn Văn A" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-amber-400">
                            </div>

                            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                <div>
                                    <label class="block text-xs font-semibold text-slate-300 mb-1.5">Số Điện Thoại / Zalo (*)</label>
                                    <input type="tel" required placeholder="0901234567" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-amber-400">
                                </div>
                                <div>
                                    <label class="block text-xs font-semibold text-slate-300 mb-1.5">Email</label>
                                    <input type="email" placeholder="khachhang@gmail.com" class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-amber-400">
                                </div>
                            </div>

                            <div>
                                <label class="block text-xs font-semibold text-slate-300 mb-1.5">Nhu cầu vận chuyển chính</label>
                                <select class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-amber-400">
                                    <option>Vận chuyển đường bộ gom hàng lẻ</option>
                                    <option>Thông quan chính ngạch nguyên container</option>
                                    <option>Vận chuyển đường sắt liên vận</option>
                                    <option>Tìm xưởng & Đặt hàng 1688 / Taobao</option>
                                    <option>Nạp tiền Alipay / Thanh toán hộ RMB</option>
                                </select>
                            </div>

                            <div>
                                <label class="block text-xs font-semibold text-slate-300 mb-1.5">Mô tả mặt hàng & Khối lượng dự kiến</label>
                                <textarea rows="3" placeholder="Ví dụ: 20 thùng hàng quần áo thời trang, khoảng 300kg, nhận tại Hà Nội..." class="w-full bg-slate-900 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-amber-400"></textarea>
                            </div>

                            <button type="submit" class="w-full bg-gradient-to-r from-brand-orange to-amber-500 hover:from-orange-600 hover:to-amber-600 text-white font-bold py-3.5 rounded-xl transition-all shadow-lg shadow-brand-orange/20 text-sm">
                                Gửi Đăng Ký Tư Vấn PTL
                            </button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-slate-950 text-slate-400 py-12 border-t border-slate-800 text-xs sm:text-sm">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8 mb-12">
                <div class="space-y-4">
                    <div class="flex items-center gap-2">
                        <div class="w-8 h-8 bg-ptl-600 rounded-lg flex items-center justify-center text-white font-black">PTL</div>
                        <span class="text-xl font-black text-white">PTL <span class="text-brand-orange">LOGISTICS</span></span>
                    </div>
                    <p class="text-xs leading-relaxed text-slate-400">
                        Thương hiệu vận tải hàng đầu chuyên tuyến Trung Quốc - Việt Nam. An toàn, tốc độ, minh bạch cước phí.
                    </p>
                </div>

                <div>
                    <h4 class="text-white font-bold text-sm mb-4">Dịch Vụ Nổi Bật</h4>
                    <ul class="space-y-2 text-xs">
                        <li><a href="#services" class="hover:text-amber-400">Vận tải đường bộ siêu tốc</a></li>
                        <li><a href="#services" class="hover:text-amber-400">Thông quan Hải quan chính ngạch</a></li>
                        <li><a href="#services" class="hover:text-amber-400">Đóng gói kiện gỗ bảo vệ</a></li>
                        <li><a href="#services" class="hover:text-amber-400">Đàm phán xưởng 1688 / Taobao</a></li>
                    </ul>
                </div>

                <div>
                    <h4 class="text-white font-bold text-sm mb-4">Liên Kết Trực Tiếp</h4>
                    <ul class="space-y-2 text-xs">
                        <li><a href="#tracking" class="hover:text-amber-400">Tra cứu vận đơn PTL</a></li>
                        <li><a href="#calculator" class="hover:text-amber-400">Dự tính chi phí vận chuyển</a></li>
                        <li><a href="#pricing" class="hover:text-amber-400">Bảng giá cước niêm yết</a></li>
                        <li><a href="#warehouses" class="hover:text-amber-400">Địa chỉ kho hàng Quảng Châu</a></li>
                    </ul>
                </div>

                <div>
                    <h4 class="text-white font-bold text-sm mb-4">Hotline Hỗ Trợ 24/7</h4>
                    <div class="space-y-2 text-xs">
                        <div class="text-amber-400 font-extrabold text-xl font-mono">033.69.35.222</div>
                        <div>Email: <a href="mailto:Phamtuan15102005@gmail.com" class="hover:text-amber-400 font-mono">Phamtuan15102005@gmail.com</a></div>
                        <div>Website: <a href="https://vantaiquocte.com" target="_blank" class="text-amber-400 hover:underline font-mono">Vantaiquocte.com</a></div>
                        <div>Làm việc: 08:00 - 21:00 Tất cả các ngày trong tuần</div>
                    </div>
                </div>
            </div>

            <div class="border-t border-slate-900 pt-6 flex flex-col sm:flex-row justify-between items-center text-xs text-slate-600">
                <div>© 2026 PTL Logistics - <a href="https://vantaiquocte.com" class="hover:text-amber-400">Vantaiquocte.com</a>. Tất cả quyền được bảo lưu.</div>
                <div class="flex gap-4 mt-2 sm:mt-0">
                    <a href="#" class="hover:text-slate-400">Chính sách bảo mật</a>
                    <a href="#" class="hover:text-slate-400">Điều khoản sử dụng</a>
                    <a href="#" class="hover:text-slate-400">Chính sách đền bù 100%</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- Floating Action Widgets -->
    <div class="fixed bottom-6 right-6 z-50 flex flex-col gap-3">
        <a href="https://zalo.me" target="_blank" title="Chat Zalo ngay" class="w-12 h-12 rounded-full bg-blue-600 text-white flex items-center justify-center text-xs font-black shadow-2xl hover:scale-110 transition-transform">
            ZALO
        </a>
        <a href="tel:0336935222" title="Gọi Hotline" class="w-12 h-12 rounded-full bg-brand-orange text-white flex items-center justify-center text-xl shadow-2xl hover:scale-110 transition-transform animate-bounce">
            <i class="fa-solid fa-phone"></i>
        </a>
    </div>

    <!-- Currency Converter Modal -->
    <div id="converter-modal" class="fixed inset-0 bg-slate-900/70 backdrop-blur-sm z-50 hidden flex items-center justify-center p-4">
        <div class="bg-white rounded-3xl max-w-md w-full p-6 sm:p-8 shadow-2xl border border-slate-200 relative">
            <button onclick="toggleConverterModal()" class="absolute right-4 top-4 text-slate-400 hover:text-slate-700 text-lg">
                <i class="fa-solid fa-xmark"></i>
            </button>
            
            <h3 class="text-xl font-black text-slate-900 mb-1 flex items-center gap-2">
                <i class="fa-solid fa-calculator text-ptl-600"></i> Công Cụ Quy Đổi RMB ➔ VND
            </h3>
            <p class="text-xs text-slate-500 mb-6">Tính nhanh số tiền Việt Nam Đồng tương ứng khi mua hàng 1688 / Taobao.</p>

            <div class="space-y-4">
                <div>
                    <label class="block text-xs font-bold text-slate-700 mb-1">Số tiền Nhân Dân Tệ (¥ RMB)</label>
                    <input type="number" id="rmb-input" value="100" min="0" oninput="convertCurrency()" class="w-full bg-slate-50 border border-slate-300 rounded-xl px-4 py-3 text-base font-bold font-mono text-slate-900 focus:outline-none focus:border-ptl-500">
                </div>

                <div>
                    <label class="block text-xs font-bold text-slate-700 mb-1">Tỷ giá áp dụng (VNĐ / 1 RMB)</label>
                    <input type="number" id="rate-input" value="3620" oninput="convertCurrency()" class="w-full bg-slate-50 border border-slate-300 rounded-xl px-4 py-3 text-sm font-mono text-slate-900 focus:outline-none focus:border-ptl-500">
                </div>

                <div class="bg-slate-900 p-4 rounded-2xl text-white">
                    <span class="text-xs text-slate-400 block mb-1">Thành tiền quy đổi (VNĐ):</span>
                    <div id="converted-vnd" class="text-2xl font-black font-mono text-amber-400">
                        362.000 VNĐ
                    </div>
                </div>
            </div>

            <button onclick="toggleConverterModal()" class="mt-6 w-full bg-slate-900 text-white font-bold py-3 rounded-xl text-xs">
                Đóng Công Cụ
            </button>
        </div>
    </div>

    <!-- Notification Toast Modal -->
    <div id="toast-modal" class="fixed inset-0 bg-slate-900/60 backdrop-blur-sm z-50 hidden flex items-center justify-center p-4">
        <div class="bg-white rounded-3xl max-w-sm w-full p-6 text-center shadow-2xl border border-slate-200">
            <div id="toast-icon" class="w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 flex items-center justify-center mx-auto text-xl mb-3">
                <i class="fa-solid fa-check"></i>
            </div>
            <h3 id="toast-title" class="font-bold text-slate-900 text-lg mb-1">Thông Báo</h3>
            <p id="toast-msg" class="text-xs text-slate-600 mb-6">Nội dung thông báo ở đây...</p>
            <button onclick="closeToast()" class="w-full bg-slate-900 hover:bg-slate-800 text-white text-xs font-bold py-2.5 rounded-xl transition-all">
                Đóng
            </button>
        </div>
    </div>

    <script>
        // Mock Tracking Database PTL
        const ptlDatabase = {
            "PTL889966CN": {
                code: "PTL889966CN",
                sender: "Xưởng Linh Kiện Điện Tử Thâm Quyến",
                receiver: "Trần Anh Quân (Hà Nội)",
                goods: "12 Thùng Cáp Sạc & Đồ Điện Tử (145kg - 0.6 m³)",
                status: "Đang giao tận nơi",
                statusClass: "text-amber-700 bg-amber-50 border-amber-200",
                steps: [
                    { time: "2026-08-01 10:15", title: "Nhập kho Quảng Châu PTL", desc: "Đã kiểm đếm, đóng khung gỗ bảo vệ & cân đo 145kg.", done: true },
                    { time: "2026-08-02 18:30", title: "Xuất kho di chuyển Cửa khẩu", desc: "Xếp lên xe tải chạy đêm đi Bằng Tường.", done: true },
                    { time: "2026-08-03 09:45", title: "Thông quan Hải quan Cửa khẩu Hữu Nghị", desc: "Hoàn tất thủ tục Hải quan xuất nhập khẩu.", done: true },
                    { time: "2026-08-03 21:10", title: "Nhập Kho Tổng Hà Nội PTL", desc: "Hàng đã hạ tải tại kho Triều Khúc, Thanh Trì.", done: true },
                    { time: "2026-08-04 08:30", title: "Đang giao hàng tận nhà", desc: "Shipper PTL đang trên đường giao đến địa chỉ nhận.", done: true, current: true }
                ]
            },
            "PTL552211CN": {
                code: "PTL552211CN",
                sender: "Nhà Máy Đồ Gia Dụng Phật Sơn",
                receiver: "Công Ty Thương Mại Sài Gòn (TP.HCM)",
                goods: "02 Pallet Nồi Chiên Không Dầu (320kg - 1.8 m³)",
                status: "Đã thông quan - Đang trung chuyển",
                statusClass: "text-blue-700 bg-blue-50 border-blue-200",
                steps: [
                    { time: "2026-08-02 11:00", title: "Nhập kho Bằng Tường PTL", desc: "Dán mã định vị Barcode PTL.", done: true },
                    { time: "2026-08-03 14:20", title: "Thông quan Hải quan Cửa khẩu", desc: "Thông quan tờ khai chính ngạch thành công.", done: true, current: true },
                    { time: "Dự kiến 2026-08-05", title: "Trung chuyển Kho TP.HCM", desc: "Xe container trung chuyển tuyến Nam.", done: false },
                    { time: "Dự kiến 2026-08-06", title: "Giao hàng & Nghiệm thu", desc: "Bàn giao tận kho khách hàng.", done: false }
                ]
            },
            "PTL991100CN": {
                code: "PTL991100CN",
                sender: "Xưởng Thời Trang Trang Phục Nghĩa Ô",
                receiver: "Lê Thu Hà (Đà Nẵng)",
                goods: "05 máy móc (45kg)",
                status: "Đã nhập Kho Nam Định",
                statusClass: "text-purple-700 bg-purple-50 border-purple-200",
                steps: [
                    { time: "2026-08-04 07:30", title: "Đã nhập Kho Quảng Châu PTL", desc: "Đã chụp ảnh thực tế kiện hàng & lưu kho an toàn.", done: true, current: true },
                    { time: "Chờ xuất kho", title: "Xếp xe ca đêm", desc: "Chuẩn bị lên xe chở ra cửa khẩu.", done: false },
                    { time: "Chờ thông quan", title: "Thông quan", desc: "Kê khai hàng hóa.", done: false }
                ]
            }
        };

        // Mobile menu toggle
        document.getElementById('mobile-menu-btn').addEventListener('click', function() {
            document.getElementById('mobile-menu').classList.toggle('hidden');
        });

        // Copy address logic
        function copyAddress(id) {
            const text = document.getElementById(id).innerText;
            const textToCopy = text.replace(/<br>/g, '\n');
            const dummy = document.createElement("textarea");
            document.body.appendChild(dummy);
            dummy.value = textToCopy;
            dummy.select();
            document.execCommand("copy");
            document.body.removeChild(dummy);
            showToast("Đã Copy Địa Chỉ!", "Đã copy thông tin kho tiếng Trung vào bộ nhớ tạm. Bạn có thể dán trực tiếp vào Taobao/1688.");
        }

        // Rate Calculation Engine
        function calculateRate() {
            const dest = document.getElementById('calc-dest').value;
            const type = document.querySelector('input[name="calc-type"]:checked').value;
            const weight = parseFloat(document.getElementById('calc-weight').value) || 0;
            const volume = parseFloat(document.getElementById('calc-volume').value) || 0;
            const isWooden = document.getElementById('calc-wooden-box').checked;
            const isInsurance = document.getElementById('calc-insurance').checked;

            let baseKg = 21000;
            let baseM3 = 2600000;

            if (dest === 'hcm') {
                baseKg += 4000;
                baseM3 += 400000;
            } else if (dest === 'danang') {
                baseKg += 2500;
                baseM3 += 250000;
            }

            if (type === 'rail') {
                baseKg *= 0.85;
                baseM3 *= 0.85;
            } else if (type === 'sea') {
                baseKg *= 0.65;
                baseM3 *= 0.65;
            }

            const totalByWeight = weight * baseKg;
            const totalByVolume = volume * baseM3;

            let mainFee = Math.max(totalByWeight, totalByVolume);
            let extraFee = 0;

            if (isWooden) extraFee += 150000;
            if (isInsurance) extraFee += mainFee * 0.02;

            const finalTotal = mainFee + extraFee;

            document.getElementById('res-weight-rate').innerText = Math.round(baseKg).toLocaleString('vi-VN') + " VNĐ / kg";
            document.getElementById('res-volume-rate').innerText = Math.round(baseM3).toLocaleString('vi-VN') + " VNĐ / m³";
            document.getElementById('res-extra-fee').innerText = Math.round(extraFee).toLocaleString('vi-VN') + " VNĐ";
            document.getElementById('res-total').innerText = Math.round(finalTotal).toLocaleString('vi-VN') + " VNĐ";
        }

        // Render Tracking Component
        function renderTrackingData(code) {
            const container = document.getElementById('tracking-result-container');
            const data = ptlDatabase[code.trim().toUpperCase()];

            if (!data) {
                container.innerHTML = `
                    <div class="text-center py-12">
                        <div class="w-16 h-16 bg-red-100 text-red-500 rounded-full flex items-center justify-center mx-auto text-2xl mb-4">
                            <i class="fa-solid fa-triangle-exclamation"></i>
                        </div>
                        <h4 class="font-bold text-slate-900 text-lg mb-1">Không tìm thấy mã đơn: <span class="font-mono text-red-600">${code}</span></h4>
                        <p class="text-xs text-slate-500 max-w-md mx-auto">Vui lòng kiểm tra lại chính xác ký tự mã vận đơn PTL (VD: PTL889966CN) hoặc liên hệ Hotline 033.69.35.222 để hỗ trợ.</p>
                    </div>
                `;
                return;
            }

            let timelineHtml = '';
            data.steps.forEach((step, idx) => {
                const isLast = idx === data.steps.length - 1;
                timelineHtml += `
                    <div class="relative flex gap-4 pb-8 ${isLast ? '' : 'before:absolute before:left-3.5 before:top-8 before:bottom-0 before:w-0.5 ' + (step.done ? 'before:bg-emerald-500' : 'before:bg-slate-200')}">
                        <div class="w-7 h-7 rounded-full flex items-center justify-center text-xs shrink-0 z-10 ${
                            step.current ? 'bg-brand-orange text-white ring-4 ring-orange-100 font-bold animate-pulse' :
                            step.done ? 'bg-emerald-500 text-white' : 'bg-slate-200 text-slate-400'
                        }">
                            <i class="fa-solid ${step.done ? 'fa-check' : 'fa-clock'}"></i>
                        </div>
                        <div class="flex-grow">
                            <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-1">
                                <h5 class="font-bold text-slate-900 text-sm">${step.title}</h5>
                                <span class="text-[11px] font-mono text-slate-400">${step.time}</span>
                            </div>
                            <p class="text-xs text-slate-600 mt-1">${step.desc}</p>
                        </div>
                    </div>
                `;
            });

            container.innerHTML = `
                <div>
                    <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-6 border-b border-slate-200 mb-6">
                        <div>
                            <span class="text-xs text-slate-400 uppercase font-bold tracking-wider">Mã Vận Đơn PTL</span>
                            <h3 class="text-2xl font-black font-mono text-slate-900">${data.code}</h3>
                        </div>
                        <div>
                            <span class="inline-block px-3.5 py-1.5 rounded-full text-xs font-bold border ${data.statusClass}">
                                <i class="fa-solid fa-circle-dot mr-1 text-[10px]"></i> ${data.status}
                            </span>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4 p-4 bg-slate-50 rounded-2xl border border-slate-200 text-xs mb-8">
                        <div>
                            <span class="text-slate-400 block">Nơi gửi:</span>
                            <span class="font-bold text-slate-800">${data.sender}</span>
                        </div>
                        <div>
                            <span class="text-slate-400 block">Người nhận:</span>
                            <span class="font-bold text-slate-800">${data.receiver}</span>
                        </div>
                        <div>
                            <span class="text-slate-400 block">Chi tiết kiện:</span>
                            <span class="font-bold text-slate-800">${data.goods}</span>
                        </div>
                    </div>

                    <div>
                        <h4 class="font-bold text-slate-900 text-sm uppercase tracking-wider mb-6">Nhật Ký Hành Trình PTL</h4>
                        <div class="pl-2">
                            ${timelineHtml}
                        </div>
                    </div>
                </div>
            `;
        }

        function handleQuickTrack(e) {
            e.preventDefault();
            const val = document.getElementById('hero-track-input').value;
            if (!val) return;
            document.getElementById('main-track-input').value = val;
            renderTrackingData(val);
            document.getElementById('tracking').scrollIntoView({ behavior: 'smooth' });
        }

        function handleMainTrack(e) {
            e.preventDefault();
            const val = document.getElementById('main-track-input').value;
            renderTrackingData(val);
        }

        function setTrackCode(code) {
            document.getElementById('main-track-input').value = code;
            renderTrackingData(code);
            document.getElementById('tracking').scrollIntoView({ behavior: 'smooth' });
        }

        function clearTrackInput() {
            document.getElementById('main-track-input').value = '';
        }

        // Modal and Toast Logic
        function toggleConverterModal() {
            document.getElementById('converter-modal').classList.toggle('hidden');
        }

        function convertCurrency() {
            const rmb = parseFloat(document.getElementById('rmb-input').value) || 0;
            const rate = parseFloat(document.getElementById('rate-input').value) || 3620;
            const totalVnd = rmb * rate;
            document.getElementById('converted-vnd').innerText = Math.round(totalVnd).toLocaleString('vi-VN') + " VNĐ";
        }

        function showToast(title, msg) {
            document.getElementById('toast-title').innerText = title;
            document.getElementById('toast-msg').innerText = msg;
            document.getElementById('toast-modal').classList.remove('hidden');
        }

        function closeToast() {
            document.getElementById('toast-modal').classList.add('hidden');
        }

        function handleContactSubmit(e) {
            e.preventDefault();
            showToast("Gửi Yêu Cầu Thành Công!", "Cảm ơn bạn! Chuyên viên tư vấn PTL Logistics sẽ liên hệ báo giá qua Zalo/Hotline trong vòng 5 phút.");
            e.target.reset();
        }

        // Initial setup
        window.onload = function() {
            calculateRate();
            convertCurrency();
            renderTrackingData('PTL889966CN');
        };
    </script>
</body>
</html>
