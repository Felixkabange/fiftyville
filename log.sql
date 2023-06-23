-- Find crime scene description
SELECT description FROM crime_scene_reports WHERE month = '7' AND day = '28' AND street = 'Humphrey Street';
-- look at the bakery security logs to see the activities that took place at the time the witness said
SELECT activity FROM bakery_security_logs WHERE month = '7' AND day = '28' AND hour = '10';
-- I took a look at the interviews that were conducted on the day of the murder to understand each persons story
SELECT * FROM interviews;
-- After the interviews i decided to look at the people table just so I can pin point every car that left the bakery around the time of the theft with a name
SELECT * FROM people;
-- So I ran this command to find every car from people that left the bakery at the time of the murder I tied the name to number plate
SELECT * FROM people WHERE license_plate = '?'; -- all 6 number plate i think are suspects
-- I looked at the airport to understand the details for flights going to Fityville
SELECT * FROM airports;
-- Since I know from the interviews that Raymond mentioned the thief left on the next flight to fiftyville the next day, I Nneed to look at the flight record and see who left around the same time as the list of suspects I have
SELECT * FROM flights WHERE day = '29' AND month = '7';
-- After I knew that the thief was heading to LaGuardia aiport I needed to look at all passengers of the flight
SELECT * FROM passengers;
-- After narrowing down my search and cutting down the suspect list, I remebered in Raymond interview he mentioned the thief asked the other person to buy earliest flight tickets out of Fiftyville for the next day so i need to look at ATM transactions to narrow my searches
SELECT * FROM atm_transactions WHERE month = '7' AND day = '28' AND atm_location = 'Leggett Street';
-- After looking at the people ATM transaction I wanted to look at the bank accounts to see which person ID it matches to
SELECT * FROM bank_accounts WHERE account_number = '?';
-- After associating each bank account with a person ID i have to go back to the people table and see if any of them matches my list of suspects
SELECT * FROM people WHERE id = '?';
-- After narrowing down my suspects to just 3, which is Taylor,Luca and Bruce, i know wanna look at the phone records and see at which time they called each other
SELECT * FROM phone_calls WHERE day = '28' AND month = '7';


