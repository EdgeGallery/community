In the world of micro-services or service oriented architectures, the contract is an agreement between the service provider and their consumers. Through this contract, each consumer knows how to use the service, what data can be sent and the responses it might receive. It provides the integrity needed for the system to remain stable.

What is contract testing?
-------------------------

Basically, contract testing is a technique that is made up of writing tests which will ensure that both the server provider and, the consumer fulfill what the contract says.

Therefore, two perspectives exist:

**Service provider side**: Here is where we try to validate that the backend service carries out what is defined in the contract. If we talk about REST services, we should check for some points like:

*   Is the service handling the request and response data properly? XML, JSON, query params…

*   Is the data format accomplished? Maximum length, data types, required fields and so on…

*   Are HTTP codes used correctly?

*   Does the backend respond to the different request per resource / method?

**Consumer side**: Where we check whether the consumer is able to deal with the backend service as the contract describes or not. Therefore we should mainly check the consumer is ready to handle different input and output data types, response codes, etc… We mustn’t forget the fact that a consumer usually is a piece of software that will be injected in a higher level component (a web application, a mobile app, a batch process, a micro-service etc…). If this small piece of software is not able to interact with the backend service properly the higher level component where it resides will fail during runtime and a bigger problem would emerge.