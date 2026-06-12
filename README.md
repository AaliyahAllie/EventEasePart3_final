# EventEase Venue Booking System
## Introduction

The **EventEase Venue Booking System** is a cloud-based ASP.NET Core MVC application developed for the CLDV7111 Cloud Development module.

Part 2 focuses on improving the system through:

* Azure cloud integration
* Validation and error handling
* Booking management improvements
* Search functionality
* Filtered Searching
* Deployment to Microsoft Azure

The system was enhanced to become more reliable, scalable, and user-friendly.

---

# Features Implemented

## ✅ Azure Blob Storage Integration

* Replaced placeholder image URLs with Azure Blob Storage
* Securely stores venue and event images in the cloud
* Improves scalability and reliability
* Allows centralized image management

### Benefits

* Faster image access
* Improved performance
* Better security
* Reliable image hosting

---

## ✅ Validation and Error Handling

### Double Booking Prevention

The system checks:

* Venue
* Date
* Time

before saving a booking.

If the venue is already booked, the booking is rejected and the user receives an error message.

### Prevent Invalid Deletions

The system prevents:

* Deleting venues with active bookings
* Deleting events linked to bookings

### Benefits

* Improved data accuracy
* Reduced scheduling conflicts
* Better user experience
* Increased system reliability

---

## ✅ Search Functionality

The system includes search features that allow users to:

* Search venues
* Search bookings
* Quickly find information

This improves navigation and booking management.

---

## ✅ Consolidated Booking View

A centralized booking view was added to:

* Display all booking information
* Simplify booking management
* Improve administrative efficiency

---

## ✅ Azure Deployment

The application was successfully deployed using:

* Azure App Service
* Azure SQL Database
* Azure Blob Storage

This allows the application to run fully in the cloud environment.

---

# Technologies Used

## Backend

* ASP.NET Core MVC
* C#
* Entity Framework Core

## Frontend

* HTML
* CSS
* Bootstrap

## Database

* SQL Server
* Azure SQL Database

## Cloud Services

* Microsoft Azure App Service
* Azure Blob Storage

---

# Database Structure

The system database contains the following tables:

* Roles
* Users
* Venues
* Events
* Bookings

The database structure supports:

* User management
* Venue management
* Event management
* Booking management

---

# Project Links

| Platform          | Link                                                                                                                                 |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Azure Website     | [EventEase Azure Deployment](https://st10212542-hdhjahh4d9g4fncm.canadacentral-01.azurewebsites.net/) |
| GitHub Repository | [EventEase GitHub Repository](https://github.com/AaliyahAllie/EventEasePart3_final.git)                        |
| YouTube Demo      | [EventEase Demo Video](https://youtu.be/7cQpmvGNe8s)                                                          |

---

Source document: 
