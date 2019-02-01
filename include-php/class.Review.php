<?php
    class Review extends DataBoundObject {
        protected $Restaurant_id;
        protected $Name;
        protected $Created_at;
        protected $Updated_at;
        protected $Rating;
        protected $Comments;

        protected function DefineTableName() {
            return("reviews");
        }
        
        protected function DefineNameID() {
            return("id");
        }
        
        protected function DefineRelationMap() {
            return (array(
                "id" => "ID",
                "restaurant_id" => "Restaurant_id",
                "name" => "Name",
                "createdAt" => "Created_at",
                "updatedAt" => "Updated_at",
                "rating" => "Rating",
                "comments" => "Comments"
            ));
        }
        
        public function validate() {
            
            //Id Restaurant
            if(empty($this->Restaurant_id))
            {
                $this->errors['Restaurant_id'] = '&Egrave; obbligatorio l\'ID DEL RISTORANTE.';
            }
            else if(!preg_match('|^[0-9]+$|', $this->Restaurant_id))
            {
                $this->errors['Restaurant_id'] = 'Hai inserito un ID DEL RISTORANTE non corretto.';
            }
            
            //Name
            if(empty($this->Name))
            {
                $this->errors['Name'] = '&Egrave; obbligatorio il NOME.';
            }
            
            //Rating
            if(empty($this->Rating))
            {
                $this->errors['Rating'] = '&Egrave; obbligatorio inserire il VOTO.';
            }
            else if(!preg_match('|^[1-5]{1}$|', $this->Rating))
            {
                $this->errors['Rating'] = 'Hai inserito un VOTO non corretto.';
            }
            
            //Comments
            if(empty($this->Comments))
            {
                $this->errors['Comments'] = '&Egrave; obbligatorio il COMMENTO.';
            }
            
            //Controllo se sono presenti errori
            if(sizeof($this->errors) > 0)
            {
                return $this->errors;
            }     
        }
        
        public static function getAllReviews($objPDO)
        {
            $i = 0;
            $reviews = array();
            $strQuery = 'SELECT * FROM reviews';
            $objStatement = $objPDO->prepare($strQuery);
            $objStatement->execute();
            while($arRow = $objStatement->fetch(PDO::FETCH_ASSOC))
            {
                foreach($arRow as $key => $value)
                {
                    $reviews[$i][$key] = $value;
                }
                $i++;
            }
            return $reviews;
        }
        
        public static function getReviewsRestaurantId($objPDO,$id_restaurant)
        {
            $i = 0;
            $reviewsRestaurant = array();
            $strQuery = 'SELECT * FROM reviews WHERE restaurant_id = :restaurant_id';
            $objStatement = $objPDO->prepare($strQuery);
            $objStatement->bindParam(':restaurant_id',$id_restaurant,PDO::PARAM_INT);
            $objStatement->execute();
            while($arRow = $objStatement->fetch(PDO::FETCH_ASSOC))
            {
                foreach($arRow as $key => $value)
                {
                    $reviewsRestaurant[$i][$key] = $value;
                }
                $i++;
            }
            return $reviewsRestaurant;
        }
                
    }
?>

