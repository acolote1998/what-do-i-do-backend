INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000001', '¿Pizza o Sushi?', 'Elige tu cena favorita', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg'),
       ('00000000-0000-0000-0000-000000000002', '¿Montaña o Playa?', 'Vacaciones soñadas', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');
-- Opciones para decisión 1
INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Pizza'),
       ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Sushi');

-- Opciones para decisión 2
INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000002', 'Montaña'),
       ('10000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000002', 'Playa');
-- Votos para decisión 1
INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000001', 'user1', '10000000-0000-0000-0000-000000000001'), -- Pizza
       ('20000000-0000-0000-0000-000000000002', 'user2', '10000000-0000-0000-0000-000000000002'), -- Sushi
       ('20000000-0000-0000-0000-000000000003', 'user3', '10000000-0000-0000-0000-000000000001');
-- Pizza

-- Votos para decisión 2
INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000004', 'user4', '10000000-0000-0000-0000-000000000004'), -- Playa
       ('20000000-0000-0000-0000-000000000005', 'user5', '10000000-0000-0000-0000-000000000003'); -- Montaña
