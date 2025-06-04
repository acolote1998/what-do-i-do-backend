package com.aki.what_do_i_do_backend.web;

import com.aki.what_do_i_do_backend.model.Decision;
import com.aki.what_do_i_do_backend.service.DecisionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping(value = {"/decisions", "/decisions/"})
public class Controller {

    DecisionsService service;

    @Autowired
    public Controller(DecisionsService service) {
        this.service = service;
    }

    @GetMapping
    ResponseEntity<List<DecisionResponseDto>> getAll(@AuthenticationPrincipal Jwt jwt) {
        String decisionOwner = jwt.getSubject();
        return ResponseEntity.ok(service.getAllDecisionsByOwner(decisionOwner));
    }

    @GetMapping("/{decisionId}")
    ResponseEntity<DecisionResponseDto> getById(@PathVariable String decisionId) {
        return ResponseEntity.ok(service.getDecisionById(decisionId));
    }

    @GetMapping("/random")
    ResponseEntity<List<DecisionResponseDto>> getThreeRandomDecisions() {
        return ResponseEntity.ok(service.getThreeRandomDecisions());
    }

    @DeleteMapping("/{decisionId}")
    ResponseEntity<Void> deleteById(@PathVariable String decisionId) {
        service.deleteDecision(decisionId);
        return ResponseEntity.noContent().build();
    }

    @PostMapping
    ResponseEntity<Void> createDecision(@AuthenticationPrincipal Jwt jwt, @RequestBody DecisionRequestDto decisionBody) {
        String decisionOwner = jwt.getSubject();
        Decision createdDecision = service.createDecision(decisionOwner, decisionBody);
        return ResponseEntity.created(URI.create("/decisions/" + createdDecision.getId())).build();
    }

    @PostMapping("/vote")
    ResponseEntity<Void> createVote(@AuthenticationPrincipal Jwt jwt, @RequestBody VoteRequestDto voteBody) {
        String voterId = jwt.getSubject();
        service.createVote(voterId, voteBody);
        return ResponseEntity.ok().build();
    }
}
