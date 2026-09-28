**Student Management \& Posting System**



A Microsoft Dynamics 365 Business Central AL project created to practice table design, validation, posting logic, enums, ledger entries, page extensions, and event-driven customization.



**Project Overview**



This project demonstrates a basic Student Management system in Business Central.



The system allows student records to be created and maintained in an Open status. A posting action converts the student record into a posted state and creates a corresponding entry in the Student Ledger Entry table.



The project was built as a learning project to understand how Business Central objects interact and how business rules can be implemented using AL.



**Main Features**



\- Student master record management

\- Student status using an Enum

\- Field validation using "OnValidate"

\- Student posting functionality

\- Posted date and posted-by information

\- Prevention of modification after posting

\- Student Ledger Entry creation

\- No. Series-based student numbering

\- Page actions for student operations

\- Validation through event subscribers

\- Basic Business Central AL object structure



**Main Objects**



Object and its Purpose

Student Table: Stores student master information

Student Card Page: Allows users to view and edit student information

Student Ledger Entry Table: Stores posted student entries

Student Ledger Entry Page: Displays posted student records

Student Status Enum: Defines Open and Posted states

Posting Codeunit/Procedure: Handles student posting logic

Page Extension: Adds/customizes functionality on existing pages

Event Subscriber: Implements validation/customization without modifying standard objects



**Business Flow**



Create Student

&#x20;     ↓

Student Status = Open

&#x20;     ↓

Enter / Validate Student Details

&#x20;     ↓

Confirm Posting

&#x20;     ↓

Create Student Ledger Entry

&#x20;     ↓

Student Status = Posted

&#x20;     ↓

Posted Date / Posted By recorded

&#x20;     ↓

Student becomes non-editable



**AL Concepts Practiced**



* Record Variables



Used "Record" variables to access and manipulate Business Central tables.



* Primary Key Retrieval



Practiced retrieving records using their primary key with "Get()".



* Filtering 



Practiced filtering records using methods such as:



\- "SetRange()"

\- "FindFirst()"

\- "FindSet()"

\- "Next()"



* Validation



Used "Validate()" when a field value needs to be assigned while also executing the field's validation logic.



Direct assignment does not execute the field's "OnValidate" trigger.



* Posting



Implemented posting logic that changes the student's status and creates a corresponding ledger entry.



* Enums



Used an Enum to represent the Student Status:



Open

Posted



* Triggers



Practiced Business Central triggers including:



\- "OnValidate"

\- "OnInsert"

\- "OnModify"

\- "OnDelete"



* Event Subscribers



Used event subscribers to extend or customize existing functionality without directly modifying the original object.



* Reports



The project also includes reports for generating student-related documents:



\- Student Report — demonstrates report development for presenting Student data.

\- Student Report Invoice — demonstrates a report designed in an invoice-style format for Student information.



These reports provide practice with Business Central report objects and data presentation.



* Business Rules



Some of the rules implemented in the project include:



\- Student name and course information are validated.

\- A student can be posted only when the required information is available.

\- Posting creates a corresponding Student Ledger Entry.

\- Posted students cannot be modified like open students.

\- Posting information such as posted date and posted-by user is recorded.



**What I Learned**



Through this project, I practiced:



\- Designing Business Central tables

\- Creating pages and page extensions

\- Working with Records

\- Applying filters and finding records

\- Using field validation

\- Working with Enums

\- Implementing posting logic

\- Creating ledger-style entries

\- Understanding triggers

\- Using event subscribers

\- Structuring an AL project

\- Implementing basic business rules in AL



**Project Status**



Completed as a learning/portfolio project.



The project will be further improved as I gain access to a Business Central development sandbox and can test and refine the functionality in a real Business Central environment.

