show databases;
create database Project1;
use Project1;

select * from sql_project;



# 1. WRITE a sql query to show all Item_Identifier

select item_identifier from sql_project;

# 2. WRITE a sql query to show count of total Item_Identifier

select count(item_identifier) as total_item_identifier from sql_project;

# 3. WRITE a sql query to show maximum Item Weight

select max(item_weight) from sql_project;

# 4. WRITE a query to show minimun Item Weight

select min(item_weight) from sql_project;

# 5. WRITE a query to show average Item_Weight

select round(avg(item_weight),2) as avg_item_weight from sql_project;

# 6. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat

select * from sql_project;

select count(item_fat_content) from sql_project where Item_Fat_Content  = 'Low Fat'; 

# 7. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular

select count(item_fat_content) from sql_project where Item_Fat_Content = 'regular' ;

# 8. WRITE a query TO show maximum Item_MRP

select max(item_mrp) from sql_project;

# 9. WRITE a query TO show minimum Item_MRP

select min(item_mrp) from sql_project;

# 10.WRITE a query to show Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP and Item_MRP IS greater than 200

select * from sql_project;

select item_identifier, item_fat_content, item_type, item_mrp from sql_project where Item_MRP >200;

# 11.WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat

select max(item_mrp) from sql_project where Item_Fat_Content = 'low fat'; 

# 12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS Low Fat

select item_mrp, item_fat_content from sql_project where Item_Fat_Content = 'low fat';

# 13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100

select * from sql_project where Item_MRP between 50 and 100 ;

# 14.WRITE a query to show ALL UNIQUE value Item_Fat_Content

select distinct item_fat_content from sql_project;

# 15.WRITE a query to show ALL UNIQUE value Item_Type

select distinct Item_Type  from sql_project;

# 16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP

select * from sql_project order by Item_MRP desc;

# 17.WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales

select * from sql_project order by Item_Outlet_Sales asc ;

# 18.WRITE a query to show ALL DATA IN ascending BY Item_Type

select * from sql_project order by Item_Type asc;

# 19.WRITE a query to show DATA OF item_type dairy & Meat

select * from sql_project where Item_Type = 'dairy' and Item_Type = 'meat';

# 20.WRITE a query to show ALL UNIQUE value OF Outlet_Size

select distinct Outlet_Size  from sql_project;

# 21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type

select distinct Outlet_Location_Type  from sql_project;

# 22.WRITE a query to show ALL UNIQUE value OF Outlet_Type

select distinct Outlet_Type  from sql_project;

# 23.WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending

select count(item_type) as no_of_item, Item_Type   from sql_project group by Item_Type  order by Item_Type desc;

# 24.WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending

select count(item_type) as no_of_item, Outlet_Size from sql_project group by Outlet_Size order by Item_Type asc ;

# 25.WRITE a query to show count NO. OF item BY

select count(item_type) as no_of_item from sql_project;

# 26.WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending

select count(item_type) as no_of_item, Outlet_type from sql_project group by Outlet_type order by Item_Type desc  ;

# 27.WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending

select * from sql_project;
select outlet_location_type, count(item_type) as no_of_item from sql_project group by Outlet_Location_Type order by Item_Type desc;


# 28.WRITE a query to show maximum MRP BY Item_Type

select item_type, round(max(item_mrp),2) as max_mrp from sql_project group by Item_Type order by Item_MRP  desc ; 
select * from sql_project;

# 29.WRITE a query to show minimum MRP BY Item_Type

select item_type, min(item_mrp) as min_mrp from sql_project group by Item_Type order by Item_MRP desc ; 

# 30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending

select min(item_mrp) min_price, Outlet_Establishment_Year from sql_project group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc ;

select * from sql_project;

# 31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending

select max(item_mrp) as max_price, Outlet_Establishment_Year from sql_project group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc ;

# 32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending

select avg(item_mrp) as average_price, Outlet_Size from sql_project group by Outlet_Size order by Outlet_Size desc;

# 33.WRITE a query to show average MRP BY Outlet_Size

select round(avg(item_mrp),2) as average_price, Outlet_Size from sql_project group by Outlet_Size;

# 34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending

select round(avg(item_mrp),2) as average_price, Outlet_type from sql_project group by Outlet_Type order by average_price asc;

# 35.WRITE a query to show maximum MRP BY Outlet_Type

select round(max(item_mrp),2) as max_price, outlet_type from sql_project group by Outlet_Type;

# 36.WRITE a query to show maximum Item_Weight BY Item_Type

select max(Item_Weight)  as max_weight, Item_Type from sql_project group by item_Type;

# 37.WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year

select max(Item_Weight)  as max_weight, Outlet_Establishment_Year from sql_project group by Outlet_Establishment_Year ;

# 38.WRITE a query to show minimum Item_Weight BY Outlet_Type

select min(item_weight) as min_weight, outlet_type from sql_project group by Outlet_Type;

# 39.WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending

select round(avg(item_weight),2) as avg_wt , outlet_location_type from sql_project group by Outlet_Location_Type order by avg_wt desc;

# 40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type

select* from sql_project;
select round(max(item_outlet_sales),2) as Max_sales, item_type from sql_project group by Item_Type; 

# 41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type

select round(min(item_outlet_sales),2) as Min_sales, item_type from sql_project group by Item_Type;

# 42.WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year

select round(min(item_outlet_sales),2) as Min_sales, Outlet_Establishment_Year  from sql_project group by Outlet_Establishment_Year;

# 43.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending

select round(max(item_outlet_sales),2) as Max_sales, Outlet_Establishment_Year from sql_project group by Outlet_Establishment_Year 
order by max_sales desc ;

# 44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending

select round(avg(item_outlet_sales),2) as avg_sales, outlet_size from sql_project group by Outlet_Size order by avg_sales desc; 

# 45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size

select round(avg(item_outlet_sales),2) as avg_sales, outlet_size from sql_project group by Outlet_Size;

# 46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type

select round(avg(item_outlet_sales),2) as avg_sales, outlet_type from sql_project group by Outlet_Type;

# 47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type

select round(max(item_outlet_sales),2) as MAX_SALES, outlet_type from sql_project group by outlet_type; 

# 48.WRITE a query to show total Item_Outlet_Sales BY

select item_outlet_sales from sql_project;

# 49.WRITE a query to show total Item_Outlet_Sales BY Item_Type

select round(sum(item_outlet_sales),2) as total_outlet_sales, item_type from sql_project group by Item_Type order by Item_Type asc; 

# 50.WRITE a query to show total Item_Outlet_Sales BY

# 51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content

select * from sql_project;
select round(sum(item_outlet_sales),2) as total_outlet_sales, Item_Fat_Content from sql_project group by Item_Fat_Content order by Item_Fat_Content asc;

# 52.WRITE a query to show maximum Item_Visibility BY Item_Type

select round(max(item_visibility),2) as max_visibility, item_type from sql_project group by Item_Type order by Item_Visibility asc ; 

# 53.WRITE a query to show Minimum Item_Visibility BY Item_Type

select min(item_visibility) as min_visibility, item_type from sql_project group by Item_Type ; 

# 54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1

select round(sum(item_outlet_sales),2) as total_sales, Item_Type  from sql_project where Outlet_Location_Type = 'tier 1' group by Item_Type;


# 55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF

select sum(item_outlet_sales), Item_Type, Item_Fat_Content from sql_project where Item_Fat_Content = 'Lf' or Item_Fat_Content = 'low fat'
group by Item_Type; 

select item_outlet_sales from sql_project where Item_Fat_Content = 'LF';