
CALL RETRIEVE_ALL;

CALL UPDATE_SALEPRICE(1, 'BAD' );        		-- Caller query

CALL RETRIEVE_ALL;

--DROP PROCEDURE RETRIEVE_ALL;
--
--DROP PROCEDURE UPDATE_SALEPRICE;

CALL TRANSACTION_ROSE;  						-- Caller query

CALL TRANSACTION_JAMES;  						-- Caller query

SELECT * FROM BankAccounts;

SELECT * FROM ShoeShop;