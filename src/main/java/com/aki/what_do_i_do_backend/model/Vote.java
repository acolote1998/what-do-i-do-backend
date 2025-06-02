package com.aki.what_do_i_do_backend.model;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "votes")
public class Vote {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    UUID uuid;

    @Column
    String user_id;

    @ManyToOne
    @JoinColumn(name = "option_id")
    Option option;
}
