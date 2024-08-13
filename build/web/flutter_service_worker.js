'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "6e27df74a2407c026c94e521d54b1bc0",
"assets/AssetManifest.bin.json": "0a5f1871c4e0da52b92bfc4516d88abd",
"assets/AssetManifest.json": "8a9dd5ca631a3cb5a5b109161e6269b7",
"assets/assets/3dprinter.jpg": "250a75ab81668d178f6320945fe01151",
"assets/assets/3dprinting/image1.jpg": "d026714a50517610c8fb93239df0d4ec",
"assets/assets/3dprinting/image2.jpg": "07052ea0e2c234d7c034924b9e396beb",
"assets/assets/3dprinting/image3.jpg": "b31f7e2f76ead62a4a2540180ee9292b",
"assets/assets/3dprinting/image4.jpg": "014e9ec99499e593b135706877e13f70",
"assets/assets/3dprinting/image5.jpg": "415e8d7e3078d03579f5bbec7b69e6dc",
"assets/assets/3dprinting/image6.jpg": "aa66099008c515a40a904f675cf944ce",
"assets/assets/architectural/image1.jpg": "b4014f4abdcfa96a31fdded120fe1b64",
"assets/assets/architectural/image2.jpg": "924a09669a9151bc87d756ecc6f6505d",
"assets/assets/architectural/image3.jpg": "c4b8511b5bccc69de4fba5939480b68a",
"assets/assets/architectural/image4.jpg": "5c5a6e0e7263bd7e2d2ef50534acc4e0",
"assets/assets/architectural/image5.jpg": "27289b7e5588520cdd16064e31777db7",
"assets/assets/architectural/image6.jpg": "54b3503d241da2ca0ee60256264c6b5d",
"assets/assets/automation.png": "c8896f19053fdf6f3b679e377057cccc",
"assets/assets/clients/autoaxles.png": "9dac8d6654087c0baecae687dcd8352f",
"assets/assets/clients/cftri.jpeg": "74eacb52dc0c49052dc893be6dbbca1e",
"assets/assets/clients/hul.png": "7d62d3dd4d580ab81eaa6a48d7f37aaf",
"assets/assets/clients/itc1.png": "85d19ab29fe86cdf07edb371ce51abc0",
"assets/assets/clients/nie.jpeg": "391178a96d963d5459a2498ec7a45d69",
"assets/assets/clients/p5.png": "1a211793d80fff5c3b96d6e23c6293e1",
"assets/assets/clients/picture1.png": "91d5fb9d6fa50ee98850c355432843da",
"assets/assets/clients/picture2.jpg": "7dfda27b6b540b65e9d68b9f8ab1c58a",
"assets/assets/clients/picture3.jpg": "1924e09839d0ea2b0f83dd8a9ad03fe0",
"assets/assets/clients/picture4.jpg": "908195e51722977917118faf6feaf0b5",
"assets/assets/clients/picture5.jpg": "fb59902939a86e0f8adcd2efb981b4ad",
"assets/assets/completed3dprinting.jpg": "38187b1961da431b9a92f23820d31b42",
"assets/assets/concept.png": "ed8e52a3915eda3d4a5d5e4162f866a7",
"assets/assets/designing.jpg": "b6d1fa631d9ae83337ddaf38e0e97706",
"assets/assets/fabrication/image1.jpg": "4b347bf3d52037f817677f8cdfe185de",
"assets/assets/fabrication/image2.jpg": "9b8a2f5189bf59282193c631f074b115",
"assets/assets/fabrication/image3.jpg": "d45f8af4c84d8f5f0ca8853ff69ca250",
"assets/assets/fabrication/image4.jpg": "78ffdeb889935072c70e6c196dd0569d",
"assets/assets/fabrication/image5.jpg": "8321b5169dd34ec00cd994dcd271c095",
"assets/assets/fabrication/image6.jpg": "c7d570e813e53ad55f7b40ce4aac38c5",
"assets/assets/fabrication.jpg": "a7c3a0c09abfcf42efe6c95d709d7712",
"assets/assets/fabrication.png": "286777a483533448515d5f5dcaab7291",
"assets/assets/iot.jpg": "dd1f94dbf56e25133d2ca71900de53da",
"assets/assets/logo.jpeg": "b1c822ec9c7435528b2e7b910591f21b",
"assets/assets/logo.svg": "caf36b066e705d355a21840d6bc3f3a1",
"assets/assets/parallax/image1.png": "5ec39e7209ce536874823c77bb644e08",
"assets/assets/parallax/image2.png": "c3ddd80f1ad45da059d2e581afa6c2f8",
"assets/assets/parallax/image3.png": "2cf153ff092da224b77ee504198ffa05",
"assets/assets/parallax/image4.png": "4b199760145cecaf0129293b0de3aab7",
"assets/assets/parallax/image5.png": "ae92882ecf8bad640fe3f9ab8e21fab2",
"assets/assets/parallax/pimage1.png": "2b5ddb93d1d9f0e9ecc28688ed6216f4",
"assets/assets/parallax/pimage2.png": "70e71988e9b9ce1e71b72819fc26a6dc",
"assets/assets/parallax/pimage3.png": "f24d2a929c74db3338c1a63f5ad456c3",
"assets/assets/parallax/pimage4.png": "e1eac9c505b989aeecc9c23544b12119",
"assets/assets/parallax/pimage5.png": "cc43cb71fb3a76a19c05760234ee9d16",
"assets/assets/persondesigning.jpg": "dc67581a05511c3b772310181a048ef6",
"assets/FontManifest.json": "313434580954ac01b7b66dd20553f68f",
"assets/fonts/Lato/Lato-Regular.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/fonts/MaterialIcons-Regular.otf": "dbff3a864f390b096df91182b8af7f71",
"assets/fonts/Playfair_Display/PlayfairDisplay-Italic-VariableFont_wght.ttf": "c6bd3951c4797106c1dac753a795534a",
"assets/fonts/Playfair_Display/PlayfairDisplay-VariableFont_wght.ttf": "5c26cb0a6cef324c460754822591bd93",
"assets/fonts/Playfair_Display/static/PlayfairDisplay-Bold.ttf": "9b38798112efb7cf6eca1de031cec4ca",
"assets/NOTICES": "04695c85b3609df77358016a232d1449",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttericon/lib/fonts/Brandico.ttf": "791921e9b25210e2551b6eda3f86c733",
"assets/packages/fluttericon/lib/fonts/Elusive.ttf": "23f24df0388819e94db2b3c19841841c",
"assets/packages/fluttericon/lib/fonts/Entypo.ttf": "58edfaf27b1032ea4778b69297c02b5a",
"assets/packages/fluttericon/lib/fonts/FontAwesome.ttf": "f4129dc4687db3424426f77209eeda56",
"assets/packages/fluttericon/lib/fonts/FontAwesome5.ttf": "221b27a41202ddd33990e299939e4504",
"assets/packages/fluttericon/lib/fonts/Fontelico.ttf": "3a1e1cecf0a3eae6be5cba3677379ba2",
"assets/packages/fluttericon/lib/fonts/Iconic.ttf": "34e12214307f5f7cf7bc62086fbf55a3",
"assets/packages/fluttericon/lib/fonts/LineariconsFree.ttf": "276b1d61e45eb9b2dde9482545d9e3ac",
"assets/packages/fluttericon/lib/fonts/Linecons.ttf": "2d0ac407ed11860bf470cb01745fb144",
"assets/packages/fluttericon/lib/fonts/Maki.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/Meteocons.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/MfgLabs.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/ModernPictograms.ttf": "5046c536516be5b91c15eb7795e0352d",
"assets/packages/fluttericon/lib/fonts/Octicons.ttf": "7242d2fe9e36eb4193d2bc7e521779bf",
"assets/packages/fluttericon/lib/fonts/RpgAwesome.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/Typicons.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/WebSymbols.ttf": "3309aa9bff972b4d6494c2de3cd984e5",
"assets/packages/fluttericon/lib/fonts/Zocial.ttf": "c29d6e34d8f703a745c6f18d94ce316d",
"assets/packages/image_collage_widget/assets/icons/permission_denied.png": "b241f186e683e91a1c69285378f088de",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "73db468163d82d90562a3f2492006858",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "17a38750679163d9975ebcd1bf0fbb98",
"/": "17a38750679163d9975ebcd1bf0fbb98",
"main.dart.js": "65e3c4dd9f52ef048eaa767963eeace3",
"manifest.json": "a559e95d56630ebd9d190f106a4439b6",
"version.json": "7d3d7bb84d7384966672d5e282f583db"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
