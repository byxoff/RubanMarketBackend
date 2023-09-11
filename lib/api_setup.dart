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
import 'src/models/auth_serializer.dart';
import 'src/models/blocked_users_serializer.dart';
import 'src/models/cart_serializer.dart';
import 'src/models/category_serializer.dart';
import 'src/models/chat_serializer.dart';
import 'src/models/checkout_serializer.dart';
import 'src/models/company_serializer.dart';
import 'src/models/favorites_serializer.dart';
import 'src/models/payment_serializer.dart';
import 'src/models/product_serializer.dart';
import 'src/models/purchases_serializer.dart';
import 'src/models/review_serializer.dart';
import 'src/models/sales_serializer.dart';
import 'src/models/seller_serializer.dart';
import 'src/models/shop_serializer.dart';
import 'src/models/specification_serializer.dart';
import 'src/models/subcategory_serializer.dart';
import 'src/models/user_serializer.dart';

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
      router
      
        .chain((req, res) => mongo.dbReq(req, db))
        .get('/users', (req, res) async {
          final usersList = await users.find().toList();
          return usersList.map(userSerializer.fromMap).toList();
        })
        .post('/users', (req, res) async {
          final user = userSerializer.toMap(req.body);
          await users.save(user);
          return userSerializer.fromMap(user);
        })
        .get('/users/:id', (req, res) async {
          final userId = req.params['id'];
          final user = await users.findOne(mongo.where.id(mongo.ObjectId.fromHexString(userId)));
          if (user != null) {
            return userSerializer.fromMap(user);
          } else {
            throw AngelHttpException.notFound(message: 'User not found');
          }
        })
        .put('/users/:id', (req, res) async {
          final userId = req.params['id'];
          final updatedUserData = userSerializer.toMap(req.body);
          final result = await users.update(
            mongo.where.id(mongo.ObjectId.fromHexString(userId)),
            updatedUserData,
          );
          if (result['updatedExisting']) {
            return userSerializer.fromMap(updatedUserData);
          } else {
            throw AngelHttpException.notFound(message: 'User not found');
          }
        })
        .delete('/users/:id', (req, res) async {
          final userId = req.params['id'];
          final result = await users.remove(mongo.where.id(mongo.ObjectId.fromHexString(userId)));
          if (result['n'] > 0) {
            return {'message': 'User deleted successfully'};
          } else {
            throw AngelHttpException.notFound(message: 'User not found');
          }
        });

      // CRUD маршруты для модели Auth
router
  .get('/auth', (req, res) async {
    final authList = await auth.find().toList();
    return authList.map(authSerializer.fromMap).toList();
  })
  .post('/auth', (req, res) async {
    final authData = authSerializer.toMap(req.body);
    await auth.save(authData);
    return authSerializer.fromMap(authData);
  })
  .get('/auth/:id', (req, res) async {
    final authId = req.params['id'];
    final authData = await auth.findOne(mongo.where.id(mongo.ObjectId.fromHexString(authId)));
    if (authData != null) {
      return authSerializer.fromMap(authData);
    } else {
      throw AngelHttpException.notFound(message: 'Auth data not found');
    }
  })
  .put('/auth/:id', (req, res) async {
    final authId = req.params['id'];
    final updatedAuthData = authSerializer.toMap(req.body);
    final result = await auth.update(
      mongo.where.id(mongo.ObjectId.fromHexString(authId)),
      updatedAuthData,
    );
    if (result['updatedExisting']) {
      return authSerializer.fromMap(updatedAuthData);
    } else {
      throw AngelHttpException.notFound(message: 'Auth data not found');
    }
  })
  .delete('/auth/:id', (req, res) async {
    final authId = req.params['id'];
    final result = await auth.remove(mongo.where.id(mongo.ObjectId.fromHexString(authId)));
    if (result['n'] > 0) {
      return {'message': 'Auth data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Auth data not found');
    }
  });

// Повторите шаблон для остальных моделей данных, заменяя Auth на соответствующую модель и поля

router
  .get('/shops', (req, res) async {
    final shopList = await shops.find().toList();
    return shopList.map(shopSerializer.fromMap).toList();
  })
  .post('/shops', (req, res) async {
    final shopData = shopSerializer.toMap(req.body);
    await shops.save(shopData);
    return shopSerializer.fromMap(shopData);
  })
  .get('/shops/:id', (req, res) async {
    final shopId = req.params['id'];
    final shopData = await shops.findOne(mongo.where.id(mongo.ObjectId.fromHexString(shopId)));
    if (shopData != null) {
      return shopSerializer.fromMap(shopData);
    } else {
      throw AngelHttpException.notFound(message: 'Shop data not found');
    }
  })
  .put('/shops/:id', (req, res) async {
    final shopId = req.params['id'];
    final updatedShopData = shopSerializer.toMap(req.body);
    final result = await shops.update(
      mongo.where.id(mongo.ObjectId.fromHexString(shopId)),
      updatedShopData,
    );
    if (result['updatedExisting']) {
      return shopSerializer.fromMap(updatedShopData);
    } else {
      throw AngelHttpException.notFound(message: 'Shop data not found');
    }
  })
  .delete('/shops/:id', (req, res) async {
    final shopId = req.params['id'];
    final result = await shops.remove(mongo.where.id(mongo.ObjectId.fromHexString(shopId)));
    if (result['n'] > 0) {
      return {'message': 'Shop data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Shop data not found');
    }
  });


// CRUD маршруты для модели Chat
router
  .get('/chats', (req, res) async {
    final chatList = await chats.find().toList();
    return chatList.map(chatSerializer.fromMap).toList();
  })
  .post('/chats', (req, res) async {
    final chatData = chatSerializer.toMap(req.body);
    await chats.save(chatData);
    return chatSerializer.fromMap(chatData);
  })
  .get('/chats/:id', (req, res) async {
    final chatId = req.params['id'];
    final chatData = await chats.findOne(mongo.where.id(mongo.ObjectId.fromHexString(chatId)));
    if (chatData != null) {
      return chatSerializer.fromMap(chatData);
    } else {
      throw AngelHttpException.notFound(message: 'Chat data not found');
    }
  })
  .put('/chats/:id', (req, res) async {
    final chatId = req.params['id'];
    final updatedChatData = chatSerializer.toMap(req.body);
    final result = await chats.update(
      mongo.where.id(mongo.ObjectId.fromHexString(chatId)),
      updatedChatData,
    );
    if (result['updatedExisting']) {
      return chatSerializer.fromMap(updatedChatData);
    } else {
      throw AngelHttpException.notFound(message: 'Chat data not found');
    }
  })
  .delete('/chats/:id', (req, res) async {
    final chatId = req.params['id'];
    final result = await chats.remove(mongo.where.id(mongo.ObjectId.fromHexString(chatId)));
    if (result['n'] > 0) {
      return {'message': 'Chat data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Chat data not found');
    }
  });

// CRUD маршруты для модели BlockedUsers
router
  .get('/blocked_users', (req, res) async {
    final blockedUsersList = await blockedUsers.find().toList();
    return blockedUsersList.map(blockedUsersSerializer.fromMap).toList();
  })
  .post('/blocked_users', (req, res) async {
    final blockedUsersData = blockedUsersSerializer.toMap(req.body);
    await blockedUsers.save(blockedUsersData);
    return blockedUsersSerializer.fromMap(blockedUsersData);
  })
  .get('/blocked_users/:id', (req, res) async {
    final blockedUsersId = req.params['id'];
    final blockedUsersData = await blockedUsers.findOne(mongo.where.id(mongo.ObjectId.fromHexString(blockedUsersId)));
    if (blockedUsersData != null) {
      return blockedUsersSerializer.fromMap(blockedUsersData);
    } else {
      throw AngelHttpException.notFound(message: 'BlockedUsers data not found');
    }
  })
  .put('/blocked_users/:id', (req, res) async {
    final blockedUsersId = req.params['id'];
    final updatedBlockedUsersData = blockedUsersSerializer.toMap(req.body);
    final result = await blockedUsers.update(
      mongo.where.id(mongo.ObjectId.fromHexString(blockedUsersId)),
      updatedBlockedUsersData,
    );
    if (result['updatedExisting']) {
      return blockedUsersSerializer.fromMap(updatedBlockedUsersData);
    } else {
      throw AngelHttpException.notFound(message: 'BlockedUsers data not found');
    }
  })
  .delete('/blocked_users/:id', (req, res) async {
    final blockedUsersId = req.params['id'];
    final result = await blockedUsers.remove(mongo.where.id(mongo.ObjectId.fromHexString(blockedUsersId)));
    if (result['n'] > 0) {
      return {'message': 'BlockedUsers data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'BlockedUsers data not found');
    }
  });

// Продолжайте шаблон для остальных моделей данных, заменяя Shop, Chat и BlockedUsers на соответствующие модели
router
  .get('/sales', (req, res) async {
    final salesList = await sales.find().toList();
    return salesList.map(salesSerializer.fromMap).toList();
  })
  .post('/sales', (req, res) async {
    final salesData = salesSerializer.toMap(req.body);
    await sales.save(salesData);
    return salesSerializer.fromMap(salesData);
  })
  .get('/sales/:id', (req, res) async {
    final salesId = req.params['id'];
    final salesData = await sales.findOne(mongo.where.id(mongo.ObjectId.fromHexString(salesId)));
    if (salesData != null) {
      return salesSerializer.fromMap(salesData);
    } else {
      throw AngelHttpException.notFound(message: 'Sales data not found');
    }
  })
  .put('/sales/:id', (req, res) async {
    final salesId = req.params['id'];
    final updatedSalesData = salesSerializer.toMap(req.body);
    final result = await sales.update(
      mongo.where.id(mongo.ObjectId.fromHexString(salesId)),
      updatedSalesData,
    );
    if (result['updatedExisting']) {
      return salesSerializer.fromMap(updatedSalesData);
    } else {
      throw AngelHttpException.notFound(message: 'Sales data not found');
    }
  })
  .delete('/sales/:id', (req, res) async {
    final salesId = req.params['id'];
    final result = await sales.remove(mongo.where.id(mongo.ObjectId.fromHexString(salesId)));
    if (result['n'] > 0) {
      return {'message': 'Sales data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Sales data not found');
    }
  });

// CRUD маршруты для модели Purchases
router
  .get('/purchases', (req, res) async {
    final purchasesList = await purchases.find().toList();
    return purchasesList.map(purchasesSerializer.fromMap).toList();
  })
  .post('/purchases', (req, res) async {
    final purchasesData = purchasesSerializer.toMap(req.body);
    await purchases.save(purchasesData);
    return purchasesSerializer.fromMap(purchasesData);
  })
  .get('/purchases/:id', (req, res) async {
    final purchasesId = req.params['id'];
    final purchasesData = await purchases.findOne(mongo.where.id(mongo.ObjectId.fromHexString(purchasesId)));
    if (purchasesData != null) {
      return purchasesSerializer.fromMap(purchasesData);
    } else {
      throw AngelHttpException.notFound(message: 'Purchases data not found');
    }
  })
  .put('/purchases/:id', (req, res) async {
    final purchasesId = req.params['id'];
    final updatedPurchasesData = purchasesSerializer.toMap(req.body);
    final result = await purchases.update(
      mongo.where.id(mongo.ObjectId.fromHexString(purchasesId)),
      updatedPurchasesData,
    );
    if (result['updatedExisting']) {
      return purchasesSerializer.fromMap(updatedPurchasesData);
    } else {
      throw AngelHttpException.notFound(message: 'Purchases data not found');
    }
  })
  .delete('/purchases/:id', (req, res) async {
    final purchasesId = req.params['id'];
    final result = await purchases.remove(mongo.where.id(mongo.ObjectId.fromHexString(purchasesId)));
    if (result['n'] > 0) {
      return {'message': 'Purchases data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Purchases data not found');
    }
  });

// CRUD маршруты для модели Review
router
  .get('/reviews', (req, res) async {
    final reviewList = await reviews.find().toList();
    return reviewList.map(reviewSerializer.fromMap).toList();
  })
  .post('/reviews', (req, res) async {
    final reviewData = reviewSerializer.toMap(req.body);
    await reviews.save(reviewData);
    return reviewSerializer.fromMap(reviewData);
  })
  .get('/reviews/:id', (req, res) async {
    final reviewId = req.params['id'];
    final reviewData = await reviews.findOne(mongo.where.id(mongo.ObjectId.fromHexString(reviewId)));
    if (reviewData != null) {
      return reviewSerializer.fromMap(reviewData);
    } else {
      throw AngelHttpException.notFound(message: 'Review data not found');
    }
  })
  .put('/reviews/:id', (req, res) async {
    final reviewId = req.params['id'];
    final updatedReviewData = reviewSerializer.toMap(req.body);
    final result = await reviews.update(
      mongo.where.id(mongo.ObjectId.fromHexString(reviewId)),
      updatedReviewData,
    );
    if (result['updatedExisting']) {
      return reviewSerializer.fromMap(updatedReviewData);
    } else {
      throw AngelHttpException.notFound(message: 'Review data not found');
    }
  })
  .delete('/reviews/:id', (req, res) async {
    final reviewId = req.params['id'];
    final result = await reviews.remove(mongo.where.id(mongo.ObjectId.fromHexString(reviewId)));
    if (result['n'] > 0) {
      return {'message': 'Review data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Review data not found');
    }
  });

// CRUD маршруты для модели Favorites
router
  .get('/favorites', (req, res) async {
    final favoritesList = await favorites.find().toList();
    return favoritesList.map(favoritesSerializer.fromMap).toList();
  })
  .post('/favorites', (req, res) async {
    final favoritesData = favoritesSerializer.toMap(req.body);
    await favorites.save(favoritesData);
    return favoritesSerializer.fromMap(favoritesData);
  })
  .get('/favorites/:id', (req, res) async {
    final favoritesId = req.params['id'];
    final favoritesData = await favorites.findOne(mongo.where.id(mongo.ObjectId.fromHexString(favoritesId)));
    if (favoritesData != null) {
      return favoritesSerializer.fromMap(favoritesData);
    } else {
      throw AngelHttpException.notFound(message: 'Favorites data not found');
    }
  })
  .put('/favorites/:id', (req, res) async {
    final favoritesId = req.params['id'];
    final updatedFavoritesData = favoritesSerializer.toMap(req.body);
    final result = await favorites.update(
      mongo.where.id(mongo.ObjectId.fromHexString(favoritesId)),
      updatedFavoritesData,
    );
    if (result['updatedExisting']) {
      return favoritesSerializer.fromMap(updatedFavoritesData);
    } else {
      throw AngelHttpException.notFound(message: 'Favorites data not found');
    }
  })
  .delete('/favorites/:id', (req, res) async {
    final favoritesId = req.params['id'];
    final result = await favorites.remove(mongo.where.id(mongo.ObjectId.fromHexString(favoritesId)));
    if (result['n'] > 0) {
      return {'message': 'Favorites data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Favorites data not found');
    }
  });
  // CRUD маршруты для модели Cart
router
  .get('/cart', (req, res) async {
    final cartList = await cart.find().toList();
    return cartList.map(cartSerializer.fromMap).toList();
  })
  .post('/cart', (req, res) async {
    final cartData = cartSerializer.toMap(req.body);
    await cart.save(cartData);
    return cartSerializer.fromMap(cartData);
  })
  .get('/cart/:id', (req, res) async {
    final cartId = req.params['id'];
    final cartData = await cart.findOne(mongo.where.id(mongo.ObjectId.fromHexString(cartId)));
    if (cartData != null) {
      return cartSerializer.fromMap(cartData);
    } else {
      throw AngelHttpException.notFound(message: 'Cart data not found');
    }
  })
  .put('/cart/:id', (req, res) async {
    final cartId = req.params['id'];
    final updatedCartData = cartSerializer.toMap(req.body);
    final result = await cart.update(
      mongo.where.id(mongo.ObjectId.fromHexString(cartId)),
      updatedCartData,
    );
    if (result['updatedExisting']) {
      return cartSerializer.fromMap(updatedCartData);
    } else {
      throw AngelHttpException.notFound(message: 'Cart data not found');
    }
  })
  .delete('/cart/:id', (req, res) async {
    final cartId = req.params['id'];
    final result = await cart.remove(mongo.where.id(mongo.ObjectId.fromHexString(cartId)));
    if (result['n'] > 0) {
      return {'message': 'Cart data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Cart data not found');
    }
  });

// CRUD маршруты для модели Payment
router
  .get('/payments', (req, res) async {
    final paymentList = await payments.find().toList();
    return paymentList.map(paymentSerializer.fromMap).toList();
  })
  .post('/payments', (req, res) async {
    final paymentData = paymentSerializer.toMap(req.body);
    await payments.save(paymentData);
    return paymentSerializer.fromMap(paymentData);
  })
  .get('/payments/:id', (req, res) async {
    final paymentId = req.params['id'];
    final paymentData = await payments.findOne(mongo.where.id(mongo.ObjectId.fromHexString(paymentId)));
    if (paymentData != null) {
      return paymentSerializer.fromMap(paymentData);
    } else {
      throw AngelHttpException.notFound(message: 'Payment data not found');
    }
  })
  .put('/payments/:id', (req, res) async {
    final paymentId = req.params['id'];
    final updatedPaymentData = paymentSerializer.toMap(req.body);
    final result = await payments.update(
      mongo.where.id(mongo.ObjectId.fromHexString(paymentId)),
      updatedPaymentData,
    );
    if (result['updatedExisting']) {
      return paymentSerializer.fromMap(updatedPaymentData);
    } else {
      throw AngelHttpException.notFound(message: 'Payment data not found');
    }
  })
  .delete('/payments/:id', (req, res) async {
    final paymentId = req.params['id'];
    final result = await payments.remove(mongo.where.id(mongo.ObjectId.fromHexString(paymentId)));
    if (result['n'] > 0) {
      return {'message': 'Payment data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Payment data not found');
    }
  });

// CRUD маршруты для модели Company
router
  .get('/companies', (req, res) async {
    final companyList = await companies.find().toList();
    return companyList.map(companySerializer.fromMap).toList();
  })
  .post('/companies', (req, res) async {
    final companyData = companySerializer.toMap(req.body);
    await companies.save(companyData);
    return companySerializer.fromMap(companyData);
  })
  .get('/companies/:id', (req, res) async {
    final companyId = req.params['id'];
    final companyData = await companies.findOne(mongo.where.id(mongo.ObjectId.fromHexString(companyId)));
    if (companyData != null) {
      return companySerializer.fromMap(companyData);
    } else {
      throw AngelHttpException.notFound(message: 'Company data not found');
    }
  })
  .put('/companies/:id', (req, res) async {
    final companyId = req.params['id'];
    final updatedCompanyData = companySerializer.toMap(req.body);
    final result = await companies.update(
      mongo.where.id(mongo.ObjectId.fromHexString(companyId)),
      updatedCompanyData,
    );
    if (result['updatedExisting']) {
      return companySerializer.fromMap(updatedCompanyData);
    } else {
      throw AngelHttpException.notFound(message: 'Company data not found');
    }
  })
  .delete('/companies/:id', (req, res) async {
    final companyId = req.params['id'];
    final result = await companies.remove(mongo.where.id(mongo.ObjectId.fromHexString(companyId)));
    if (result['n'] > 0) {
      return {'message': 'Company data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Company data not found');
    }
  });

// CRUD маршруты для модели Seller
router
  .get('/sellers', (req, res) async {
    final sellerList = await sellers.find().toList();
    return sellerList.map(sellerSerializer.fromMap).toList();
  })
  .post('/sellers', (req, res) async {
    final sellerData = sellerSerializer.toMap(req.body);
    await sellers.save(sellerData);
    return sellerSerializer.fromMap(sellerData);
  })
  .get('/sellers/:id', (req, res) async {
    final sellerId = req.params['id'];
    final sellerData = await sellers.findOne(mongo.where.id(mongo.ObjectId.fromHexString(sellerId)));
    if (sellerData != null) {
      return sellerSerializer.fromMap(sellerData);
    } else {
      throw AngelHttpException.notFound(message: 'Seller data not found');
    }
  })
  .put('/sellers/:id', (req, res) async {
    final sellerId = req.params['id'];
    final updatedSellerData = sellerSerializer.toMap(req.body);
    final result = await sellers.update(
      mongo.where.id(mongo.ObjectId.fromHexString(sellerId)),
      updatedSellerData,
    );
    if (result['updatedExisting']) {
      return sellerSerializer.fromMap(updatedSellerData);
    } else {
      throw AngelHttpException.notFound(message: 'Seller data not found');
    }
  })
  .delete('/sellers/:id', (req, res) async {
    final sellerId = req.params['id'];
    final result = await sellers.remove(mongo.where.id(mongo.ObjectId.fromHexString(sellerId)));
    if (result['n'] > 0) {
      return {'message': 'Seller data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Seller data not found');
    }
  });

// Повторите этот шаблон для остальных моделей данных, заменяя Company и Seller на соответствующие модели и коллекции
// CRUD маршруты для модели Category
router
  .get('/categories', (req, res) async {
    final categoryList = await categories.find().toList();
    return categoryList.map(categorySerializer.fromMap).toList();
  })
  .post('/categories', (req, res) async {
    final categoryData = categorySerializer.toMap(req.body);
    await categories.save(categoryData);
    return categorySerializer.fromMap(categoryData);
  })
  .get('/categories/:id', (req, res) async {
    final categoryId = req.params['id'];
    final categoryData = await categories.findOne(mongo.where.id(mongo.ObjectId.fromHexString(categoryId)));
    if (categoryData != null) {
      return categorySerializer.fromMap(categoryData);
    } else {
      throw AngelHttpException.notFound(message: 'Category data not found');
    }
  })
  .put('/categories/:id', (req, res) async {
    final categoryId = req.params['id'];
    final updatedCategoryData = categorySerializer.toMap(req.body);
    final result = await categories.update(
      mongo.where.id(mongo.ObjectId.fromHexString(categoryId)),
      updatedCategoryData,
    );
    if (result['updatedExisting']) {
      return categorySerializer.fromMap(updatedCategoryData);
    } else {
      throw AngelHttpException.notFound(message: 'Category data not found');
    }
  })
  .delete('/categories/:id', (req, res) async {
    final categoryId = req.params['id'];
    final result = await categories.remove(mongo.where.id(mongo.ObjectId.fromHexString(categoryId)));
    if (result['n'] > 0) {
      return {'message': 'Category data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Category data not found');
    }
  });

// CRUD маршруты для модели Subcategory
router
  .get('/subcategories', (req, res) async {
    final subcategoryList = await subcategories.find().toList();
    return subcategoryList.map(subcategorySerializer.fromMap).toList();
  })
  .post('/subcategories', (req, res) async {
    final subcategoryData = subcategorySerializer.toMap(req.body);
    await subcategories.save(subcategoryData);
    return subcategorySerializer.fromMap(subcategoryData);
  })
  .get('/subcategories/:id', (req, res) async {
    final subcategoryId = req.params['id'];
    final subcategoryData = await subcategories.findOne(mongo.where.id(mongo.ObjectId.fromHexString(subcategoryId)));
    if (subcategoryData != null) {
      return subcategorySerializer.fromMap(subcategoryData);
    } else {
      throw AngelHttpException.notFound(message: 'Subcategory data not found');
    }
  })
  .put('/subcategories/:id', (req, res) async {
    final subcategoryId = req.params['id'];
    final updatedSubcategoryData = subcategorySerializer.toMap(req.body);
    final result = await subcategories.update(
      mongo.where.id(mongo.ObjectId.fromHexString(subcategoryId)),
      updatedSubcategoryData,
    );
    if (result['updatedExisting']) {
      return subcategorySerializer.fromMap(updatedSubcategoryData);
    } else {
      throw AngelHttpException.notFound(message: 'Subcategory data not found');
    }
  })
  .delete('/subcategories/:id', (req, res) async {
    final subcategoryId = req.params['id'];
    final result = await subcategories.remove(mongo.where.id(mongo.ObjectId.fromHexString(subcategoryId)));
    if (result['n'] > 0) {
      return {'message': 'Subcategory data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Subcategory data not found');
    }
  });

// CRUD маршруты для модели Specification
router
  .get('/specifications', (req, res) async {
    final specificationList = await specifications.find().toList();
    return specificationList.map(specificationSerializer.fromMap).toList();
  })
  .post('/specifications', (req, res) async {
    final specificationData = specificationSerializer.toMap(req.body);
    await specifications.save(specificationData);
    return specificationSerializer.fromMap(specificationData);
  })
  .get('/specifications/:id', (req, res) async {
    final specificationId = req.params['id'];
    final specificationData = await specifications.findOne(mongo.where.id(mongo.ObjectId.fromHexString(specificationId)));
    if (specificationData != null) {
      return specificationSerializer.fromMap(specificationData);
    } else {
      throw AngelHttpException.notFound(message: 'Specification data not found');
    }
  })
  .put('/specifications/:id', (req, res) async {
    final specificationId = req.params['id'];
    final updatedSpecificationData = specificationSerializer.toMap(req.body);
    final result = await specifications.update(
      mongo.where.id(mongo.ObjectId.fromHexString(specificationId)),
      updatedSpecificationData,
    );
    if (result['updatedExisting']) {
      return specificationSerializer.fromMap(updatedSpecificationData);
    } else {
      throw AngelHttpException.notFound(message: 'Specification data not found');
    }
  })
  .delete('/specifications/:id', (req, res) async {
    final specificationId = req.params['id'];
    final result = await specifications.remove(mongo.where.id(mongo.ObjectId.fromHexString(specificationId)));
    if (result['n'] > 0) {
      return {'message': 'Specification data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Specification data not found');
    }
  });

// CRUD маршруты для модели Checkout
router
  .get('/checkouts', (req, res) async {
    final checkoutList = await checkouts.find().toList();
    return checkoutList.map(checkoutSerializer.fromMap).toList();
  })
  .post('/checkouts', (req, res) async {
    final checkoutData = checkoutSerializer.toMap(req.body);
    await checkouts.save(checkoutData);
    return checkoutSerializer.fromMap(checkoutData);
  })
  .get('/checkouts/:id', (req, res) async {
    final checkoutId = req.params['id'];
    final checkoutData = await checkouts.findOne(mongo.where.id(mongo.ObjectId.fromHexString(checkoutId)));
    if (checkoutData != null) {
      return checkoutSerializer.fromMap(checkoutData);
    } else {
      throw AngelHttpException.notFound(message: 'Checkout data not found');
    }
  })
  .put('/checkouts/:id', (req, res) async {
    final checkoutId = req.params['id'];
    final updatedCheckoutData = checkoutSerializer.toMap(req.body);
    final result = await checkouts.update(
      mongo.where.id(mongo.ObjectId.fromHexString(checkoutId)),
      updatedCheckoutData,
    );
    if (result['updatedExisting']) {
      return checkoutSerializer.fromMap(updatedCheckoutData);
    } else {
      throw AngelHttpException.notFound(message: 'Checkout data not found');
    }
  })
  .delete('/checkouts/:id', (req, res) async {
    final checkoutId = req.params['id'];
    final result = await checkouts.remove(mongo.where.id(mongo.ObjectId.fromHexString(checkoutId)));
    if (result['n'] > 0) {
      return {'message': 'Checkout data deleted successfully'};
    } else {
      throw AngelHttpException.notFound(message: 'Checkout data not found');
    }
  });

// Повторите этот шаблон для остальных моделей данных, заменяя Category, Subcategory, Specification и Checkout на соответствующие модели и коллекции

    });
}
