# General Guidance
This section outlines important definitions and interpretations and requirements common to all Immunization Decision Support Forecast actors used in this guide. The conformance verbs used are defined in FHIR Conformance Rules.

While this document is US Realm specific, the constraints and content of this specification may be applicable to other jurisdictions.

## Background
Clinical Decision Support for Immunizations is increasingly being used in health information systems to indicate which vaccinations a patient is due for next. Many of these expert systems are built as stand-alone systems that respond to web service requests. While these independent systems have similar requirements and outputs they use different web service standards. This project aims to create a FHIR implementation guide that these expert systems may use to provide a consistent and interchangeable interface. This will provide a standardized interface to so that:

* Health information systems may write to and gain access to their choice of CDS engines.
* The output of these systems can be tested and verified consistently and correctly.

## Patient Demographics
The Patient profile requires support for a much broader range of demographics data elements than is typically required by an immunization CDS engine. Often, the engine only needs the patient gender and date of birth (along with the patient’s immunization history) to produce an evaluated history and forecast. To minimize the amount of personal data being exchanged, either the requestor or responder may require the use of the data absent reason extension for specific sensitive fields (the exchange of which may be limited by local policy or requirements) while still fulfilling the profile requirements for supporting all of the demographic elements required by the profile. Alternatively, a CDS engine may require additional demographics data so that it can access additional clinical data on the patient (eg. allergies, problems, etc) to provide a more personalized forecast - note that accessing additional data beyond that contained in the operation is beyond the scope of this implementation guide. As part of the implementation, the minimum necessary demographics payload should be determined.

## Immunization Data Elements
The US Core Immunization profile used by this implementation guide only requires key data elements related to the immunization event, however depending on engine functionality other elements may assist the CDS engine in creating the best possible evaluation and forecast. As part of the implementation, the following data elements should be considered and exchanged if they can be used by the CDS engine:

* manufacturer
* lotNumber
* expirationDate
* site
* route
* doseQuantity
* isSubpotent
* subpotentReason
* reaction

## General Security
Implementers should be aware of [FHIR Security](https://www.hl7.org/FHIR/security.html) and follow the [FHIR Implementer’s Safety Check List](https://www.hl7.org/FHIR/safety.html).