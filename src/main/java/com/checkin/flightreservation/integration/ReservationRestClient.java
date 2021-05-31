package com.checkin.flightreservation.integration;


import com.checkin.flightreservation.integration.dto.Reservation;
import com.checkin.flightreservation.integration.dto.ReservationUpdateRequest;

public interface ReservationRestClient {
    public Reservation findReservation(Long id);

    public Reservation updateReservation(ReservationUpdateRequest request);
}
