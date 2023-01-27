<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Flights</title>
</head>
<body>
     <h2>List Of All Flights</h2>
     
     <table border="1">
       <tr>
        <th>Flight_Number</th>
        <th>Operating_Airlines</th>
        <th>Departure_City</th>
        <th>Arrival_City</th>
        <th>Date_Of_Departure</th>
        <th>Estimated_Departure_Time</th>
        <th>Select_Flight</th>
       </tr>
    <c:forEach var="flight"  items="${flight}">
       <tr>
        <td>${flight.flightNumber}</td>
        <td>${flight.operatingAirlines}</td>
         <td>${flight.departureCity}</td>
          <td>${flight.arrivalCity}</td>
           <td>${flight.dateOfDeparture}</td>
            <td>${flight.estimatedDepartureTime}</td>
            <td><a href="showCompleteReservation?flightId=${flight.id}">select</a></td>
       </tr>
    
    </c:forEach>  
     
     
     </table>
</body>
</html>