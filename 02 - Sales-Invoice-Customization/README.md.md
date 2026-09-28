**Validation Mini Project**



A Microsoft Dynamics 365 Business Central AL mini project created to practice field validation, table triggers, direct assignment, "Validate()", and event subscribers.



**Project Overview**



This project focuses on understanding how validation works in Business Central and the difference between directly assigning a value to a field and using the "Validate()" method.



The project also demonstrates how validation logic can be tested and extended using an event subscriber.



**Concepts Practiced**



\- "OnValidate" trigger

\- "Validate()" method

\- Direct field assignment

\- "OnModify" trigger

\- Event subscribers

\- Record modification

\- Validation of business rules

\- Testing validation behavior



**Validation Flow**



Field Value Entered

&#x20;       ↓

&#x20;  Validate() used?

&#x20;     /       \\

&#x20;   Yes        No

&#x20;    ↓          ↓

OnValidate    Direct

executes      assignment

&#x20;    ↓          ↓

Validation    OnValidate

logic runs    does not run



**Key Learning**



* Direct Assignment



When a value is assigned directly to a field:



Student.Name := 'Rishika';



the field's "OnValidate" trigger is not automatically executed.



Using Validate()



When "Validate()" is used:



Student.Validate(Name, 'Rishika');



the field's "OnValidate" trigger is executed.



This makes "Validate()" useful when the field has business rules that must run whenever its value is changed programmatically.



* Event Subscriber



The project also demonstrates an event subscriber for validation-related behavior.



Event subscribers allow functionality to be extended without directly modifying the original object, which is useful when working with standard Business Central functionality.



**Testing**



The project includes validation testing code to verify the behavior of the validation logic and understand when validation triggers are executed.



**What I Learned**



Through this mini project, I practiced:



\- How "OnValidate" works

\- Difference between assignment and "Validate()"

\- How "Modify()" saves record changes

\- How validation logic can enforce business rules

\- How event subscribers can extend existing functionality

\- Basic AL testing and debugging concepts



**Project Status**



Completed as a learning/portfolio mini project.



The project can be further tested and extended when working with a Business Central development sandbox.

