package com.aki.what_do_i_do_backend.web;

import java.util.UUID;

public record DecisionResponseDto(UUID id, String title, String description, Boolean open, String optionOne,
                                  String optionTwo, String[] votersOne, String[] votersTwo) {
}
