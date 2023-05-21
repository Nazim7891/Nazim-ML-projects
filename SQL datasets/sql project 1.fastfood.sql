SELECT * FROM muhammed_nasim.fastfood;

/* fetching total items*/
select count( item )from fastfood;

/*selecting items where colories and cal_fat is greater than 500*/
select item,calories,cal_fat from fastfood where calories>500 and cal_fat>500;

/* selecting foods where protein is higher than 30*/
select item,protein from fastfood where protein>30;

/* selecting items where restaurant is mcdonalds and protein is higher than 30*/
select item,protein from fastfood where restaurant = 'mcdonalds'  and(protein>30 );

/* count of items where restaurant is mcdonalds and protein is higher than 30*/
select count(item and protein) from fastfood where restaurant = 'mcdonalds'  and(protein>30 );

/* selecting items where restaurant is subway and protein is between 30 and 40 */
select item,protein from fastfood where restaurant = 'subway'  and(protein between 30 and 40 );

/* fetchig sugar and fiber in restaurant items in ascending format */ 
select item,sugar,fiber, restaurant from fastfood  sugar, fiber;

/*which restauarant has highest protein item*/
SELECT item, protein,restaurant
FROM fastfood
WHERE protein = (SELECT max(protein) FROM fastfood);

/*which restauarant has highest sodium item*/
SELECT item, sodium,restaurant
FROM fastfood
WHERE sodium = (SELECT max(sodium) FROM fastfood);

/*which restauarant has lowest sodium item*/
SELECT item, sodium,restaurant
FROM fastfood
WHERE sodium = (SELECT min(sodium) FROM fastfood);

/*which restauarant has highest vitamin c item*/
SELECT item,restaurant, vit_c
FROM fastfood
WHERE  vit_c = (SELECT max( vit_c ) FROM fastfood);

/* all beef items*/
select * from fastfood where item like '%beef%';

/* all items with included cheese*/
select * from fastfood where item like '%chees%';

