package com.flight_reservation_app.service;

import com.flight_reservation_app.dto.ReservationRequest;
import com.flight_reservation_app.entities.Reservation;

public interface ReservationService {

	public Reservation bookFlight(ReservationRequest request);
}
