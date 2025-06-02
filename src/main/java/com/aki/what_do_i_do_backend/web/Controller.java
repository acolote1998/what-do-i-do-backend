package com.aki.what_do_i_do_backend.web;

import com.aki.what_do_i_do_backend.model.Decision;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/decisions")
public class Controller {

    @GetMapping
    ResponseEntity<List<Decision>> getAll() {
    }
}
