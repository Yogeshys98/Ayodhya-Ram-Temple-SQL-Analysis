-- 1)Retrieve information about the Ram Mandir?

SELECT * FROM temple;

-- 2)List all construction phases for the Ram Mandir?
SELECT PhaseID, PhaseName FROM constructionphase;

-- 3)Find the total amount of donations received for the Ram Mandir?

SELECT SUM(Amount) AS TOTAL_AMOUNT_DONATION FROM donations;

-- 4)Get details about the architecture of the Ram Mandir?

SELECT * FROM architecture;

-- 5)Retrieve events associated with the Ram Mandir?

SELECT * FROM events;

-- 6)Find donors who contributed more than 50000 towards the Ram Mandir?

SELECT DonorName, Amount FROM donations WHERE Amount > 50000 ;

-- 7)Retrieve details about a specific deity (e.g., Rama) ?
SELECT * FROM deity WHERE Name = "Rama";

-- 8)Find the start and end dates of the construction phases for the Ram Mandir?

SELECT PhaseName, StartDate, CompletionDate FROM constructionphase;

-- 9)Count the number of events associated with each temple?

SELECT COUNT(*) AS Number_of_events FROM temple T JOIN templeevents TE ON TE.TempleID = T.TempleID;

-- 10)Find the donors who made contributions on or after 2021-06-01'?

SELECT DonorName, Amount, DonationDate FROM donations WHERE DATE(DonationDate) >= '2021-06-01';

