package com.aki.what_do_i_do_backend.repository;

import com.aki.what_do_i_do_backend.model.Vote;
import org.springframework.data.repository.ListCrudRepository;

import java.util.UUID;

public interface VotesRepository extends ListCrudRepository<Vote, UUID> {
}
