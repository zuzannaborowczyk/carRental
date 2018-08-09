-- GRANT/REVOKE
DROP USER 'user_ro';
DROP USER 'user_rw_adres';
DROP USER 'user_admin';
FLUSH PRIVILEGES;

-- user_ro
CREATE USER 'user_ro' IDENTIFIED BY 'readOnly';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_ro';

GRANT SELECT ON carhire.* to 'user_ro';

SHOW GRANTS FOR 'user_ro';

-- user_rw_adres
CREATE USER 'user_rw_adres' IDENTIFIED BY 'limitedAccess';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_rw_adres';

GRANT SELECT, INSERT, DELETE ON carhire.CUSTOMER TO 'USER_RW_ADRES';
GRANT SELECT ON carhire.* TO 'USER_RW_ADRES';

SHOW GRANTS FOR 'user_rw_adres';

-- user_admin
CREATE USER 'user_admin' IDENTIFIED BY 'ADMIN';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user_admin';

GRANT ALL PRIVILEGES ON carhire.* to 'user_admin';
GRANT GRANT OPTION ON carhire.* to 'user_admin';

SHOW GRANTS FOR 'user_admin';

