<?php
    header('Content-Type: text/html; charset=Latin-1;'); 
    header('Access-Control-Allow-Origin: *');
    require './include-php/constants.php';
    require './include-php/class.PDOFactory.php';
    require './include-php/class.DataBoundObject.php';
    require './include-php/class.Restaurant.php';
    require './include-php/class.Review.php';
    $objPDO = PDOFactory::GetPDO(NAME_DSN, USERNAME, PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    
    #$objRestaurant = new Restaurant($objPDO, $Id_restaurant);
    if(isset($_GET['getall'])) {
        $restaurants = Restaurant::getAllRestaurants($objPDO);
        echo str_replace('\"',"",json_encode($restaurants));
    } else if(isset($_GET['reviews'])) {
        $reviews = Review::getAllReviews($objPDO);
        echo str_replace('\"',"",json_encode($reviews));
    } else if(isset($_GET['id']) && isset($_GET['is_favorite'])) {
        $favoriteRestaurant = Restaurant::updateFavoriteRestaurant($objPDO, $_GET['id'], $_GET['is_favorite']);
        echo str_replace('\"',"",json_encode($favoriteRestaurant));
    } else if(isset($_GET['id'])) {
        $restaurant = Restaurant::getRestaurantId($objPDO,$_GET['id']);
        echo str_replace('\"',"",json_encode($restaurant));
    } else if(isset($_GET['reviews'])) {
        $review = Review::getAllReview($objPDO);
        echo str_replace('\"',"",json_encode($review));
    } else if(isset($_GET['reviews_restaurant_id'])) {
        $reviewsRestaurant = Review::getReviewsRestaurantId($objPDO,$_GET['reviews_restaurant_id']);
        echo str_replace('\"',"",json_encode($reviewsRestaurant));
    } else if(isset($_GET['add_review_restaurant_id'])) {
        $reviewRestaurant = new Review($objPDO);
        $reviewRestaurant->setRestaurant_id($_POST['restaurant_id']);
        $reviewRestaurant->setName($_POST['name']);
        $reviewRestaurant->setRating($_POST['rating']);
        $reviewRestaurant->setComments($_POST['comments']);
        $reviewRestaurant->setCreated_at((time()*1000));
        $reviewRestaurant->setUpdated_at((time()*1000));
        $errors = $reviewRestaurant->validate();
        if($errors == 0) {
            $reviewRestaurant->Save();
            echo str_replace('\"',"",json_encode($reviewRestaurant->getID()));
        }
    }
#    $now = new DateTime('now');
 #   echo $now->getTimestamp();
?>
    

