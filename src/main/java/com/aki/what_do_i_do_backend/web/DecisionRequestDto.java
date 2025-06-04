package com.aki.what_do_i_do_backend.web;

public record DecisionRequestDto(String id, String title, String description, Boolean open, String option1,
                                 String option2, String[] users_votes_1, String[] users_votes_2) {
}