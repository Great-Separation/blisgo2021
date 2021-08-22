var CACHE_NAME = 'blisgo-cache';
var urlsToCache = [
       '/',
       '/index.html',
       '/community.html',
       '/dictionary.html',
       '/errorHandler.html',
       '/faq.html',
       '/introduce.html',
       '/login.html',
       '/mypage.html',
       '/offline.html',
       '/product.html',
       '/qrlogin.html',
       '/register.html',
       '/verify.html',
       '/write.html'
];

self.addEventListener('install', function(event) {
  // Perform install steps
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(function(cache) {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
  );
});

self.addEventListener('fetch', function(event) {
    if (event.request.mode !== 'navigate') { // page navigation 제외
        return;
    }
    event.respondWith(
        fetch(event.request)
            .catch(() => {
                return caches.open(CACHE_NAME)
                    .then((cache) => cache.match('offline'));
            }))
});

self.addEventListener('activate', function(event) {

  var cacheAllowlist = ['blisgo-cache'];

  event.waitUntil(
    caches.keys().then(function(cacheNames) {
      return Promise.all(
        cacheNames.map(function(cacheName) {
          if (cacheAllowlist.indexOf(cacheName) === -1) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});