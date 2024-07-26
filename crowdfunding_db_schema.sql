-- Drop existing tables if they exist 
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

-- Create the contacts table
-- This table stores information about individuals or organizations
CREATE TABLE contacts(
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Select all records from the contacts table to verify its creation
SELECT * 
FROM contacts;

-- Create the category table
-- This table holds the primary categories for organizing contacts, campaigns, or other entities
CREATE TABLE category(
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Select all records from the category table to verify its creation
SELECT * 
FROM category;

-- Create the subcategory table
-- This table provides more granular classification under each primary category
CREATE TABLE subcategory(
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Select all records from the subcategory table to verify its creation
SELECT * 
FROM subcategory;

-- Create the campaign table
-- This table stores information about different campaigns, which may involve multiple contacts
CREATE TABLE campaign(
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL
);

-- Select all records from the campaign table to verify its creation
SELECT * 
FROM campaign;
