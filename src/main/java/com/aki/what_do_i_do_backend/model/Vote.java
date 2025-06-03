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
    String userId;

    @ManyToOne
    @JoinColumn(name = "option_id")
    Option option;

    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Option getOption() {
        return option;
    }

    public void setOption(Option option) {
        this.option = option;
    }
}
