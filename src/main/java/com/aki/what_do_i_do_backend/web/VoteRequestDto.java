package com.aki.what_do_i_do_backend.web;

public record VoteRequestDto(String decisionId, String optionToVote, Integer whichToVote) {
}
