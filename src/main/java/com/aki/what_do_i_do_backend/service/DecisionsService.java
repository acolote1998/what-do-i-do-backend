package com.aki.what_do_i_do_backend.service;

import com.aki.what_do_i_do_backend.model.Decision;
import com.aki.what_do_i_do_backend.model.Vote;
import com.aki.what_do_i_do_backend.repository.DecisionsRepository;
import com.aki.what_do_i_do_backend.web.DecisionResponseDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class DecisionsService {
    DecisionsRepository decisionsRepository;

    @Autowired
    public DecisionsService(DecisionsRepository decisionsRepository) {
        this.decisionsRepository = decisionsRepository;
    }


    public DecisionsRepository getDecisionsRepository() {
        return decisionsRepository;
    }

    public void setDecisionsRepository(DecisionsRepository decisionsRepository) {
        this.decisionsRepository = decisionsRepository;
    }

    public List<DecisionResponseDto> getAllDecisionsByOwner(String ownerId) {
        List<Decision> decisions = decisionsRepository.getAllByOwnerId(ownerId);
        return decisions
                .stream()
                .map(decision ->
                        new DecisionResponseDto(decision.getId(),
                                decision.getTitle(),
                                decision.getDescription(),
                                decision.getOpen(),
                                decision.getOptions().get(0).getOptionName(),
                                decision.getOptions().get(1).getOptionName(),
                                decision.getOptions().get(0).getVotes()
                                        .stream()
                                        .map(Vote::getUserId)
                                        .toArray(String[]::new),
                                decision.getOptions().get(1).getVotes()
                                        .stream()
                                        .map(Vote::getUserId)
                                        .toArray(String[]::new)))
                .toList();
    }

    public DecisionResponseDto getDecisionByOwnerAndId(String ownerId, String decisionId) {
        Decision decision = decisionsRepository.findByOwnerIdAndId(ownerId, UUID.fromString(decisionId));
        return new DecisionResponseDto(decision.getId(),
                decision.getTitle(),
                decision.getDescription(),
                decision.getOpen(),
                decision.getOptions().get(0).getOptionName(),
                decision.getOptions().get(1).getOptionName(),
                decision.getOptions().get(0).getVotes()
                        .stream()
                        .map(Vote::getUserId)
                        .toArray(String[]::new),
                decision.getOptions().get(1).getVotes()
                        .stream()
                        .map(Vote::getUserId)
                        .toArray(String[]::new));
    }

    public List<DecisionResponseDto> getThreeRandomDecisions() {
        List<Decision> decisions = decisionsRepository.findRandomDecisions();
        return decisions
                .stream()
                .map(decision ->
                        new DecisionResponseDto(decision.getId(),
                                decision.getTitle(),
                                decision.getDescription(),
                                decision.getOpen(),
                                decision.getOptions().get(0).getOptionName(),
                                decision.getOptions().get(1).getOptionName(),
                                decision.getOptions().get(0).getVotes()
                                        .stream()
                                        .map(Vote::getUserId)
                                        .toArray(String[]::new),
                                decision.getOptions().get(1).getVotes()
                                        .stream()
                                        .map(Vote::getUserId)
                                        .toArray(String[]::new)))
                .toList();
    }

    public void deleteDecision(String decisionId) {
        if (decisionsRepository.existsById(UUID.fromString(decisionId))) {
            decisionsRepository.deleteById(UUID.fromString(decisionId));
        }
    }
}
