package com.aki.what_do_i_do_backend.service;

import com.aki.what_do_i_do_backend.repository.DecisionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
