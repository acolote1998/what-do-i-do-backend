package com.aki.what_do_i_do_backend.repository;

import com.aki.what_do_i_do_backend.model.Decision;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface DecisionsRepository extends ListCrudRepository<Decision, UUID> {
    List<Decision> getAllByOwnerId(String ownerId);

    Decision findByOwnerIdAndId(String ownerId, UUID id);

    @Query(value = "SELECT * FROM decisions ORDER BY RANDOM() LIMIT 3", nativeQuery = true)
    List<Decision> findRandomDecisions();

    Decision getDecisionById(UUID id);
}
