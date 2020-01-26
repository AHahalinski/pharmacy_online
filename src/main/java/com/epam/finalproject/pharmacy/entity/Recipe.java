package com.epam.finalproject.pharmacy.entity;

import java.sql.Date;
import java.time.LocalDate;

public class Recipe implements Identifable {
    public final static String NAME_TABLE_IN_DB = "recipes";
    public final static String COLUMN_ID = "id";
    public final static String COLUMN_CREATION_DATE = "creationDate";
    public final static String COLUMN_EXP_DATE = "expDate";
    public final static String COLUMN_MEDICAMENT_ID = "medicamentId";
    public final static String COLUMN_AMOUNT = "amount";
    public final static String COLUMN_PATIENT_ID = "patientId";
    public final static String COLUMN_DOCTOR_ID = "doctorId";

    private final Long id;
    private final LocalDate createdDate;
    private final LocalDate expDate;
    private final Long medicamentId;
    private final Integer amount;
    private final Long patientId;
    private final Long doctorId;


    public Recipe(Long id, LocalDate createdDate, LocalDate expDate, Long medicamentId, Integer amount,
                  Long patientId, Long doctorId) {
        this.id = id;
        this.createdDate = createdDate;
        this.expDate = expDate;
        this.medicamentId = medicamentId;
        this.amount = amount;
        this.patientId = patientId;
        this.doctorId = doctorId;
    }

    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public LocalDate getExpDate() {
        return expDate;
    }

    public Long getMedicamentId() {
        return medicamentId;
    }

    public Integer getAmount() {
        return amount;
    }

    public Long getPatientId() {
        return patientId;
    }

    public Long getDoctorId() {
        return doctorId;
    }

    @Override
    public Long getId() {
        return id;
    }
}
