package com.aki.what_do_i_do_backend.web;

import com.aki.what_do_i_do_backend.service.DecisionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/decisions")
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
    ResponseEntity<DecisionResponseDto> getById(@AuthenticationPrincipal Jwt jwt, @PathVariable String decisionId) {
        String decisionOwner = jwt.getSubject();
        return ResponseEntity.ok(service.getDecisionByOwnerAndId(decisionOwner, decisionId));
    }
}
