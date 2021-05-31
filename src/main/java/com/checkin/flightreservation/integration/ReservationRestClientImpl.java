package com.checkin.flightreservation.integration;

import com.checkin.flightreservation.integration.dto.Reservation;
import com.checkin.flightreservation.integration.dto.ReservationUpdateRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class ReservationRestClientImpl implements ReservationRestClient{

    public Reservation findReservation(Long id){

        RestTemplate restTemplate = new RestTemplate();
        Reservation reservation = restTemplate
                .getForObject("http://localhost:8080/flightreservation/" + id, Reservation.class );
            return reservation;
    }
        @Override
    public Reservation updateReservation(ReservationUpdateRequest request){
        RestTemplate restTemplate = new RestTemplate();
        Reservation reservation = restTemplate.postForObject("http://localhost:8080/flightreservation/reservations/", request, Reservation.class );
        return reservation;
    }
}
