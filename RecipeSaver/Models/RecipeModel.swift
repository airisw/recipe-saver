//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Airis Wang on 7/26/23.
//

import Foundation

enum Category: String {
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue  // to read the value and not the case itself
    let datePublished: String
    let url: String
}

extension Recipe {
    // all property is shared among all instances of the struct Recipe
    static let all: [Recipe] = [
    Recipe(
        name: "Brazilian Beef Stroganoff",
        image: "https://braziliankitchenabroad.com/wp-content/uploads/2020/02/beef-strogonoff-1.jpg",
        description: "This Brazilian Beef Stroganoff is a delicious comfort food that your family is going to love. It’s made with tender pieces of beef, smothered in a creamy sauce, and typically served with little potato sticks on top, adding fun and texture. The best part? This dish is so quick and easy to prepare that you can have dinner ready and on the table in 30 minutes.",
        ingredients: "1 Tbsp olive oil\n1.5 lbs high quality beef such as fillet mignon, beef tenderloin, top sirloin, ribeye steak cut into cubes or sliced into strips\n1 medium onion, diced\n2 Tbsp Brazilian sofrito or 3 cloves of garlic, minced\n8 oz white mushrooms, sliced\n6 oz tomato paste\n2 Tbsp ketchup\n2 Tbsp Worcestershire sauce\n2 cups heavy cream\nsalt and pepper to taste",
        directions: "Season the beef pieces with salt and pepper, and let it sit on the counter at room temperature for about 15-20 minutes.\nPlace a large heavy bottomed pan or dutch oven over medium to high heat. Add the olive oil, and when the oil is hot, add in the beef pieces, and quick sear them in a single layer, no longer than a minute or 2.\nRemove the beef from the pan, place it on a plate and reserve.\nUsing that same pan, sauté the onions over medium heat – about 2-3 minutes.\nAdd the garlic, and sauté until fragrant – about 1-2 minutes.\nAdd the sliced mushrooms, and sauté until the mushrooms wilt down – about 5-6 mins.\nAdd the beef back in, then the tomato paste, the Worcestershire, and the ketchup and saute for about 2 minutes, stirring.\nAdd 1/4 cup of water to the pan, and simmer a couple of minutes, stirring and scraping any bits off the sides and bottom of the pan.\nAdd in the the cream, and simmer just a couple more minutes and you're all done!",
        category: "Main",
        datePublished: "2020-02-09",
        url: "https://braziliankitchenabroad.com/brazilian-beef-stroganoff/"
    ),
    Recipe(
        name: "Caldo Verde - Portuguese Green Soup",
        image: "https://braziliankitchenabroad.com/wp-content/uploads/2019/04/caldo-verde-reshoot-7.jpg",
        description: "This Caldo Verde recipe is seriously the most delicious soup of all! It’s made with only 5 easy to find ingredients and peeling potatoes is as hard as this gets. This Portuguese green soup hits the spot and brings you all the warmth and comfort you need on a cool night. It’s comfort food at it’s very best!",
        ingredients: "3 lbs of yellow potatoes peeled and diced into about an inch cubes\n1 13oz Smoked sausage sliced\n1 onion, diced about a cup\n1 tablespoons Brazilian sofrito or 4 cloves of garlic, minced\n1-2 bunches of collard greens stemmed and cut thin\nsalt and pepper to taste\n2 Tbsp of olive oil plus more to serve",
        directions: "On stovetop, heat up a 5.5 quart pan or large stock pot over medium to high heat and add the 2 Tbsp of olive oil.\nAdd the onions, and cook until transparent, about 2 mins.\nAdd the sausage, and cook until lightly browned, 5 mins.\nAdd the garlic, and cook until fragrant, about 2 mins.\nRemove the sausage from the pan and set aside in a bowl.\nAdd the potatoes to the stock pot, season with salt and cover with water (about 7 cups). Let it cook until potatoes are soft.\nWhen the potatoes are fully cooked, remove half of the potatoes from the pot and set them aside with the sausage.\nUsing an immersion blender blend the other half of the potatoes in the stock pot with the water they cooked in.\nReturn the sausage and and the potatoes to the stock pot, season with salt and pepper, stir.\nAdd the collard greens, stir.\nDrizzle with olive oil and serve with bread.",
        category: "Main",
        datePublished: "2018-11-19",
        url: "https://braziliankitchenabroad.com/green-soup/"),
    Recipe(
        name: "Molho a Campanha - Brazilian Salsa Vinaigratte",
        image: "https://braziliankitchenabroad.com/wp-content/uploads/2019/04/brazilian-salsa-reshoot-5.jpg",
        description: "If you ask me, there is no complete churrasco without Molho a Campanha (Brazilian salsa).  If you don’t already know, Molho a Campanha is a bright vinaigrette simply made with diced tomatoes, green bell peppers, and onions.  It is a must have side dish in Brazilian barbecues!  Why?  Because this little sauce is just THE perfect accompaniment to all things grilled!",
        ingredients: "1 cup tomatoes, cored and diced about 3 tomatoes\n1 cup diced green bell pepper about 1 small bell pepper (cored, seeded and diced)\n1 cup diced onion about 1/2 an onion\n½ cup of a good olive oil\n¼ white wine vinegar or more if you like it more vinegary\nSalt and pepper to taste\n2 Tbsp of finely chopped cilantro",
        directions: "Add the vegetables to a large bowl\nAdd the oil and vinegar\nSeason with salt and pepper\nAdd the cilantro and give it a stir to combine everything\nCover and let it sit in the fridge for at least a half hour",
        category: "Side",
        datePublished: "2017-03-16",
        url: "https://braziliankitchenabroad.com/brazilian-salsa/"),
    Recipe(
        name: "Batida de Coco - Brazilian Coconut Cocktail",
        image: "https://braziliankitchenabroad.com/wp-content/uploads/2019/09/batida-de-coco-3.jpg",
        description: "Batida de Coco is a classic Brazilian coconut cocktail that you can make in just a few minutes, with easy to find ingredients. This sweet tropical drink is creamy and full of coconut flavor, bringing a taste of summer to your parties all year round! – Recipe makes 4 servings, easily doubled!",
        ingredients: "1 13.5oz can of coconut milk *I use GOYA\n1 14oz can of sweet condensed milk\n1 cup of cachaça, or any other white rum – Vodka is also ok\n1 cup of coconut water or you can just use water, extra liquor, or a combination of both for how sweet and how strong you like.\nIce\n1/4 cup of toasted coconut (optional)",
        directions: "Fill a pitcher with ice, and set aside.\nAdd the coconut milk, the condensed milk, the coconut water, and the cachaça to a blender and blend until combined and frothy.\nPour the coconut cocktail into the iced pitcher, and sprinkle a little toasted coconut on top.\nServe on toasted coconut rimmed glasses!",
        category: "Drink",
        datePublished: "2019-09-22",
        url: "https://braziliankitchenabroad.com/brazilian-coconut-cocktail/"),
    Recipe(
        name: "Brazilian Potato Salad",
        image: "https://braziliankitchenabroad.com/wp-content/uploads/2020/06/maionese-de-batata-7.jpg",
        description: "This Brazilian Potato salad is a classic side dish in Brazilian gatherings, especially churrasco barbecues. This cool and creamy dish is perfect for feeding a crowd, and the best part is – you only need about four ingredients to make it. It’s an easy potato dish that pairs with everything all year long, from summer barbecues to holiday parties.",
        ingredients: "2 lbs of yellow potatoes peeled and diced\n3 cups large carrots peeled and diced\n1/2 cup mayonnaise or more if you like it creamier\n1/4 cup of chopped parsley\nsalt and pepper to taste",
        directions: "Place the diced potatoes and carrots in a medium to large pan, then add enough cold water to cover. Season generously with salt, and place over medium heat and bring to gentle a boil.\nCook until the potatoes and carrots are tender all the way through when gently pierced with a fork.\nWhen they are cooked, remove the pan from the heat and drain the hot water.\nPlace the cooked carrots and potatoes in a strainer, and run some cold water to stop the cooking process and avoid the potatoes to overcook with the residual heat.\nWhen the carrots and potatoes are cool to touch, stop the water and let them sit for a few minutes in the strainer to drain.\nAdd the cooled potatoes to a large bowl, season with salt and pepper, and mix in the mayonnaise and the chopped parsley.\nCover and refrigerate a few hours before serving.",
        category: "Side",
        datePublished: "2017-08-30",
        url: "https://braziliankitchenabroad.com/mayo-potato-salad/")]
}
