<?php
    class Restaurant extends DataBoundObject {
        protected $Name;
        protected $Neighborhood;
        protected $Photograph_maxw;
        protected $Photograph_1x;
        protected $Photograph_2x;
        protected $Address;
        protected $Latlng;
        protected $Cuisine_type;
        protected $Operating_hours;
        protected $Created_at;
        protected $Updated_at;
        protected $Is_favorite;

        protected function DefineTableName() {
            return("restaurants");
        }
        
        protected function DefineNameID() {
            return("id");
        }
        
        protected function DefineRelationMap() {
            return (array(
                "id" => "ID",
                "name" => "Name",
                "neighborhood" => "Neighborhood",
                "photograph_maxw" => "Photograph_maxw",
                "photograph_1x" => "Photograph_1x",
                "photograph_2x" => "Photograph_2x",
                "address" => "Address",
                "latlng" => "Latlng",
                "cuisine_type" => "Cuisine_type",
                "operating_hours" => "Operating_hours",
                "createdAt" => "Created_at",
                "updatedAt" => "Updated_at",
                "is_favorite" => "Is_favorite"
            ));
        }
        
        public function validate() {
            /*
            //Id Catalogazione
            if(empty($this->Id_catalog))
            {
                $this->errors['Id_catalog'] = '&Egrave; obbligatorio scegliera una CATALOGAZIONE.';
            }
            else if (!preg_match('|^[0-9]+$|', $this->Id_catalog))
            {
                $this->errors['Id_catalog'] = 'Hai inserito una CATALOGAZIONE non corretta.';
            }
            
            //Id Iscritto
            if(empty($this->Id_iscritto))
            {
                $this->errors['Id_iscritto'] = '&Egrave; obbligatorio scegliere il NUMERO TESSERA DELL\'ISCRITTO.';
            }
            else if (!preg_match('|^[0-9]+$|', $this->Id_iscritto))
            {
                $this->errors['Id_iscritto'] = 'Hai inserito un NUMERO TESSERA DELL\'ISCRITTO non corretto.';
            }
            
            //Data Prestito
            if(empty($this->Date_pres))
            {
                $this->errors['Date_prestito'] = '&Egrave; obbligatorio inserire la DATA DEL PRESTITO.';
            }
            else if (!preg_match('|^[0-9]{4}-[0-9]{2}-[0-9]{2}[ ]{1}[0-9]{2}[:]{1}[0-9]{2}[:]{1}[0-9]{2}$|', $this->Date_pres))
            {
                $this->errors['Date_prestito'] = 'Hai inserito una DATA DEL PRESTITO non corretta.';
            }
            
            //Data Restituzione
            if(empty($this->Date_res))
            {
                $this->errors['Date_restituzione'] = '&Egrave; obbligatorio inserire la DATA DELLA RESTITUZIONE.';
            }
            else if (!preg_match('|^[0-9]{4}-[0-9]{2}-[0-9]{2}[ ]{1}[0-9]{2}[:]{1}[0-9]{2}[:]{1}[0-9]{2}$|', $this->Date_res))
            {
                $this->errors['Date_restituzione'] = 'Hai inserito una DATA DELLA RESTITUZIONE non corretta.';
            }
            
            //Resa
            if(empty($this->Resa))
            {
                $this->errors['Resa'] = '&Egrave; obbligatorio inserire la RESA.';
            }
            else if ($this->Resa != "Y" && $this->Resa != "N")
            {
                $this->errors['Resa'] = 'Hai inserito un valore per RESA non corretto.';
            }
            
            //Controllo se sono presenti errori
            if(sizeof($this->errors) > 0)
            {
                return $this->errors;
            }     
             * */
        }
        
        public static function getAllRestaurants($objPDO)
        {
            $i = 0;
            $restaurants = array();
            $strQuery = 'SELECT * FROM restaurants';
            $objStatement = $objPDO->prepare($strQuery);
            $objStatement->execute();
            while($arRow = $objStatement->fetch(PDO::FETCH_ASSOC))
            {
                foreach($arRow as $key => $value)
                {
                    $restaurants[$i][$key] = $value;
                }
                $i++;
            }
            return $restaurants;
        }
        
        public static function getRestaurantId($objPDO,$id_restaurant)
        {
            $restaurant = array();
            $strQuery = 'SELECT * FROM restaurants WHERE id = :id_restaurant';
            $objStatement = $objPDO->prepare($strQuery);
            $objStatement->bindParam(':id_restaurant',$id_restaurant,PDO::PARAM_INT);
            $objStatement->execute();
            while($arRow = $objStatement->fetch(PDO::FETCH_ASSOC))
            {
                foreach($arRow as $key => $value)
                {
                    $restaurant[$key] = $value;
                }
            }
            return $restaurant;
        }
        
        public static function updateFavoriteRestaurant($objPDO,$id_restaurant,$favorite)
        {
            $strQuery =  "UPDATE restaurants SET is_favorite = :favorite WHERE id = :restaurant_id";
            $objStatement = $objPDO->prepare($strQuery);
            $objStatement->bindParam(':restaurant_id',$id_restaurant,PDO::PARAM_INT);
            $objStatement->bindParam(':favorite',$favorite,PDO::PARAM_STR);
            $objStatement->execute();
            
            return Restaurant::getRestaurantId($objPDO, $id_restaurant);
        }
        
    }
?>

