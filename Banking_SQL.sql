CREATE TABLE banking_relationships (
    BRId SMALLINT PRIMARY KEY,
    "Banking Relationship" VARCHAR(50)
);

CREATE TABLE investment_advisors (
    IAId SMALLINT PRIMARY KEY,
    "Investment Advisor" VARCHAR(100)
);

CREATE TABLE gender (
    GenderId SMALLINT PRIMARY KEY,
    Gender VARCHAR(10)
);

CREATE TABLE banking_clients (
    "Client ID" VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Age SMALLINT,
    "Location ID" INTEGER,
    "Joined Bank" DATE, -- Assuming your 'DD-MM-YYYY' format will be handled or you'll adjust the COPY statement
    "Banking Contact" VARCHAR(100),
    Nationality VARCHAR(50),
    Occupation VARCHAR(100),
    "Fee Structure" VARCHAR(10),
    "Loyalty Classification" VARCHAR(10),
    "Estimated Income" NUMERIC(15, 2),
    "Superannuation Savings" NUMERIC(15, 2),
    "Amount of Credit Cards" SMALLINT,
    "Credit Card Balance" NUMERIC(15, 2),
    "Bank Loans" NUMERIC(18, 2),
    "Bank Deposits" NUMERIC(18, 2),
    "Checking Accounts" NUMERIC(18, 2),
    "Saving Accounts" NUMERIC(18, 2),
    "Foreign Currency Account" NUMERIC(15, 2),
    "Business Lending" NUMERIC(18, 2),
    "Properties Owned" SMALLINT,
    "Risk Weighting" SMALLINT,
    BRId SMALLINT,
    GenderId SMALLINT,
    IAId SMALLINT,
    -- Define foreign key constraints if you are creating all tables together
    FOREIGN KEY (BRId) REFERENCES banking_relationships(BRId),
    FOREIGN KEY (GenderId) REFERENCES gender(GenderId),
    FOREIGN KEY (IAId) REFERENCES investment_advisors(IAId)
);

CREATE TABLE banking_clients_temp AS SELECT * FROM banking_clients LIMIT 0;

SELECT count(*) FROM banking_clients_temp;
SELECT * FROM banking_relationships;
SELECT * FROM investment_advisors;
SELECT * FROM gender;

