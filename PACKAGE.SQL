




CREATE OR REPLACE PACKAGE CH_PAL
IS
PROCEDURE PAL(TEXT VARCHAR);
END CH_PAL;





CREATE OR REPLACE PACKAGE BODY CH_PAL IS
    PROCEDURE PAL (TEXT VARCHAR)
    IS
    I NUMBER := 1;
    TEMP NUMBER := 0;
    BEGIN
        WHILE I<=LENGTH(TEXT)/2 LOOP
            IF SUBSTR(TEXT,I,1) = SUBSTR(TEXT,-I,1) THEN
            I := I+1;
            ELSE
            DBMS_OUTPUT.PUT_LINE(TEXT || ' IS NOT A PALINDROME');
            TEMP := 1;
            I := I+1;
            EXIT;
            END IF;
        END LOOP;
        
        IF TEMP = 0 THEN
            DBMS_OUTPUT.PUT_LINE(TEXT || ' IS A PALINDROME');
        END IF;
    END PAL;
END CH_PAL;
