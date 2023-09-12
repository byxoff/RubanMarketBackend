import 'package:angel3_framework/angel3_framework.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'src/models/user_model.dart';
import 'src/models/product_model.dart';
import 'src/models/auth_model.dart';
import 'src/models/shop_model.dart';
import 'src/models/chat_model.dart';
import 'src/models/blocked_users_model.dart';
import 'src/models/sales_model.dart';
import 'src/models/purchases_model.dart';
import 'src/models/review_model.dart';
import 'src/models/favorites_model.dart';
import 'src/models/cart_model.dart';
import 'src/models/payment_model.dart';
import 'src/models/company_model.dart';
import 'src/models/seller_model.dart';
import 'src/models/category_model.dart';
import 'src/models/subcategory_model.dart';
import 'src/models/specification_model.dart';
import 'src/models/checkout_model.dart';

void configureServer(Angel app) async {
  // Создание подключения к базе данных MongoDB
  final db = await mongo.Db.create('mongodb://localhost:27017/my_database');
  await db.open();

  // Создание коллекций для всех моделей данных
  final users = db.collection('users');
  final products = db.collection('products');
  final auth = db.collection('auth');
  final shops = db.collection('shops');
  final chats = db.collection('chats');
  final blockedUsers = db.collection('blocked_users');
  final sales = db.collection('sales');
  final purchases = db.collection('purchases');
  final reviews = db.collection('reviews');
  final favorites = db.collection('favorites');
  final cart = db.collection('cart');
  final payments = db.collection('payments');
  final companies = db.collection('companies');
  final sellers = db.collection('sellers');
  final categories = db.collection('categories');
  final subcategories = db.collection('subcategories');
  final specifications = db.collection('specifications');
  final checkouts = db.collection('checkouts');

  // Создание сериализаторов для всех моделей данных
  final userSerializer = UserSerializer();
  final productSerializer = ProductSerializer();
  final authSerializer = AuthSerializer();
  final shopSerializer = ShopSerializer();
  final chatSerializer = ChatSerializer();
  final blockedUsersSerializer = BlockedUsersSerializer();
  final salesSerializer = SalesSerializer();
  final purchasesSerializer = PurchasesSerializer();
  final reviewSerializer = ReviewSerializer();
  final favoritesSerializer = FavoritesSerializer();
  final cartSerializer = CartSerializer();
  final paymentSerializer = PaymentSerializer();
  final companySerializer = CompanySerializer();
  final sellerSerializer = SellerSerializer();
  final categorySerializer = CategorySerializer();
  final subcategorySerializer = SubcategorySerializer();
  final specificationSerializer = SpecificationSerializer();
  final checkoutSerializer = CheckoutSerializer();

  // Создание маршрутов для всех моделей данных
  app
    ..serializer
      ..map(User, UserSerializer())
      ..map(Product, ProductSerializer())
      ..map(Auth, AuthSerializer())
      ..map(Shop, ShopSerializer())
      ..map(Chat, ChatSerializer())
      ..map(BlockedUsers, BlockedUsersSerializer())
      ..map(Sales, SalesSerializer())
      ..map(Purchases, PurchasesSerializer())
      ..map(Review, ReviewSerializer())
      ..map(Favorites, FavoritesSerializer())
      ..map(Cart, CartSerializer())
      ..map(Payment, PaymentSerializer())
      ..map(Company, CompanySerializer())
      ..map(Seller, SellerSerializer())
      ..map(Category, CategorySerializer())
      ..map(Subcategory, SubcategorySerializer())
      ..map(Specification, SpecificationSerializer())
      ..map(Checkout, CheckoutSerializer())
    ..group('/api', (router) {
      router.get('/auth', (req, res) async {
    final authList = await auth.find().toList();
    return authList.map((data) => authSerializer.fromMap(data)).toList();
});

router.post('/auth', (req, res) async {
    final authMap = req.body as Map<String, dynamic>;
    await auth.insert(authMap);
    return authSerializer.fromMap(authMap);
});

router.get('/auth/:id', (req, res) async {
    final authId = req.params['id'];
    final data = await auth.findOne(mongo.where.id(mongo.ObjectId.fromHexString(authId)));
    if (data != null) {
        return authSerializer.fromMap(data);
    } else {
        throw AngelHttpException.notFound(message: 'Auth data not found');
    }
});

router.put('/auth/:id', (req, res) async {
    final authId = req.params['id'];
    final updatedData = req.body as Map<String, dynamic>;
    final result = await auth.update(
        mongo.where.id(mongo.ObjectId.fromHexString(authId)),
        updatedData
    );
    if (result['nModified'] > 0) {
        return authSerializer.fromMap(updatedData);
    } else {
        throw AngelHttpException.notFound(message: 'Auth data not found');
    }
});

router.delete('/auth/:id', (req, res) async {
    final authId = req.params['id'];
    final result = await auth.remove(mongo.where.id(mongo.ObjectId.fromHexString(authId)));
    if (result['n'] > 0) {
        return {'message': 'Auth data deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Auth data not found');
    }
});

router.get('/products', (req, res) async {
    final productList = await products.find().toList();
    return productList.map((data) => productSerializer.fromMap(data)).toList();
});

router.post('/products', (req, res) async {
    final productMap = req.body as Map<String, dynamic>;
    await products.insert(productMap);
    return productSerializer.fromMap(productMap);
});

router.get('/products/:id', (req, res) async {
    final productId = req.params['id'];
    final product = await products.findOne(mongo.where.id(mongo.ObjectId.fromHexString(productId)));
    if (product != null) {
        return productSerializer.fromMap(product);
    } else {
        throw AngelHttpException.notFound(message: 'Product not found');
    }
});

router.put('/products/:id', (req, res) async {
    final productId = req.params['id'];
    final updatedProductData = req.body as Map<String, dynamic>;
    final result = await products.update(
        mongo.where.id(mongo.ObjectId.fromHexString(productId)),
        updatedProductData
    );
    if (result['nModified'] > 0) {
        return productSerializer.fromMap(updatedProductData);
    } else {
        throw AngelHttpException.notFound(message: 'Product not found');
    }
});

router.delete('/products/:id', (req, res) async {
    final productId = req.params['id'];
    final result = await products.remove(mongo.where.id(mongo.ObjectId.fromHexString(productId)));
    if (result['n'] > 0) {
        return {'message': 'Product deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Product not found');
    }
});

router.get('/shops', (req, res) async {
    final shopList = await shops.find().toList();
    return shopList.map((data) => shopSerializer.fromMap(data)).toList();
});

router.post('/shops', (req, res) async {
    final shopMap = req.body as Map<String, dynamic>;
    await shops.insert(shopMap);
    return shopSerializer.fromMap(shopMap);
});

router.get('/shops/:id', (req, res) async {
    final shopId = req.params['id'];
    final shop = await shops.findOne(mongo.where.id(mongo.ObjectId.fromHexString(shopId)));
    if (shop != null) {
        return shopSerializer.fromMap(shop);
    } else {
        throw AngelHttpException.notFound(message: 'Shop not found');
    }
});

router.put('/shops/:id', (req, res) async {
    final shopId = req.params['id'];
    final updatedShopData = req.body as Map<String, dynamic>;
    final result = await shops.update(
        mongo.where.id(mongo.ObjectId.fromHexString(shopId)),
        updatedShopData
    );
    if (result['nModified'] > 0) {
        return shopSerializer.fromMap(updatedShopData);
    } else {
        throw AngelHttpException.notFound(message: 'Shop not found');
    }
});

router.delete('/shops/:id', (req, res) async {
    final shopId = req.params['id'];
    final result = await shops.remove(mongo.where.id(mongo.ObjectId.fromHexString(shopId)));
    if (result['n'] > 0) {
        return {'message': 'Shop deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Shop not found');
    }
});

router.get('/chats', (req, res) async {
    final chatList = await chats.find().toList();
    return chatList.map((data) => chatSerializer.fromMap(data)).toList();
});

router.post('/chats', (req, res) async {
    final chatMap = req.body as Map<String, dynamic>;
    await chats.insert(chatMap);
    return chatSerializer.fromMap(chatMap);
});

router.get('/chats/:id', (req, res) async {
    final chatId = req.params['id'];
    final chat = await chats.findOne(mongo.where.id(mongo.ObjectId.fromHexString(chatId)));
    if (chat != null) {
        return chatSerializer.fromMap(chat);
    } else {
        throw AngelHttpException.notFound(message: 'Chat not found');
    }
});

router.put('/chats/:id', (req, res) async {
    final chatId = req.params['id'];
    final updatedChatData = req.body as Map<String, dynamic>;
    final result = await chats.update(
        mongo.where.id(mongo.ObjectId.fromHexString(chatId)),
        updatedChatData
    );
    if (result['nModified'] > 0) {
        return chatSerializer.fromMap(updatedChatData);
    } else {
        throw AngelHttpException.notFound(message: 'Chat not found');
    }
});

router.delete('/chats/:id', (req, res) async {
    final chatId = req.params['id'];
    final result = await chats.remove(mongo.where.id(mongo.ObjectId.fromHexString(chatId)));
    if (result['n'] > 0) {
        return {'message': 'Chat deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Chat not found');
    }
});

router.get('/blocked_users', (req, res) async {
    final blockedUsersList = await blockedUsers.find().toList();
    return blockedUsersList.map((data) => blockedUsersSerializer.fromMap(data)).toList();
});

router.post('/blocked_users', (req, res) async {
    final blockedUserMap = req.body as Map<String, dynamic>;
    await blockedUsers.insert(blockedUserMap);
    return blockedUsersSerializer.fromMap(blockedUserMap);
});

router.get('/blocked_users/:id', (req, res) async {
    final blockedUserId = req.params['id'];
    final blockedUser = await blockedUsers.findOne(mongo.where.id(mongo.ObjectId.fromHexString(blockedUserId)));
    if (blockedUser != null) {
        return blockedUsersSerializer.fromMap(blockedUser);
    } else {
        throw AngelHttpException.notFound(message: 'Blocked user not found');
    }
});

router.put('/blocked_users/:id', (req, res) async {
    final blockedUserId = req.params['id'];
    final updatedBlockedUserData = req.body as Map<String, dynamic>;
    final result = await blockedUsers.update(
        mongo.where.id(mongo.ObjectId.fromHexString(blockedUserId)),
        updatedBlockedUserData
    );
    if (result['nModified'] > 0) {
        return blockedUsersSerializer.fromMap(updatedBlockedUserData);
    } else {
        throw AngelHttpException.notFound(message: 'Blocked user not found');
    }
});

router.delete('/blocked_users/:id', (req, res) async {
    final blockedUserId = req.params['id'];
    final result = await blockedUsers.remove(mongo.where.id(mongo.ObjectId.fromHexString(blockedUserId)));
    if (result['n'] > 0) {
        return {'message': 'Blocked user deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Blocked user not found');
    }
});

router.get('/sales', (req, res) async {
    final salesList = await sales.find().toList();
    return salesList.map((data) => salesSerializer.fromMap(data)).toList();
});

router.post('/sales', (req, res) async {
    final saleMap = req.body as Map<String, dynamic>;
    await sales.insert(saleMap);
    return salesSerializer.fromMap(saleMap);
});

router.get('/sales/:id', (req, res) async {
    final saleId = req.params['id'];
    final sale = await sales.findOne(mongo.where.id(mongo.ObjectId.fromHexString(saleId)));
    if (sale != null) {
        return salesSerializer.fromMap(sale);
    } else {
        throw AngelHttpException.notFound(message: 'Sale not found');
    }
});

router.put('/sales/:id', (req, res) async {
    final saleId = req.params['id'];
    final updatedSaleData = req.body as Map<String, dynamic>;
    final result = await sales.update(
        mongo.where.id(mongo.ObjectId.fromHexString(saleId)),
        updatedSaleData
    );
    if (result['nModified'] > 0) {
        return salesSerializer.fromMap(updatedSaleData);
    } else {
        throw AngelHttpException.notFound(message: 'Sale not found');
    }
});

router.delete('/sales/:id', (req, res) async {
    final saleId = req.params['id'];
    final result = await sales.remove(mongo.where.id(mongo.ObjectId.fromHexString(saleId)));
    if (result['n'] > 0) {
        return {'message': 'Sale deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Sale not found');
    }
});

router.get('/purchases', (req, res) async {
    final purchasesList = await purchases.find().toList();
    return purchasesList.map((data) => purchasesSerializer.fromMap(data)).toList();
});

router.post('/purchases', (req, res) async {
    final purchaseMap = req.body as Map<String, dynamic>;
    await purchases.insert(purchaseMap);
    return purchasesSerializer.fromMap(purchaseMap);
});

router.get('/purchases/:id', (req, res) async {
    final purchaseId = req.params['id'];
    final purchase = await purchases.findOne(mongo.where.id(mongo.ObjectId.fromHexString(purchaseId)));
    if (purchase != null) {
        return purchasesSerializer.fromMap(purchase);
    } else {
        throw AngelHttpException.notFound(message: 'Purchase not found');
    }
});

router.put('/purchases/:id', (req, res) async {
    final purchaseId = req.params['id'];
    final updatedPurchaseData = req.body as Map<String, dynamic>;
    final result = await purchases.update(
        mongo.where.id(mongo.ObjectId.fromHexString(purchaseId)),
        updatedPurchaseData
    );
    if (result['nModified'] > 0) {
        return purchasesSerializer.fromMap(updatedPurchaseData);
    } else {
        throw AngelHttpException.notFound(message: 'Purchase not found');
    }
});

router.delete('/purchases/:id', (req, res) async {
    final purchaseId = req.params['id'];
    final result = await purchases.remove(mongo.where.id(mongo.ObjectId.fromHexString(purchaseId)));
    if (result['n'] > 0) {
        return {'message': 'Purchase deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Purchase not found');
    }
});

router.get('/reviews', (req, res) async {
    final reviewsList = await reviews.find().toList();
    return reviewsList.map((data) => reviewSerializer.fromMap(data)).toList();
});

router.post('/reviews', (req, res) async {
    final reviewMap = req.body as Map<String, dynamic>;
    await reviews.insert(reviewMap);
    return reviewSerializer.fromMap(reviewMap);
});

router.get('/reviews/:id', (req, res) async {
    final reviewId = req.params['id'];
    final review = await reviews.findOne(mongo.where.id(mongo.ObjectId.fromHexString(reviewId)));
    if (review != null) {
        return reviewSerializer.fromMap(review);
    } else {
        throw AngelHttpException.notFound(message: 'Review not found');
    }
});

router.put('/reviews/:id', (req, res) async {
    final reviewId = req.params['id'];
    final updatedReviewData = req.body as Map<String, dynamic>;
    final result = await reviews.update(
        mongo.where.id(mongo.ObjectId.fromHexString(reviewId)),
        updatedReviewData
    );
    if (result['nModified'] > 0) {
        return reviewSerializer.fromMap(updatedReviewData);
    } else {
        throw AngelHttpException.notFound(message: 'Review not found');
    }
});

router.delete('/reviews/:id', (req, res) async {
    final reviewId = req.params['id'];
    final result = await reviews.remove(mongo.where.id(mongo.ObjectId.fromHexString(reviewId)));
    if (result['n'] > 0) {
        return {'message': 'Review deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Review not found');
    }
});

router.get('/favorites', (req, res) async {
    final favoritesList = await favorites.find().toList();
    return favoritesList.map((data) => favoritesSerializer.fromMap(data)).toList();
});

router.post('/favorites', (req, res) async {
    final favoriteMap = req.body as Map<String, dynamic>;
    await favorites.insert(favoriteMap);
    return favoritesSerializer.fromMap(favoriteMap);
});

router.get('/favorites/:id', (req, res) async {
    final favoriteId = req.params['id'];
    final favorite = await favorites.findOne(mongo.where.id(mongo.ObjectId.fromHexString(favoriteId)));
    if (favorite != null) {
        return favoritesSerializer.fromMap(favorite);
    } else {
        throw AngelHttpException.notFound(message: 'Favorite not found');
    }
});

router.put('/favorites/:id', (req, res) async {
    final favoriteId = req.params['id'];
    final updatedFavoriteData = req.body as Map<String, dynamic>;
    final result = await favorites.update(
        mongo.where.id(mongo.ObjectId.fromHexString(favoriteId)),
        updatedFavoriteData
    );
    if (result['nModified'] > 0) {
        return favoritesSerializer.fromMap(updatedFavoriteData);
    } else {
        throw AngelHttpException.notFound(message: 'Favorite not found');
    }
});

router.delete('/favorites/:id', (req, res) async {
    final favoriteId = req.params['id'];
    final result = await favorites.remove(mongo.where.id(mongo.ObjectId.fromHexString(favoriteId)));
    if (result['n'] > 0) {
        return {'message': 'Favorite deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Favorite not found');
    }
});

router.get('/cart', (req, res) async {
    final cartList = await cart.find().toList();
    return cartList.map((data) => cartSerializer.fromMap(data)).toList();
});

router.post('/cart', (req, res) async {
    final cartMap = req.body as Map<String, dynamic>;
    await cart.insert(cartMap);
    return cartSerializer.fromMap(cartMap);
});

router.get('/cart/:id', (req, res) async {
    final cartId = req.params['id'];
    final cartItem = await cart.findOne(mongo.where.id(mongo.ObjectId.fromHexString(cartId)));
    if (cartItem != null) {
        return cartSerializer.fromMap(cartItem);
    } else {
        throw AngelHttpException.notFound(message: 'Cart item not found');
    }
});

router.put('/cart/:id', (req, res) async {
    final cartId = req.params['id'];
    final updatedCartData = req.body as Map<String, dynamic>;
    final result = await cart.update(
        mongo.where.id(mongo.ObjectId.fromHexString(cartId)),
        updatedCartData
    );
    if (result['nModified'] > 0) {
        return cartSerializer.fromMap(updatedCartData);
    } else {
        throw AngelHttpException.notFound(message: 'Cart item not found');
    }
});

router.delete('/cart/:id', (req, res) async {
    final cartId = req.params['id'];
    final result = await cart.remove(mongo.where.id(mongo.ObjectId.fromHexString(cartId)));
    if (result['n'] > 0) {
        return {'message': 'Cart item deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Cart item not found');
    }
});

router.get('/payments', (req, res) async {
    final paymentsList = await payments.find().toList();
    return paymentsList.map((data) => paymentSerializer.fromMap(data)).toList();
});

router.post('/payments', (req, res) async {
    final paymentMap = req.body as Map<String, dynamic>;
    await payments.insert(paymentMap);
    return paymentSerializer.fromMap(paymentMap);
});

router.get('/payments/:id', (req, res) async {
    final paymentId = req.params['id'];
    final payment = await payments.findOne(mongo.where.id(mongo.ObjectId.fromHexString(paymentId)));
    if (payment != null) {
        return paymentSerializer.fromMap(payment);
    } else {
        throw AngelHttpException.notFound(message: 'Payment not found');
    }
});

router.put('/payments/:id', (req, res) async {
    final paymentId = req.params['id'];
    final updatedPaymentData = req.body as Map<String, dynamic>;
    final result = await payments.update(
        mongo.where.id(mongo.ObjectId.fromHexString(paymentId)),
        updatedPaymentData
    );
    if (result['nModified'] > 0) {
        return paymentSerializer.fromMap(updatedPaymentData);
    } else {
        throw AngelHttpException.notFound(message: 'Payment not found');
    }
});

router.delete('/payments/:id', (req, res) async {
    final paymentId = req.params['id'];
    final result = await payments.remove(mongo.where.id(mongo.ObjectId.fromHexString(paymentId)));
    if (result['n'] > 0) {
        return {'message': 'Payment deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Payment not found');
    }
});

router.get('/companies', (req, res) async {
    final companiesList = await companies.find().toList();
    return companiesList.map((data) => companySerializer.fromMap(data)).toList();
});

router.post('/companies', (req, res) async {
    final companyMap = req.body as Map<String, dynamic>;
    await companies.insert(companyMap);
    return companySerializer.fromMap(companyMap);
});

router.get('/companies/:id', (req, res) async {
    final companyId = req.params['id'];
    final company = await companies.findOne(mongo.where.id(mongo.ObjectId.fromHexString(companyId)));
    if (company != null) {
        return companySerializer.fromMap(company);
    } else {
        throw AngelHttpException.notFound(message: 'Company not found');
    }
});

router.put('/companies/:id', (req, res) async {
    final companyId = req.params['id'];
    final updatedCompanyData = req.body as Map<String, dynamic>;
    final result = await companies.update(
        mongo.where.id(mongo.ObjectId.fromHexString(companyId)),
        updatedCompanyData
    );
    if (result['nModified'] > 0) {
        return companySerializer.fromMap(updatedCompanyData);
    } else {
        throw AngelHttpException.notFound(message: 'Company not found');
    }
});

router.delete('/companies/:id', (req, res) async {
    final companyId = req.params['id'];
    final result = await companies.remove(mongo.where.id(mongo.ObjectId.fromHexString(companyId)));
    if (result['n'] > 0) {
        return {'message': 'Company deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Company not found');
    }
});

router.get('/sellers', (req, res) async {
    final sellersList = await sellers.find().toList();
    return sellersList.map((data) => sellerSerializer.fromMap(data)).toList();
});

router.post('/sellers', (req, res) async {
    final sellerMap = req.body as Map<String, dynamic>;
    await sellers.insert(sellerMap);
    return sellerSerializer.fromMap(sellerMap);
});

router.get('/sellers/:id', (req, res) async {
    final sellerId = req.params['id'];
    final seller = await sellers.findOne(mongo.where.id(mongo.ObjectId.fromHexString(sellerId)));
    if (seller != null) {
        return sellerSerializer.fromMap(seller);
    } else {
        throw AngelHttpException.notFound(message: 'Seller not found');
    }
});

router.put('/sellers/:id', (req, res) async {
    final sellerId = req.params['id'];
    final updatedSellerData = req.body as Map<String, dynamic>;
    final result = await sellers.update(
        mongo.where.id(mongo.ObjectId.fromHexString(sellerId)),
        updatedSellerData
    );
    if (result['nModified'] > 0) {
        return sellerSerializer.fromMap(updatedSellerData);
    } else {
        throw AngelHttpException.notFound(message: 'Seller not found');
    }
});

router.delete('/sellers/:id', (req, res) async {
    final sellerId = req.params['id'];
    final result = await sellers.remove(mongo.where.id(mongo.ObjectId.fromHexString(sellerId)));
    if (result['n'] > 0) {
        return {'message': 'Seller deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Seller not found');
    }
});

router.get('/categories', (req, res) async {
    final categoriesList = await categories.find().toList();
    return categoriesList.map((data) => categorySerializer.fromMap(data)).toList();
});

router.post('/categories', (req, res) async {
    final categoryMap = req.body as Map<String, dynamic>;
    await categories.insert(categoryMap);
    return categorySerializer.fromMap(categoryMap);
});

router.get('/categories/:id', (req, res) async {
    final categoryId = req.params['id'];
    final category = await categories.findOne(mongo.where.id(mongo.ObjectId.fromHexString(categoryId)));
    if (category != null) {
        return categorySerializer.fromMap(category);
    } else {
        throw AngelHttpException.notFound(message: 'Category not found');
    }
});

router.put('/categories/:id', (req, res) async {
    final categoryId = req.params['id'];
    final updatedCategoryData = req.body as Map<String, dynamic>;
    final result = await categories.update(
        mongo.where.id(mongo.ObjectId.fromHexString(categoryId)),
        updatedCategoryData
    );
    if (result['nModified'] > 0) {
        return categorySerializer.fromMap(updatedCategoryData);
    } else {
        throw AngelHttpException.notFound(message: 'Category not found');
    }
});

router.delete('/categories/:id', (req, res) async {
    final categoryId = req.params['id'];
    final result = await categories.remove(mongo.where.id(mongo.ObjectId.fromHexString(categoryId)));
    if (result['n'] > 0) {
        return {'message': 'Category deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Category not found');
    }
});

router.get('/subcategories', (req, res) async {
    final subcategoriesList = await subcategories.find().toList();
    return subcategoriesList.map((data) => subcategorySerializer.fromMap(data)).toList();
});

router.post('/subcategories', (req, res) async {
    final subcategoryMap = req.body as Map<String, dynamic>;
    await subcategories.insert(subcategoryMap);
    return subcategorySerializer.fromMap(subcategoryMap);
});

router.get('/subcategories/:id', (req, res) async {
    final subcategoryId = req.params['id'];
    final subcategory = await subcategories.findOne(mongo.where.id(mongo.ObjectId.fromHexString(subcategoryId)));
    if (subcategory != null) {
        return subcategorySerializer.fromMap(subcategory);
    } else {
        throw AngelHttpException.notFound(message: 'Subcategory not found');
    }
});

router.put('/subcategories/:id', (req, res) async {
    final subcategoryId = req.params['id'];
    final updatedSubcategoryData = req.body as Map<String, dynamic>;
    final result = await subcategories.update(
        mongo.where.id(mongo.ObjectId.fromHexString(subcategoryId)),
        updatedSubcategoryData
    );
    if (result['nModified'] > 0) {
        return subcategorySerializer.fromMap(updatedSubcategoryData);
    } else {
        throw AngelHttpException.notFound(message: 'Subcategory not found');
    }
});

router.delete('/subcategories/:id', (req, res) async {
    final subcategoryId = req.params['id'];
    final result = await subcategories.remove(mongo.where.id(mongo.ObjectId.fromHexString(subcategoryId)));
    if (result['n'] > 0) {
        return {'message': 'Subcategory deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Subcategory not found');
    }
});

router.get('/specifications', (req, res) async {
    final specificationsList = await specifications.find().toList();
    return specificationsList.map((data) => specificationSerializer.fromMap(data)).toList();
});

router.post('/specifications', (req, res) async {
    final specificationMap = req.body as Map<String, dynamic>;
    await specifications.insert(specificationMap);
    return specificationSerializer.fromMap(specificationMap);
});

router.get('/specifications/:id', (req, res) async {
    final specificationId = req.params['id'];
    final specification = await specifications.findOne(mongo.where.id(mongo.ObjectId.fromHexString(specificationId)));
    if (specification != null) {
        return specificationSerializer.fromMap(specification);
    } else {
        throw AngelHttpException.notFound(message: 'Specification not found');
    }
});

router.put('/specifications/:id', (req, res) async {
    final specificationId = req.params['id'];
    final updatedSpecificationData = req.body as Map<String, dynamic>;
    final result = await specifications.update(
        mongo.where.id(mongo.ObjectId.fromHexString(specificationId)),
        updatedSpecificationData
    );
    if (result['nModified'] > 0) {
        return specificationSerializer.fromMap(updatedSpecificationData);
    } else {
        throw AngelHttpException.notFound(message: 'Specification not found');
    }
});

router.delete('/specifications/:id', (req, res) async {
    final specificationId = req.params['id'];
    final result = await specifications.remove(mongo.where.id(mongo.ObjectId.fromHexString(specificationId)));
    if (result['n'] > 0) {
        return {'message': 'Specification deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Specification not found');
    }
});
// CRUD маршруты для модели Checkout
router.get('/checkouts', (req, res) async {
    final checkoutsList = await checkouts.find().toList();
    return checkoutsList.map((data) => checkoutSerializer.fromMap(data)).toList();
});

router.post('/checkouts', (req, res) async {
    final checkoutMap = req.body as Map<String, dynamic>;
    await checkouts.insert(checkoutMap);
    return checkoutSerializer.fromMap(checkoutMap);
});

router.get('/checkouts/:id', (req, res) async {
    final checkoutId = req.params['id'];
    final checkout = await checkouts.findOne(mongo.where.id(mongo.ObjectId.fromHexString(checkoutId)));
    if (checkout != null) {
        return checkoutSerializer.fromMap(checkout);
    } else {
        throw AngelHttpException.notFound(message: 'Checkout not found');
    }
});

router.put('/checkouts/:id', (req, res) async {
    final checkoutId = req.params['id'];
    final updatedCheckoutData = req.body as Map<String, dynamic>;
    final result = await checkouts.update(
        mongo.where.id(mongo.ObjectId.fromHexString(checkoutId)),
        updatedCheckoutData
    );
    if (result['nModified'] > 0) {
        return checkoutSerializer.fromMap(updatedCheckoutData);
    } else {
        throw AngelHttpException.notFound(message: 'Checkout not found');
    }
});

router.delete('/checkouts/:id', (req, res) async {
    final checkoutId = req.params['id'];
    final result = await checkouts.remove(mongo.where.id(mongo.ObjectId.fromHexString(checkoutId)));
    if (result['n'] > 0) {
        return {'message': 'Checkout deleted successfully'};
    } else {
        throw AngelHttpException.notFound(message: 'Checkout not found');
    }
});

    });
}
