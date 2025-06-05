-- Decision 1
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000001', 'Burger or Salad?', 'What should I have for lunch today?', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Burger');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Salad');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000001', 'fake_user_1', '10000000-0000-0000-0000-000000000001'),
       ('20000000-0000-0000-0000-000000000002', 'fake_user_2', '10000000-0000-0000-0000-000000000001'),
       ('20000000-0000-0000-0000-000000000003', 'fake_user_3', '10000000-0000-0000-0000-000000000002'),
       ('20000000-0000-0000-0000-000000000004', 'fake_user_4', '10000000-0000-0000-0000-000000000002');

-- Decision 2
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000002', 'Movie Theater or Netflix?',
        'I’ve got the afternoon free, what should I do?', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000002', 'Go to the movies'),
       ('10000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000002', 'Watch Netflix');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000005', 'fake_user_5', '10000000-0000-0000-0000-000000000003'),
       ('20000000-0000-0000-0000-000000000006', 'fake_user_6', '10000000-0000-0000-0000-000000000004'),
       ('20000000-0000-0000-0000-000000000007', 'fake_user_7', '10000000-0000-0000-0000-000000000004');

-- Decision 3
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000003', 'Adopt a Cat or a Dog?',
        'I’m thinking of getting a pet, but I’m not sure which one.', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000003', 'Cat'),
       ('10000000-0000-0000-0000-000000000006', '00000000-0000-0000-0000-000000000003', 'Dog');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000008', 'fake_user_8', '10000000-0000-0000-0000-000000000005'),
       ('20000000-0000-0000-0000-000000000009', 'fake_user_9', '10000000-0000-0000-0000-000000000005'),
       ('20000000-0000-0000-0000-000000000010', 'fake_user_10', '10000000-0000-0000-0000-000000000006'),
       ('20000000-0000-0000-0000-000000000011', 'fake_user_11', '10000000-0000-0000-0000-000000000006');

-- Decision 1
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000011', 'Vacation: Beach or Mountains?',
        'I’m planning my next trip and can’t decide between a relaxing beach or a hiking adventure in the mountains.',
        true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000011', '00000000-0000-0000-0000-000000000011', 'Beach'),
       ('10000000-0000-0000-0000-000000000012', '00000000-0000-0000-0000-000000000011', 'Mountains');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000012', 'fake_user_1', '10000000-0000-0000-0000-000000000011'),
       ('20000000-0000-0000-0000-000000000013', 'fake_user_2', '10000000-0000-0000-0000-000000000011'),
       ('20000000-0000-0000-0000-000000000014', 'fake_user_3', '10000000-0000-0000-0000-000000000012'),
       ('20000000-0000-0000-0000-000000000015', 'fake_user_4', '10000000-0000-0000-0000-000000000012');

-- Decision 2
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000012', 'iPhone or Android?',
        'It’s time to upgrade my phone and I can’t decide which platform to go with.', true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000013', '00000000-0000-0000-0000-000000000012', 'iPhone'),
       ('10000000-0000-0000-0000-000000000014', '00000000-0000-0000-0000-000000000012', 'Android');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000016', 'fake_user_5', '10000000-0000-0000-0000-000000000013'),
       ('20000000-0000-0000-0000-000000000017', 'fake_user_6', '10000000-0000-0000-0000-000000000014'),
       ('20000000-0000-0000-0000-000000000018', 'fake_user_7', '10000000-0000-0000-0000-000000000014'),
       ('20000000-0000-0000-0000-000000000019', 'fake_user_8', '10000000-0000-0000-0000-000000000014');

-- Decision 3
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000013', 'Work from Home or Office?',
        'My company is offering a choice and I’m unsure what suits me better long-term.', true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000015', '00000000-0000-0000-0000-000000000013', 'Work from Home'),
       ('10000000-0000-0000-0000-000000000016', '00000000-0000-0000-0000-000000000013', 'Work from Office');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000020', 'fake_user_9', '10000000-0000-0000-0000-000000000015'),
       ('20000000-0000-0000-0000-000000000021', 'fake_user_10', '10000000-0000-0000-0000-000000000015'),
       ('20000000-0000-0000-0000-000000000022', 'fake_user_11', '10000000-0000-0000-0000-000000000016');


-- Decision 1
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000021', 'Morning Jog or Gym Session?',
        'Trying to build a habit, not sure if I should go for a jog or hit the gym in the mornings.', true,
        'user_2xzgVGGrDnqyxhvPJla583cRgkq');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000021', '00000000-0000-0000-0000-000000000021', 'Morning Jog'),
       ('10000000-0000-0000-0000-000000000022', '00000000-0000-0000-0000-000000000021', 'Gym Session');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000031', 'fake_user_12', '10000000-0000-0000-0000-000000000021'),
       ('20000000-0000-0000-0000-000000000032', 'fake_user_13', '10000000-0000-0000-0000-000000000021'),
       ('20000000-0000-0000-0000-000000000033', 'fake_user_14', '10000000-0000-0000-0000-000000000022'),
       ('20000000-0000-0000-0000-000000000034', 'fake_user_15', '10000000-0000-0000-0000-000000000022');

-- Decision 2
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000022', 'Laptop or Desktop for Work?',
        'I need a new machine for remote work and can’t decide between portability or performance.', true,
        'user_2xzgVGGrDnqyxhvPJla583cRgkq');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000023', '00000000-0000-0000-0000-000000000022', 'Laptop'),
       ('10000000-0000-0000-0000-000000000024', '00000000-0000-0000-0000-000000000022', 'Desktop');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000035', 'fake_user_16', '10000000-0000-0000-0000-000000000023'),
       ('20000000-0000-0000-0000-000000000036', 'fake_user_17', '10000000-0000-0000-0000-000000000023'),
       ('20000000-0000-0000-0000-000000000037', 'fake_user_18', '10000000-0000-0000-0000-000000000024');

-- Decision 3
INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000023', 'Read Fiction or Non-Fiction?',
        'Trying to get back into reading—should I go for storytelling or learning?', true,
        'user_2xzgVGGrDnqyxhvPJla583cRgkq');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000025', '00000000-0000-0000-0000-000000000023', 'Fiction'),
       ('10000000-0000-0000-0000-000000000026', '00000000-0000-0000-0000-000000000023', 'Non-Fiction');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000038', 'fake_user_19', '10000000-0000-0000-0000-000000000025'),
       ('20000000-0000-0000-0000-000000000039', 'fake_user_20', '10000000-0000-0000-0000-000000000025'),
       ('20000000-0000-0000-0000-000000000040', 'fake_user_21', '10000000-0000-0000-0000-000000000026'),
       ('20000000-0000-0000-0000-000000000041', 'fake_user_22', '10000000-0000-0000-0000-000000000026');
