# Introduction
The Immunization Decision Support Forecast (ImmDS) use case covers the exchange of data between a system seeking a patient evaluated history and forecast and the clinical decision support engine capable of providing that history and forecast. Today, this layer is not standardized and leads to several unique/proprietary interfaces which are costly to implement. The scope of this implementation guide is to create a standard interface layer between the initiating system and the CDS engine.

The initiating system in this exchange is typically a system being used (either directly or indirectly) by a clinician to provide care to the patient. This can be a jurisdictional level Immunization Information System (IIS) which collates the patient’s immunization history from a variety of sources or an EHR which is being used to provide point of care support for clinicians. However other systems such as HIEs, school medical records, etc may also play this role.

As will be described in the individual uses cases below, this exchange is often part of a larger workflow which is out of scope for this implementation guide.

# The Difference Between a History and an Evaluated History
There is a difference between the patient’s immunization history and the patient’s evaluated history. The immunization history (as represented by Immunization resources) is a list of immunization events for the patient. The Immunization resource simply describes the details of the event as it happened (or occasionally, did not happen). The patient’s immunization history is an input to the CDS engine as a parameter to the $immds-forecast operation. However, not all immunization events are considered to be effective (or “valid”) relative to an immunization schedule (a set of recommendations produced by an authority such as the Advisory Committee on Immunization Practices (ACIP) in the United States). The CDS engine takes the immunization history and compares the events to an immunization schedule to determine the validity of each event. This creates the evaluated history which is returned from the CDS engine (in the form of ImmunizationEvaluation resources) along with a set of recommendations for future doses for the patient (in the form of an ImmunizationRecommendation resource). Both the ImmunizationEvaluation and ImmunizationRecommendation resources are returned as outputs of the operation.

# EHR Query to IIS (via existing v2)
This use case describes a typical transaction found in production exchanges today. An EHR User (or an automated trigger) issues a v2 query to the local IIS for a specific patient. The IIS finds the patient, performs the CDS and then packages that information up and returns it to the EHR in a v2 response message. In this case, the IIS outsources the evaluation and recommendation process to an external CDS engine. Note that the logic used by the CDS engine to perform the evaluation and forecast is out of scope for this implementation guide as is the mechanism for executing the v2 query and response.

![EHR Query to IIS (via existing v2)](ImmunizationCDSonFHIR-EHRtoIIS.png)


# Application User Interface
This use case describes a typical use of an application found in production today. In this example, an IIS User logs into the IIS and natively uses the IIS User Interface to query for a specific patient in the IIS. The IIS finds the patient, performs the CDS and then packages that information up and returns it to the IIS User Interface for immediate display. Note that that the application in this use case could easily have been an EHR which uses an external CDS engine.

![Application User Interface](ImmunizationCDSonFHIR-IISUserinterface.png)


# Public Health Function
This use case describes a typical public health function found within IIS production systems today. Many activities an IIS performs results in looping over a cohort of patients (defined by the public health activity) and determining their Immunization Status and/or need for further vaccination. This occurs in AFIX visits, up-to-date reports, reminder/recall activities, etc.
 
![Public Health Function](ImmunizationCDSonFHIR-IISFunction.png)