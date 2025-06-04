package com.aki.what_do_i_do_backend.service;

import com.aki.what_do_i_do_backend.model.Decision;
import com.aki.what_do_i_do_backend.model.Option;
import com.aki.what_do_i_do_backend.model.Vote;
import com.aki.what_do_i_do_backend.repository.DecisionsRepository;
import com.aki.what_do_i_do_backend.web.DecisionRequestDto;
import com.aki.what_do_i_do_backend.web.DecisionResponseDto;
import com.aki.what_do_i_do_backend.web.VoteRequestDto;
import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Transactional
    public Decision createDecision(String ownerId, DecisionRequestDto decisionToCreate) {
        Decision decision = new Decision();
        decision.setDescription(decisionToCreate.description());
        decision.setOpen(decisionToCreate.open());
        //
        Option option1 = new Option();
        option1.setDecision(decision);
        option1.setOptionName(decisionToCreate.option1());
        option1.setVotes(new ArrayList<>());
        //
        Option option2 = new Option();
        option2.setDecision(decision);
        option2.setOptionName(decisionToCreate.option2());
        option2.setVotes(new ArrayList<>());
        //
        decision.setOptions(List.of(option1, option2));
        decision.setOwnerId(ownerId);
        decision.setTitle(decisionToCreate.title());
        return decisionsRepository.save(decision);
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

    public DecisionResponseDto getDecisionById(String decisionId) {
        Decision d = decisionsRepository.findById(UUID.fromString(decisionId))
                .orElseThrow(() -> new EntityNotFoundException("Decision not found"));

        if (d.getOptions().size() < 2) {
            throw new IllegalStateException("Decision must have at least 2 options");
        }

        return new DecisionResponseDto(
                d.getId(),
                d.getTitle(),
                d.getDescription(),
                d.getOpen(),
                d.getOptions().get(0).getOptionName(),
                d.getOptions().get(1).getOptionName(),
                d.getOptions().get(0).getVotes()
                        .stream()
                        .map(Vote::getUserId)
                        .toArray(String[]::new),
                d.getOptions().get(1).getVotes()
                        .stream()
                        .map(Vote::getUserId)
                        .toArray(String[]::new)
        );
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

    @Transactional
    public void createVote(String voterId, VoteRequestDto voteBody) {
        Decision decisionToVoteIn = decisionsRepository
                .getDecisionById(UUID.fromString(voteBody.decisionId()));

        boolean hasVoted = decisionToVoteIn.getOptions().stream()
                .flatMap(option -> option.getVotes().stream())
                .anyMatch(vote -> vote.getUserId().equals(voterId));

        if (hasVoted) {
            throw new IllegalArgumentException("This user has already voted in this decision");
        }

        Option optionToBeVoted = decisionToVoteIn.getOptions().get(voteBody.whichToVote());

        Vote voteToAdd = new Vote();
        voteToAdd.setOption(optionToBeVoted);
        voteToAdd.setUserId(voterId);

        optionToBeVoted.getVotes().add(voteToAdd);
        decisionsRepository.save(decisionToVoteIn);
    }

}
