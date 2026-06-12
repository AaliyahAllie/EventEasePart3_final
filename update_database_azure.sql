-- ==========================================
-- SQL MIGRATION SCRIPT FOR EVENTEASE (PART 3)
-- Run this script against your Azure SQL Database to apply the schema updates.
-- ==========================================

-- 1. Create EventTypes Lookup Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'EventTypes')
BEGIN
    CREATE TABLE EventTypes (
        EventTypeId INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(100) NOT NULL
    );
END

-- 2. Seed Predefined Event Types
IF NOT EXISTS (SELECT * FROM EventTypes)
BEGIN
    INSERT INTO EventTypes (Name) VALUES 
    ('Conference'),
    ('Wedding'),
    ('Concert'),
    ('Exhibition'),
    ('Party'),
    ('Seminar'),
    ('Workshop');
END

-- 3. Add IsAvailable (Availability status) to Venues Table
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Venues') AND name = 'IsAvailable')
BEGIN
    ALTER TABLE Venues 
    ADD IsAvailable BIT NOT NULL DEFAULT 1;
END

-- 4. Add EventTypeId to Events Table
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Events') AND name = 'EventTypeId')
BEGIN
    ALTER TABLE Events
    ADD EventTypeId INT NULL;

    ALTER TABLE Events
    ADD CONSTRAINT FK_Events_EventTypes_EventTypeId 
    FOREIGN KEY (EventTypeId) REFERENCES EventTypes(EventTypeId);
END

-- 5. Add EventTypeId to Bookings Table
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Bookings') AND name = 'EventTypeId')
BEGIN
    ALTER TABLE Bookings
    ADD EventTypeId INT NULL;

    ALTER TABLE Bookings
    ADD CONSTRAINT FK_Bookings_EventTypes_EventTypeId 
    FOREIGN KEY (EventTypeId) REFERENCES EventTypes(EventTypeId);
END

-- 6. Ensure Status field exists in Bookings Table
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Bookings') AND name = 'Status')
BEGIN
    ALTER TABLE Bookings
    ADD Status NVARCHAR(50) NOT NULL DEFAULT 'Pending';
END

-- 7. Ensure CustomerName field exists in Events Table
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('Events') AND name = 'CustomerName')
BEGIN
    ALTER TABLE Events
    ADD CustomerName NVARCHAR(255) NULL;
END
