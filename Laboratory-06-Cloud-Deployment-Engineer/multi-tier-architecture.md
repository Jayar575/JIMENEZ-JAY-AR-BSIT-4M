# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A **Two-Tier Architecture** is a system structure that divides an application into two main parts: the **Web/Application Tier** and the **Database Tier**. Each part performs a different function and works together to deliver the application's services.

## The Web/Application Tier

The **Web/Application Tier** handles the part of the system that users interact with. It displays the user interface, receives HTTP requests, processes application functions, and communicates with the database to get or save information.

## The Database Tier

The **Database Tier** manages and stores the application's data. It keeps important information such as user accounts, records, and other data that must remain available even after the application is restarted.

## Why Separate Them?

Keeping the web server and database in separate containers makes the application easier to manage and update. It also provides better security and allows each container to be scaled or maintained independently when needed.

