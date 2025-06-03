INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000001', '¿Hamburguesa o Ensalada?', '¿Qué almorzarías hoy?', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000002', '¿Marvel o DC?', 'Universo cinematográfico favorito', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000003', '¿Leer o Escuchar podcasts?', '¿Cómo aprendés mejor?', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000004', '¿Frío o Calor?', 'Clima preferido', true,
        'user_2xodXwjo3dmLpPc43qb8ilwHedg');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000005', '¿Perro o Gato?', 'Mascota preferida', true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000006', '¿Telegram o WhatsApp?', 'App de mensajería preferida', true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000007', '¿Hamburguesa o Ensalada?', '¿Qué almorzarías hoy?', true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000008', '¿Android o iOS?', 'Sistema operativo móvil preferido', true,
        'user_2xzgSyLs6Ifj8YJmMQPfUfhQwTs');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000009', '¿Telegram o WhatsApp?', 'App de mensajería preferida', true,
        'user_2xzgVGGrDnqyxhvPJla583cRgkq');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000010', '¿Frío o Calor?', 'Clima preferido', true,
        'user_2xzgVGGrDnqyxhvPJla583cRgkq');

INSERT INTO decisions (id, title, description, open, owner_id)
VALUES ('00000000-0000-0000-0000-000000000011', '¿PlayStation o Xbox?', 'Consola favorita', true,
        'user_2xzgVGGrDnqyxhvPJla583cRgkq');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Hamburguesa');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Ensalada');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000002', 'Marvel');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000002', 'DC');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000003', 'Leer');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000006', '00000000-0000-0000-0000-000000000003', 'Podcasts');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000007', '00000000-0000-0000-0000-000000000004', 'Frío');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000008', '00000000-0000-0000-0000-000000000004', 'Calor');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000009', '00000000-0000-0000-0000-000000000005', 'Perro');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000010', '00000000-0000-0000-0000-000000000005', 'Gato');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000011', '00000000-0000-0000-0000-000000000006', 'Telegram');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000012', '00000000-0000-0000-0000-000000000006', 'WhatsApp');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000013', '00000000-0000-0000-0000-000000000007', 'Hamburguesa');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000014', '00000000-0000-0000-0000-000000000007', 'Ensalada');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000015', '00000000-0000-0000-0000-000000000008', 'Android');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000016', '00000000-0000-0000-0000-000000000008', 'iOS');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000017', '00000000-0000-0000-0000-000000000009', 'Telegram');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000018', '00000000-0000-0000-0000-000000000009', 'WhatsApp');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000019', '00000000-0000-0000-0000-000000000010', 'Frío');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000020', '00000000-0000-0000-0000-000000000010', 'Calor');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000021', '00000000-0000-0000-0000-000000000011', 'PlayStation');

INSERT INTO options (id, decision_id, option_name)
VALUES ('10000000-0000-0000-0000-000000000022', '00000000-0000-0000-0000-000000000011', 'Xbox');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000001', 'fake_user_1', '10000000-0000-0000-0000-000000000001');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000002', 'fake_user_2', '10000000-0000-0000-0000-000000000001');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000003', 'fake_user_3', '10000000-0000-0000-0000-000000000002');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000004', 'fake_user_4', '10000000-0000-0000-0000-000000000002');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000005', 'fake_user_5', '10000000-0000-0000-0000-000000000002');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000006', 'fake_user_6', '10000000-0000-0000-0000-000000000002');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000007', 'fake_user_7', '10000000-0000-0000-0000-000000000001');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000008', 'fake_user_8', '10000000-0000-0000-0000-000000000004');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000009', 'fake_user_9', '10000000-0000-0000-0000-000000000004');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000010', 'fake_user_10', '10000000-0000-0000-0000-000000000003');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000011', 'fake_user_11', '10000000-0000-0000-0000-000000000004');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000012', 'fake_user_12', '10000000-0000-0000-0000-000000000003');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000013', 'fake_user_13', '10000000-0000-0000-0000-000000000003');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000014', 'fake_user_14', '10000000-0000-0000-0000-000000000005');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000015', 'fake_user_15', '10000000-0000-0000-0000-000000000006');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000016', 'fake_user_16', '10000000-0000-0000-0000-000000000006');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000017', 'fake_user_17', '10000000-0000-0000-0000-000000000005');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000018', 'fake_user_18', '10000000-0000-0000-0000-000000000008');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000019', 'fake_user_19', '10000000-0000-0000-0000-000000000007');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000020', 'fake_user_20', '10000000-0000-0000-0000-000000000007');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000021', 'fake_user_21', '10000000-0000-0000-0000-000000000007');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000022', 'fake_user_22', '10000000-0000-0000-0000-000000000010');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000023', 'fake_user_23', '10000000-0000-0000-0000-000000000009');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000024', 'fake_user_24', '10000000-0000-0000-0000-000000000009');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000025', 'fake_user_25', '10000000-0000-0000-0000-000000000009');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000026', 'fake_user_26', '10000000-0000-0000-0000-000000000009');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000027', 'fake_user_27', '10000000-0000-0000-0000-000000000010');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000028', 'fake_user_28', '10000000-0000-0000-0000-000000000009');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000029', 'fake_user_29', '10000000-0000-0000-0000-000000000010');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000030', 'fake_user_30', '10000000-0000-0000-0000-000000000009');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000031', 'fake_user_31', '10000000-0000-0000-0000-000000000012');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000032', 'fake_user_32', '10000000-0000-0000-0000-000000000014');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000033', 'fake_user_33', '10000000-0000-0000-0000-000000000014');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000034', 'fake_user_34', '10000000-0000-0000-0000-000000000013');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000035', 'fake_user_35', '10000000-0000-0000-0000-000000000014');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000036', 'fake_user_36', '10000000-0000-0000-0000-000000000014');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000037', 'fake_user_37', '10000000-0000-0000-0000-000000000014');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000038', 'fake_user_38', '10000000-0000-0000-0000-000000000015');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000039', 'fake_user_39', '10000000-0000-0000-0000-000000000015');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000040', 'fake_user_40', '10000000-0000-0000-0000-000000000016');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000041', 'fake_user_41', '10000000-0000-0000-0000-000000000016');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000042', 'fake_user_42', '10000000-0000-0000-0000-000000000016');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000043', 'fake_user_43', '10000000-0000-0000-0000-000000000015');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000044', 'fake_user_44', '10000000-0000-0000-0000-000000000016');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000045', 'fake_user_45', '10000000-0000-0000-0000-000000000017');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000046', 'fake_user_46', '10000000-0000-0000-0000-000000000018');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000047', 'fake_user_47', '10000000-0000-0000-0000-000000000017');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000048', 'fake_user_48', '10000000-0000-0000-0000-000000000018');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000049', 'fake_user_49', '10000000-0000-0000-0000-000000000017');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000050', 'fake_user_50', '10000000-0000-0000-0000-000000000017');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000051', 'fake_user_51', '10000000-0000-0000-0000-000000000019');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000052', 'fake_user_52', '10000000-0000-0000-0000-000000000019');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000053', 'fake_user_53', '10000000-0000-0000-0000-000000000021');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000054', 'fake_user_54', '10000000-0000-0000-0000-000000000021');

INSERT INTO votes (uuid, user_id, option_id)
VALUES ('20000000-0000-0000-0000-000000000055', 'fake_user_55', '10000000-0000-0000-0000-000000000021');