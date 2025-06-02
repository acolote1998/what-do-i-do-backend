package com.aki.what_do_i_do_backend.model;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "decisions")
public class Decision {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    UUID id;
    @Column
    String title;
    @Column
    String description;
}
