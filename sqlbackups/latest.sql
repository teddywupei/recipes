-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: recipes
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `recipes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `recipes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `recipes`;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `userlevel` int(1) DEFAULT NULL,
  `no_of_recipes` int(10) DEFAULT NULL,
  `no_of_comments` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES ('akofink','Andrew','Kofink','ajkofink@gmail.com','403029f8ef4151611b5061d0d0b38ccbd9bd5237',1,24,3),('Jim','Jim','Kofink','jimkofink@gmail.com','52841c6cd5623061ead583cc46f1c36fa9ed7104',NULL,1,0),('ckofink','Cheri','Kofink','ckofink@me.com','8c9dd0a60eca8d4de07ae3fc3af656022280a204',NULL,7,0);
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `subject` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `reply_id` int(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `indx` int(10) DEFAULT NULL,
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('Great over brown rice!','I like to make brown rice with this entree and a side vegetable like broccoli or spinach.',0,'2012-02-19','akofink',20,12),('I was just about...','to post this, but you beat me to it. Thanks.',0,'2012-02-12','akofink',19,11),('Linked from:','<a href=\'http://allrecipes.com/recipe/turkey-brine/\'>AllRecipes</a>',0,'2012-11-14','akofink',34,13);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `indx` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `imageLocation` varchar(500) DEFAULT NULL,
  `ingredients` varchar(5000) DEFAULT NULL,
  `directions` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`indx`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (4,'Guacamole','akofink','Appetizer','uploads/avocado1.jpg','Avocado\r\nTomato\r\nOnion\r\nLime Juice\r\nCumin\r\nSpice if desired (Peppers, etc.)','Mix it all together and enjoy!'),(5,'Lentil Soup (Vegetarian)','akofink','Soup','uploads/lentilsoup2.gif','2 cups lentils\r\n4 cups water\r\n4 cups vegetable broth4\r\n1 onion, diced\r\n3 stalks celery, sliced\r\n2 carrots, chopped\r\n2 cloves garlic, minced\r\n1 tsp salt\r\n1/4 tsp black pepper\r\n1/2 tsp oregano\r\n1 14 ounce can diced tomatoes','Put everything together in a crock pot for a few hours until the house smells great.'),(6,'Black Bean Soup','akofink','Soup','uploads/BlackBeanSoup.jpg','1 tablespoon olive oil\r\n1 large onion, chopped\r\n1 stalk celery, chopped\r\n2 carrots, chopped\r\n4 cloves garlic, chopped\r\n2 tablespoons chili powder\r\n1 tablespoon ground cumin\r\n1 pinch black pepper\r\n4 cups vegetable broth\r\n4 (15 ounce) cans black beans\r\n1 (15 ounce) can whole kernel corn\r\n1 (14.5 ounce) can crushed tomatoes','<ol><li>Heat oil in a large pot over medium-high heat. Saute onion, celery, carrots and garlic for 5 minutes. Season with chili powder, cumin, and black pepper; cook for 1 minute. Stir in vegetable broth, 2 cans of beans, and corn. Bring to a boil.</li>\r\n<li>Meanwhile, in a food processor or blender, process remaining 2 cans beans and tomatoes until smooth. Stir into boiling soup mixture, reduce heat to medium, and simmer for 15 minutes.</li>\r\n</ol>'),(7,'Candied Yams','akofink','Casserole','','6 large bright orange sweet potatoes\r\n1 lb. dark brown sugar\r\n1 stick of butter\r\n2 cups of miniature marshmallows\r\n1/4 cup of white sugar\r\n2 teaspoons of salt','<p>Wash and peel potatoes. Chunk potatoes into 2 inch disks. Put potatoes in a pan and cover with water. Add 2 teaspoons of salt and 1/4 cup of white sugar to the potatoes and water. Cover. Boil until potatoes are fork tender (approximately 30 minutes). Drain potatoes.\r\nPut potatoes in a baking dish and sprinkle with brown sugar. Dot potatoes with butter.\r\n</p><p>\r\nBake for 20 minutes in 350 degree oven. Sprinkle with marshmallows. Return to oven and bake until marshmallows are brown.</p>'),(8,'Cabbage Soup','akofink','Soup','uploads/1cabbage_soup_recipe.jpg','1 tablespoon extra virgin olive oil\r\na big pinch of salt\r\n1/2 pound potatoes, skin on, cut 1/4-inch pieces\r\n4 cloves garlic, chopped\r\n1/2 large yellow onion, thinly sliced\r\n5 cups stock of your choice\r\n1 1/2 cups white beans, precooked or canned (drained & rinsed well)\r\n1/2 medium cabbage, cored and sliced into 1/4-inch ribbons\r\n\r\nmore good-quality extra-virgin olive oil for drizzling\r\n1/2 cup Parmesan cheese, freshly grated','<p>\r\nWarm the olive oil in a large thick-bottomed pot over medium-high heat. Stir in the salt and potatoes. Cover and cook until they are a bit tender and starting to brown a bit, about 5 minutes - it\'s o.k. to uncover to stir a couple times. Stir in the garlic and onion and cook for another minute or two. Add the stock and the beans and bring the pot to a simmer. Stir in the cabbage and cook for a couple more minutes, until the cabbage softens up a bit. Now adjust the seasoning - getting the seasoning right is important or your soup will taste flat and uninteresting. Taste and add more salt if needed, the amount of salt you will need to add will depend on how salty your stock is (varying widely between brands, homemade, etc)…\r\n</p>\r\n\r\n<p>\r\nServe drizzled with a bit of olive oil and a generous dusting of cheese.\r\n</p>\r\n\r\n<p>Serves 4.</p>'),(9,'Miso Soup','akofink','Soup','uploads/miso_soup_recipe.jpg','3 ounces dried soba noodles\r\n2 - 4 tablespoons miso paste (to taste) \r\n2 - 3 ounces firm tofu (2 handfuls), chopped into 1/3-inch cubes\r\na handful of watercress or spinach, well washed and stems trimmed\r\n2 green onions, tops removed thinly sliced\r\na small handful of cilantro\r\na pinch of red pepper flakes','<p>\r\nCook the soba noodles in salted water, drain, run cold water over the noodles to stop them from cooking, shake off any excess water and set aside.\r\n</p><p>\r\nIn a medium sauce pan bring 4 cups of water to a boil. Reduce the heat to a gentle simmer and remove from heat. Pour a bit of the hot water into a small bowl and whisk in the miso paste - so it thins out a bit (this step is to avoid clumping). Stir this back into the pot. Taste, and then add more (the same way) a bit at a time until it is to your liking. Also, some miso pastes are less-salty than others, so you may need to add a bit of salt here. Add the tofu, remove from the heat, and let it sit for just a minute or so.\r\n</p><p>\r\nSplit the noodles between two (or three) bowls, and pour the miso broth and tofu over them. Add some watercress, green onions, cilantro, and red pepper flakes to each bowl and enjoy.\r\n</p><p>\r\nServes 2 - 3.</p>'),(10,'Simple Bread','akofink','Bread','uploads/20050115simpleloafdonesliced.jpg','3 cups flour\r\n2 teaspoons salt\r\n2 teaspoons yeast\r\n1 1/8 cup water','<p>Mix everything together. If it is too wet and won\'t come free from the sides of the bowl or keeps sticking to your hands, add a little more flour. If it is too dry and won\'t form into a ball, add a bit of water.</p><p>\r\nKnead it for 10 minutes. Cover and set it aside to rise until it doubles in size, approximately 90 minutes. Punch it down and let it rise again. Shape it, either by putting it in a greased loaf pan or by rolling it out into a long loaf and putting it on the back of a cookie sheet.</p><p>\r\nAfter it has risen to twice it size again, another hour or so, put the loaf into a preheated oven at 375 degrees. Let it bake for 45 minutes and then pull it out. If you made it into a long skinny loaf, it may cook 5 or 10 minutes quicker, so adjust the time based on what shape you chose. I baked the loaf in these photos for 40 minutes). 50-375 for 45 minutes is typical for a loaf in a loaf pan.</p>'),(11,'No Bake Cookies','akofink','Dessert - Cookies','uploads/21125.jpg','1 3/4 cups white sugar\r\n1/2 cup milk\r\n1/2 cup butter\r\n4 tablespoons unsweetened cocoa powder\r\n1/2 cup crunchy peanut butter\r\n3 cups quick-cooking oats\r\n1 teaspoon vanilla extract','In a medium saucepan, combine sugar, milk, butter, and cocoa. Bring to a boil, and cook for 1 1/2 minutes. Remove from heat, and stir in peanut butter, oats, and vanilla. Drop by teaspoonfuls onto wax paper. Let cool until hardened.'),(12,'White Bean, Kale, and Vegetable Soup','akofink','Soup','uploads/WhiteBeanAndKaleSoup.jpg','1 tablespoon extra-virgin olive oil\r\n½ cup chopped onion\r\n1 cup chopped carrots, peeled\r\n2 cloves garlic, minced\r\n4 cups water or Vegetable Broth\r\n1 (15-ounce) can cannellini beans, rinsed, drained \r\n1 (14.5-ounce) can diced tomatoes\r\n2 cups chopped B-size red potatoes, peeled, cut into 1-inch pieces\r\n2 cups fresh or frozen green beans, cut into 1-inch pieces\r\n2 cups kale, torn into bite-size pieces, lightly packed\r\n1 teaspoon dried basil\r\n1 teaspoon dried parsley\r\n½ teaspoon salt\r\n1/8 teaspoon pepper','<p>Heat olive oil in a large saucepan over medium heat. Cook onions and carrots until vegetables are softened. Stir in garlic, and cook for another minute, stirring constantly so garlic doesn’t burn.\r\n</p><p>\r\nAdd water or broth, cannellini beans, tomatoes, potatoes, green beans, kale, basil, parsley, salt and pepper. Bring to a boil. Simmer, uncovered, over low heat about 30 minutes to allow the flavors to blend. \r\n</p><p>\r\nYield: 8 servings (serving size: about 1 cup)\r\n</p>'),(13,'Angus Barn Chocolate Chess Pie','akofink','Pie','','1 unbaked pie crust\r\n1 stick of butter\r\n2 squares bakers chocolate (semi-sweet)\r\n1 cup of sugar\r\n2 eggs (beaten)\r\n1 tsp. vanilla\r\nDash of salt','<ol><li>Melt butter and chocolate, mix with other ingredients, which have been blended together.\r\n</li><li>\r\nPour into a pie shell and bake 35 minutes (no longer) at 350 degrees.\r\n</li><li>\r\nTop with whipped cream.\r\n</li></ol>'),(14,'Butter Flaky Pie Crust','akofink','Meta-Recipe','','1 1/4 cups all-purpose flour\r\n1/4 teaspoon salt\r\n1/2 cup butter, chilled and diced\r\n1/4 cup ice water','<ol><li>In a large bowl, combine flour and salt. Cut in butter until mixture resembles coarse crumbs. Stir in water, a tablespoon at a time, until mixture forms a ball. Wrap in plastic and refrigerate for 4 hours or overnight.\r\n</li><li>Roll dough out to fit a 9 inch pie plate. Place crust in pie plate. Press the dough evenly into the bottom and sides of the pie plate.\r\n</li></ol>'),(15,'Hearty Pasta, Bean and Potato Soup in Wine','akofink','Soup','','2 white onion (diced)\r\n6 tbsps margarine (light, use smartbalance light can also use oil)\r\n4 cups white wine\r\n4 cups water\r\n28 ozs diced tomatoes\r\n30 ozs navy beans (rinsed)\r\n2 cups whole wheat pasta (rotini or farfalle work)\r\n4 cups fingerling potatoes (cut in small pieces)\r\n2 tbsps rosemary\r\nsalt\r\npepper','<ol><li>Heat the margarine and cook the onion in it until translucent.\r\n</li><li>Add the wine and water and bring to a boil.\r\n</li><li>Add the remaining ingredients and cook until the pasta and potatoes are tender.\r\n</li></ol>'),(16,'Pizza Dough','akofink','Pizza','','1 (.25 ounce) package active dry yeast\r\n1 cup warm water (110 degrees F/45 degrees C)\r\n2 cups bread flour\r\n2 tablespoons olive oil\r\n1 teaspoon salt\r\n2 teaspoons white sugar','<ol><li>In a small bowl, dissolve yeast in warm water. Let stand until creamy, about 10 minutes.</li>\r\n<li>In a large bowl, combine 2 cups bread flour, olive oil, salt, white sugar and the yeast mixture; stir well to combine. Beat well until a stiff dough has formed. Cover and rise until doubled in volume, about 30 minutes. Meanwhile, preheat oven to 350 degrees F (175 degrees C).</li>\r\n<li>Turn dough out onto a well floured surface. Form dough into a round and roll out into a pizza crust shape. Cover with your favorite sauce and toppings and bake in preheated oven until golden brown, about 20 minutes.</li></ol>'),(17,'Pound Cake','akofink','Cake','uploads/1pound_cake.jpg','2 cups butter\r\n3 cups white sugar\r\n6 eggs\r\n4 cups all-purpose flour\r\n2/3 cup milk','<h4>Yields 3 - 8x4 inch loaf pans</h4>\r\n<ol>\r\n<li>\r\nPreheat oven to 350 degrees F (175 degrees C). Grease 3 - 8x4 inch loaf pans, then line with parchment paper.\r\n</li>\r\n<li>\r\nIn a large bowl, cream together the butter and sugar until light and fluffy. Beat in the eggs one at a time. Beat in the flour alternately with the milk, mixing just until incorporated.\r\n</li>\r\n<li>\r\nPour batter evenly into prepared loaf pans. Bake in the preheated oven for 70 minutes, or until a toothpick inserted into the center of the cakes comes out clean. After removing them from the oven, immediately loosen cake edges with a knife. Allow to cool in pans for 10 minutes, then remove from the pans. Strip off the parchment paper and cool completely on wire racks.\r\n</li>\r\n</ol>'),(18,'Habanero Salsa','Jim','Salsa','','1 tablespoon oil\r\n1 medium onion, diced\r\n2 cloves garlic, chopped\r\n1 teaspoon cumin, ground\r\n2 cups tomatoes, diced or 1 (14 ounce) can diced tomatoes\r\n2-4 habanero chilies, chopped, add more to taste, I always do.\r\n1 handful cilantro, chopped (about the entire bunch)\r\n1/2 lime, juice\r\n','Heat the oil in a pan.\r\nAdd the onions and saute until tender, about 5-7 minutes.\r\nAdd the garlic and cumin and saute until fragrant, about a minute.\r\nAdd the tomatoes and chilies, stir in the cilantro and hit it with a squeeze of lime juice. Bring to a boil, reduce heat and simmer until the sauce thickens about 10-20 minutes.\r\nRemove from heat, let cool some, then placed in glass jars. I double the recipe and it makes about 32 ounces, store in glass jars in the refrigerator and it lasts for several weeks.\r\n'),(19,'Salisbury Steak','ckofink','Meat','','1lb of Hamburger meat\r\n1/2 cup of bread crumbs \r\n1 egg\r\n1/2 can of c of mushroom soup\r\n1 sm. onion\r\n1/3 c of water\r\n','Mix hamburger meat with all ingredients except water.  \r\nmix with hands and make small oval shaped balls\r\ncook in fry pan till browned on all sides.\r\nmove to casserole dish and mix remaining soup with water and pour over meat.  Cover and cook 45 min on 350 degrees.'),(20,'Easy Garlic Broiled Chicken','akofink','Entree','uploads/chicken.jpg','1/2 cup butter\r\n3 tablespoons minced garlic\r\n3 tablespoons soy sauce\r\n1/4 teaspoon black pepper\r\n1 tablespoon dried parsley\r\n6 boneless chicken thighs, with skin\r\ndried parsley, to taste','<ol>\r\n<li>Preheat the oven broiler. Lightly grease a baking pan.</li><li>\r\nIn a microwave safe bowl, mix the butter, garlic, soy sauce, pepper, and parsley. Cook 2 minutes on High in the microwave, or until butter is melted.</li><li>\r\nArrange chicken on the baking pan, and coat with the butter mixture, reserving some of the mixture for basting.</li><li>\r\nBroil chicken 40 minutes in the preheated oven, until juices run clear, turning occasionally and basting with remaining butter mixture. Sprinkle with parsley to serve.</li>\r\n</ol>\r\n<br />\r\n<b>Amount Per Serving</b><br />  Calories: 303 | Total Fat: 25.1g | Cholesterol: 99mg'),(21,'Baked Macaroni and Cheese','akofink','Casserole','','1 (12 ounce) package macaroni\r\n1 egg\r\n2 cups milk\r\n2 tablespoons butter, melted\r\n2 1/2 cups shredded Cheddar cheese\r\nsalt and pepper to taste','<ol>\r\n            \r\n                <li>\r\n                    Preheat the oven to 350 degrees F (175 degrees C). Lightly grease a 2-quart baking dish.\r\n                </li>\r\n            \r\n                <li>\r\n                    In a large pot of salted water, lightly boil the macaroni for about 5 minutes until half-cooked.\r\n                </li>\r\n            \r\n                <li>\r\n                    Whisk the egg and milk together in a large cup. Add butter and cheese to the egg and milk.  Stir well.\r\n                </li>\r\n            \r\n                <li>\r\n                    Place the lightly cooked macaroni in the prepared baking dish.  Pour the egg and cheese liquid over the macaroni, sprinkle with salt and pepper, and stir well.  Press the mixture evenly around the baking dish.\r\n                </li>\r\n            \r\n                <li>\r\n                    Bake uncovered, for 30 to 40 minutes, or until the top is brown.\r\n                </li>\r\n            \r\n                </ol>'),(22,'15 Bean Cajun Soup','ckofink','Soup','uploads/ZzKUv4Pk13c2931333330373oqQcAQmK_1274417205.jpg','15 Dry beans bag\r\nlb bulk sausage\r\n1 lg onion chopped\r\n1 15oz can diced tomatoes\r\njuice of 1 lemon\r\n1-2 clove garlic\r\n\r\n','Place rinsed beans in pot with 3 quarts of water\r\nBring to rapid boil. Reduce heat, cover and continue boiling 60-70- min. Stir occasionally to prevent sticking.\r\nAfter 60 min, add all other ingredients. \r\nSimmer for 30-40 min. \r\nAdd contents of cajun flavor packet and salt and pepper to taste.'),(23,'Baked Chicken','akofink','Entree','uploads/baked-chicken-a.jpg','3 to 4 lb chicken, cut into 8 parts (2 breasts, 2 thighs, 2 legs, 2 wings) excluding the back\r\nOlive oil\r\nSalt and freshly ground pepper','<ol>\r\n<li>Preheat oven to 400°F. Rinse chicken pieces in water and pat dry with paper towels. Coat the bottom of a roasting pan with olive oil. Rub some olive oil over all of the chicken pieces in the roasting pan. Sprinkle both sides of the chicken pieces with salt and freshly ground black pepper. Arrange the pieces skin-side up in the roasting pan so the largest pieces are in the center (the breasts) and there is a little room between pieces so they aren\'t crowded in the pan.</li>\r\n<li>Cook for 30 minutes at 400°F. Then lower the heat to 350°F and cook for 10-30 minutes more (approximately 14 to 15 minutes per pound total cooking time) until juices run clear (not pink) when poked with a sharp knife or the internal temperature of the chicken breasts is 165°F and the thighs 170°. If your chicken pieces aren\'t browning to your satisfaction, you can put them under the broiler for the last 5 minutes of cooking, until browned sufficiently.</li>\r\n<li>Remove roasting pan from oven. Remove chicken from roasting pan to a serving plate. Tent with aluminum foil and let rest for 5 to 10 minutes before serving.</li>\r\n</ol>'),(34,'Turkey Brine','akofink','Brine','','1 gallon vegetable broth\r\n1 cup sea salt\r\n1 tablespoon crushed dried rosemary\r\n1 tablespoon dried sage\r\n1 tablespoon dried thyme\r\n1 tablespoon dried savory\r\n1 gallon ice water','<ol>\r\n<li>In a large stock pot, combine the vegetable broth, sea salt, rosemary, sage, thyme, and savory. Bring to a boil, stirring frequently to be sure salt is dissolved. Remove from heat, and let cool to room temperature.\r\n</li><li>When the broth mixture is cool, pour it into a clean 5 gallon bucket. Stir in the ice water.\r\n</li><li>Wash and dry your turkey. Make sure you have removed the innards. Place the turkey, breast down, into the brine. Make sure that the cavity gets filled. Place the bucket in the refrigerator overnight.\r\n</li><li>Remove the turkey carefully draining off the excess brine and pat dry. Discard excess brine.\r\n</li><li>Cook the turkey as desired reserving the drippings for gravy. Keep in mind that brined turkeys cook 20 to 30 minutes faster so watch the temperature gauge.</li></ol>'),(35,'No Fail Crust','ckofink','Pie Crust','','3 C flour\r\n1 tsp. salt\r\n1 1/4 c. Crisco\r\n6 Tbsp. water (cold)\r\n1 tsp. vinegar\r\n1 egg, slightly beaten\r\n','Sift flour and salt together. Cut in Crisco. Add liquids and mix. Makes 3 crusts.  You can freeze these crusts also.'),(36,'Old Fashioned Pumpkin Pie','akofink','Pie','uploads/pumpkin-pie-520-a.jpg','2 cups of pumpkin pulp purée from a sugar pumpkin* or from canned pumpkin purée\r\n1 1/2 cup heavy cream or 1 12 oz. can of evaporated milk\r\n1/2 cup packed dark brown sugar\r\n1/3 cup white sugar\r\n1/2 teaspoon salt\r\n2 eggs plus the yolk of a third egg\r\n2 teaspoons of cinnamon\r\n1 teaspoon ground ginger\r\n1/4 teaspoon ground nutmeg\r\n1/4 teaspoon ground cloves\r\n1/4 teaspoon ground cardamon\r\n1/2 teaspoon of lemon zest\r\n1 good crust (see pâte brisée recipe)','<p>* To make pumpkin purée from a sugar pumpkin: start with a small-medium sugar pumpkin, cut out the stem and scrape out the insides, discard (save the seeds, of course). Cut the pumpkin in half and lay cut side down on a rimmed baking sheet lined with silpat or aluminum foil. Bake at 350°F until fork tender, about an hour to an hour and a half. Remove from oven, let cool, scoop out the pulp. (Alternatively you can cut the pumpkin into sections and steam in a saucepan with a couple inches of water at the bottom, until soft.) If you want the pulp to be extra smooth, put it through a food mill or chinois.</p>\r\n\r\n<h3>METHOD</h3>\r\n<ol>\r\n<li>Preheat oven to 425°F.\r\n\r\n</li><li>Mix sugars, salt, and spices, and lemon zest in a large bowl. Beat the eggs and add to the bowl. Stir in the pumpkin purée. Stir in cream. Whisk all together until well incorporated.\r\n\r\n</li><li>Pour into pie shell and bake at 425°F for 15 minutes. After 15 minutes reduce the temperature to 350°F. Bake 40-50 minutes, or until a knife inserted near the center comes out clean.\r\n\r\n</li><li>Cool on a wire rack for 2 hours.\r\n</li></ol>\r\n<p>\r\nServe with whipped cream.\r\n</p>\r\n<p>\r\n<b>Yield:</b> Serves 8.\r\n</p>'),(25,'Banana Bread','akofink','Bread','uploads/BananaBread.jpg','1 cup granulated sugar\r\n8 tablespoons (1 stick) unsalted butter, room temperature\r\n2 large eggs\r\n3 ripe bananas\r\n1 tablespoon milk\r\n1 teaspoon ground cinnamon\r\n2 cups all-purpose flour\r\n1 teaspoon baking powder\r\n1 teaspoon baking soda\r\n1 teaspoon salt','<p>Preheat the oven to 325 degrees F. Butter a 9 x 5 x 3 inch loaf pan.\r\n</p><p>\r\nCream the sugar and butter in a large mixing bowl until light and fluffy. Add the eggs one at a time, beating well after each addition.\r\n</p><p>\r\nIn a small bowl, mash the bananas with a fork. Mix in the milk and cinnamon. In another bowl, mix together the flour, baking powder, baking soda and salt.\r\n</p><p>\r\nAdd the banana mixture to the creamed mixture and stir until combined. Add dry ingredients, mixing just until flour disappears.\r\n</p><p>\r\nPour batter into prepared pan and bake 1 hour to 1 hour 10 minutes, until a toothpick inserted in the center comes out clean. Set aside to cool on a rack for 15 minutes. Remove bread from pan, invert onto rack and cool completely before slicing.\r\n</p><p>\r\nSpread slices with honey or serve with ice cream\r\n</p>'),(26,'Chili','ckofink','soup','','1 can crushed tomatoes Lg.\r\n1 can tomato sauce \r\n2 cans chili beans bush traditional\r\n1 can chili beans bush texas style\r\n1 Lg. Onion\r\n1 lb ground beef or sausage\r\n1 tbs sugar or honey\r\n3 tbs chili powder\r\nsalt and pepper to taste\r\n\r\n','Saute ground beef or sausage in olive oil or I use olive oil spray. \r\nadd onions and cook till beef is no longer pink and onions are soft. Drain off oil.\r\nadd tomatoes, sauce, and beans.\r\nadd chili powder, honey or sugar, and salt and pepper to taste\r\nSimmer all day stirring often.  Eat with corn bread or any type of\r\nbread....'),(27,'Creme Brulee','ckofink','Dessert','uploads/300px-Cremebrulee-on-red.jpg','1 quart heavy cream\r\n1 vanilla bean, split and scraped\r\n1 cup vanilla sugar, divided\r\n6 large egg yolks\r\n2 quarts hot water','Preheat the oven to 325 degrees F.\r\n</p><p>\r\nPlace the cream, vanilla bean and its pulp into a medium saucepan set over medium-high heat and bring to a boil. Remove from the heat, cover and allow to sit for 15 minutes. Remove the vanilla bean and reserve for another use.\r\n</p><p>\r\nIn a medium bowl, whisk together 1/2 cup sugar and the egg yolks until well blended and it just starts to lighten in color. Add the cream a little at a time, stirring continually. Pour the liquid into 6 (7 to 8-ounce) ramekins. Place the ramekins into a large cake pan or roasting pan. Pour enough hot water into the pan to come halfway up the sides of the ramekins. Bake just until the creme brulee is set, but still trembling in the center, approximately 40 to 45 minutes. Remove the ramekins from the roasting pan and refrigerate for at least 2 hours and up to 3 days.\r\n</p><p>\r\nRemove the creme brulee from the refrigerator for at least 30 minutes prior to browning the sugar on top. Divide the remaining 1/2 cup vanilla sugar equally among the 6 dishes and spread evenly on top. Using a torch, melt the sugar and form a crispy top. Allow the creme brulee to sit for at least 5 minutes before serving.'),(28,'Stuffed Cabbage','akofink','Entree','uploads/stuffed-cabbage.jpg','2/3 cup water\r\n1/3 cup uncooked white rice\r\n8 cabbage leaves\r\n1 pound lean ground beef\r\n1/4 cup chopped onion\r\n1 egg, slightly beaten\r\n1 teaspoon salt\r\n1/4 teaspoon ground black pepper\r\n1 (10.75 ounce) can condensed tomato soup','In a medium saucepan, bring water to a boil. Add rice and stir. Reduce heat, cover and simmer for 20 minutes.\r\n</p><p>\r\nBring a large, wide saucepan of lightly salted water to a boil. Add cabbage leaves and cook for 2 to 4 minutes or until softened; drain.\r\n</p><p>\r\nIn a medium mixing bowl, combine the ground beef, 1 cup cooked rice, onion, egg, salt and pepper, along with 2 tablespoons of tomato soup. Mix thoroughly.\r\n</p><p>\r\nDivide the beef mixture evenly among the cabbage leaves. Roll and secure them with toothpicks or string.\r\n</p><p>\r\nIn a large skillet over medium heat, place the cabbage rolls and pour the remaining tomato soup over the top. Cover and bring to a boil. Reduce heat to low and simmer for about 40 minutes, stirring and basting with the liquid often.'),(29,'Red Beans and rice','ckofink','mexican','uploads/Red-Beans-and-Rice-4.jpg','1 Lg. Videla Onion chopped\r\n1 Tbs garlic powder\r\n2 cans kidney beans red\r\n1 can tom. sauce 14 oz\r\n2 Tbls Goya Sofrito tom. base\r\n1 pkg Sazo\'n Goya seasoning\r\n2 tsp Hot shot seasoning\r\n2 cups cooked rice','Sautee Onions and garlic powder till onions are soft\r\nadd all other ingrediants and bring to boil.\r\nLower heat to simmer and stir every so often\r\nCook rice according to pkg. \r\nserve rice with bean mixture over it.'),(30,'Refried Beans','ckofink','mexican','uploads/images.jpeg','2 cans pinto beans\r\n1-2 tsp garlic powder\r\n1-2 tsp onion powder\r\n','Empty both cans of beans into sauce pan (undrained)\r\nput on low heat and mash beans with potato masher.\r\nAdd both powders and keep mashing until it is smooth.\r\n\r\nBe careful not to cook on to high of a heat or it will stick and burn.'),(31,'Decadent Chocolate Cake','akofink','Dessert','uploads/DecadentChocolateCake.JPG','1 cup boiling water\r\n3 oz unsweetened chocolate\r\n8 tbsp sweet butter\r\n1 tsp vanilla extract\r\n2 cups granulated sugar\r\n2 eggs, separated\r\n1 tsp baking soda\r\n1/2 cup dairy sour cream\r\n2 cups less 2 tbsp unbleached, all-purpose flour, sifted\r\n1 tsp baking powder\r\n\r\nChocolate Frosting:\r\n2 tbsp sweet butter\r\n3/4 cups semisweet chocolate chips\r\n6 tbsp heavy cream\r\n1 1/4 cups sifted confectioners\' sugar, or as needed\r\n1 tsp vanilla extract','<ol>\r\n<li>Preheat oven to 350 F. Grease and flour a 10-inch tube pan. Knock out excess.</li>\r\n<li>Pour boiling water over chocolate and butter; let stand until melted. Stir in vanilla and sugar, then whisk in egg yolks, one at a time, blending well after each addition.</li>\r\n<li>Mix baking soda and sour cream and whisk into chocolate mixture.</li>\r\n<li>Sift flour and baking powder together and add to batter, mixing thoroughly.</li>\r\n<li>Beat egg whites until stiff but not dry. Stir a quarter of the egg whites thoroughly into the batter. Scoop remaining egg whites on top of the batter and gently fold together.</li>\r\n<li>Pour batter into the prepared pan. Set on the middle rack of the oven and bake for 40 to 50 minutes, or until the edges have pulled away from the sides of the pan and a cake tester inserted into the center comes out clean. Cool in pan for 10 minutes; unmold and cool completely before frosting.</li>\r\n</ol>\r\n<i>12 portions</i>\r\n<br /><br />\r\n<b>Icing</b><br />\r\nPlace all ingredients in a heavy saucepan over low heat and whisk until smooth. Cool slightly; add more sugar if necessary to achieve a spreading consistency. Spread on cake while still warm.'),(32,'Beet Soup','akofink','Soup','','3 tablespoons olive oil\r\n1 medium onion, chopped\r\n3 cloves garlic, chopped\r\n6 medium beets, peeled and chopped\r\n2 cups beef stock\r\nsalt and freshly ground pepper\r\nheavy cream','<ol>\r\n<li>\r\nWarm olive oil in a large saucepan over medium heat. Stir in onions and garlic; cook until soft but not browned, about 5 minutes. Stir in beets, and cook for 1 minute.\r\n</li><li>\r\nStir in stock, and season with salt and pepper. Bring to a boil; cover, and simmer until the beets are tender, about 20 to 30 minutes. Remove from heat, and allow to cool slightly.\r\n</li><li>\r\nIn batches, add soup to a food processor, and pulse until liquefied. Return soup to saucepan, and gently heat through. Ladle into bowls, and garnish with a swirl of cream.\r\n</li>\r\n<ol>'),(33,'Ginger Carrot Soup','akofink','Soup','uploads/GingerCarrotSoup.JPG','2 tablespoons sweet cream butter\r\n2 onions, peeled and chopped\r\n6 cups chicken broth\r\n2 pounds carrots, peeled and sliced\r\n2 tablespoons grated fresh ginger\r\n1 cup whipping cream\r\nSalt and white pepper\r\nSour cream\r\nParsley sprigs, for garnish','<p>\r\nIn a 6-quart pan, over medium high heat, add butter and onions and cook, stirring often, until onions are limp. Add broth, carrots, and ginger. Cover and bring to a boil. Reduce heat and simmer until carrots are tender when pierced.\r\n</p><p>\r\nRemove from heat and transfer to a blender. Don\'t fill the blender more than half way, do it in batches if you have to. Cover the blender and then hold a kitchen towel over the top of the blender*. Be careful when blending hot liquids as the mixture can spurt out of the blender. Pulse the blender to start it and then puree until smooth. Return to the pan and add cream, stir over high heat until hot. For a smoother flavor bring soup to a boil, add salt and pepper, to taste.\r\n</p><p>\r\nLadle into bowls and garnish with dollop sour cream and parsley sprigs.\r\n</p><p>\r\n*When blending hot liquids: Remove liquid from the heat and allow to cool for at least 5 minutes. Transfer liquid to a blender or food processor and fill it no more than halfway. If using a blender, release one corner of the lid. This prevents the vacuum effect that creates heat explosions. Place a towel over the top of the machine, pulse a few times then process on high speed until smooth.\r\n</p>');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-28  9:18:19
