package com.aki.what_do_i_do_backend.model;

import jakarta.persistence.*;

import java.util.List;
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

    @Column
    Boolean open;

    @Column
    String ownerId;

    @OneToMany(mappedBy = "decision", cascade = CascadeType.ALL)
    List<Option> options;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getOpen() {
        return open;
    }

    public void setOpen(Boolean open) {
        this.open = open;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    public List<Option> getOptions() {
        return options;
    }

    public void setOptions(List<Option> options) {
        this.options = options;
    }
}
