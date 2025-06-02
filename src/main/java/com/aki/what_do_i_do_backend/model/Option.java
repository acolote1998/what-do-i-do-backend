package com.aki.what_do_i_do_backend.model;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "options")
public class Option {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    UUID id;

    @ManyToOne
    @JoinColumn(name = "decision_id")
    Decision decision;

    @Column
    String option_name;
}
