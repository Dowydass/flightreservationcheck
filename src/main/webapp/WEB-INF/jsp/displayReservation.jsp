<%--
  Created by IntelliJ IDEA.
  User: DovydasIT
  Date: 5/29/2021
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Skrydžių rezervacija</title>
</head>
<body>
<h2>Informacija apie skrydį:</h2>


Aviakompanija: ${reservation.flight.operatingAirlines}
Skrydžio numeris: ${reservation.flight.flightNumber}
Išvykimo šalis: ${reservation.flight.departureCity}
Atvykimo šalis: ${reservation.flight.arrivalCity}
Išvykimo data: ${reservation.flight.dateOfDeparture}
Numatomas išvykimo laikas: ${reservation.flight.estimateDepartureTime}

<h2>Passenger Details</h2>
Vardas: ${reservation.pasenger.firstName}
Pavarde: ${reservation.pasenger.lastName}
El. paštas: ${reservation.pasenger.email}
Telefonas: ${reservation.pasenger.phone}


<form action="completeCheckIn" method="post">
    Įveskite norimų įsiregistruoti krepšių skaičių: <input type="text" name="numberOfBags"/>
    <input type="hidden" value="${reservation.id}"/>
            <input type="submit" value="Patvirtinti"/>

</form>
</body>
</html>
