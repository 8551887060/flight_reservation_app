<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show Reservation</title>
</head>
<body>
    <h2>Flight Details</h2>
    
    Flight Number:${flight.flightNumber}<br>
    Operating Airlines:${flight.operatingAirlines}<br>
    Departure City:${flight.departureCity}<br>
    Arrival City:${flight.arrivalCity}<br>
    Date Of Departure:${flight.dateOfDeparture}<br>
    Estimated Departure Time:${flight.estimatedDepartureTime}<br>
    <form action="confirmReservation" method="post">
    <h2>Enter Passenger Details</h2>
    <pre>
    First Name:<input type="text" name="firstName"/>
    Last Name:<input type="text" name="lastName"/>
    Middle Name:<input type="text" name="middleName"/>
    Email:<input type="text" name="email"/>
    Phone:<input type="text" name="phone"/>
    <input type="hidden" name="flightId" value="${flight.id}"/>
     </pre>
    <h2>Enter The Payment Details</h2>
     <pre>
    Name Of The Card:<input type="text" name="nameOfTheCard"/>
    Card Number:<input type="text" name="cardNumber"/>
    Cvv:<input type="text" name="cvv"/>
   Expiry Date:<input type="text" name="expiryDate"/>
    <input type="submit" value="complete reservation"/>
    </pre>
    </form>
</body>
</html>