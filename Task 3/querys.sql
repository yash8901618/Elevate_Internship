SELECT * FROM "Bookings";

--1. retrieve alL succesfull bookkings:
CREATE VIEW Successful_Bookings AS
SELECT * 
FROM "Bookings" 
WHERE booking_status='Success';


--2. Find the average ride distance for each vehical type
CREATE VIEW ride_distance_for_each_vehicle AS
SELECT vehicle_type , AVG(ride_distance:: numeric) 
AS Avg_ride_Distance
FROM "Bookings"
  WHERE vehicle_type IS NOT NULL
   AND ride_distance IS NOT NULL
GROUP BY (vehicle_type)
;

--3. get the total number of cancelled ride by customer
CREATE VIEW number_of_cancelled_ride_by_customer AS
SELECT COUNT(*) FROM "Bookings"
WHERE booking_status ='Canceled by Customer'
;

--4. List the top 5 customer who  booked the highest number of rides
CREATE VIEW top_5_customer_booked_highest_number_of_rides AS
SELECT customer_id ,
       COUNT(booking_id) AS total_rides
FROM "Bookings"
GROUP BY customer_id
ORDER BY total_rides DESC LIMIT 5
;

SELECT * FROM top_5_customer_booked_highest_number_of_rides;

--5.Get the number of rides canceled by drivers due to personal and car-related issues:
CREATE VIEW number_of_rides_camceled_by_driver_P_C_issue AS
SELECT COUNT(*) FROM "Bookings"
WHERE canceled_rides_by_driver= 'Personal & Car related issue'
;

SELECT * FROM number_of_rides_camceled_by_driver_P_C_issue ;

--6. Find the maximum and minimum driver ratings for Prime sedan bookings:
CREATE VIEW max_min_driver_ratings AS 
SELECT MAX(NULLIF(driver_ratings, 'null') :: numeric) AS max_rating ,-- in CSV that colum s contain null string so to convert that into numeric we use 
MIN(NULLIF(driver_ratings, 'null') :: numeric) AS min_ratings 
FROM "Bookings"
WHERE vehicle_type = 'Prime Sedan'
AND driver_ratings IS NOT NULL
AND driver_ratings <> ''
;
SELECT * FROM max_min_driver_ratings;

--7find the average customer ratings per vehicle type 
CREATE VIEW avg_customer_ratings AS
SELECT AVG(NULLIF(customer_rating , 'null'):: numeric) AS avg_ratings
FROM "Bookings"
GROUP BY (vehicle_type)
;
SELECT * FROM avg_customer_ratings;

--8. Calculate the total bookings value of rides complets successfullly
CREATE VIEW total_booking_value AS
SELECT SUM(NULLIF(booking_value ,'null') :: numeric) AS total_booking_value
FROM "Bookings"
WHERE booking_status ='Success'
AND booking_value IS NOT NULL
;
SELECT * FROM total_booking_value ;

--9. list all incomplete rides along with the reason:
CREATE VIEW incomplete_rides_with_reason AS
SELECT booking_id,
       incomplete_rides_reason
FROM "Bookings"
WHERE incomplete_rides ='Yes'
;
SELECT * FROM incomplete_rides_with_reason;

