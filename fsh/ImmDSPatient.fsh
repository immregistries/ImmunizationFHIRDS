Alias:			SCT = http://www.snomed.org/

Profile:        ImmDSPatient
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id:             immds-patient
Title:          "ImmDS Patient"
Description:    "A patient for whom immunization forecast is being requested."
* birthDate 1..1 MS


Profile:        ImmDSImmunization
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id:             immds-immunization
Title:          "ImmDS Immunization"
Description:    "Immunization event for the patient."
* patient only Reference(ImmDSPatient)


Profile:        ImmDSImmunizationEvaluation
Parent:         ImmunizationEvaluation
Id:             immds-immunizationevaluation
Title:          "ImmDS Immunization Evaluation"
Description:    "An evaluation of an Immunization event for the patient against a set of recommendations."
* patient only Reference(ImmDSPatient)
* date 1..1
* targetDisease 1..1
* targetDisease from TargetDisease (extensible)
* doseStatus 1..1
* doseStatus from http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status (extensible)
* doseStatusReason MS
* doseStatusReason from http://hl7.org/fhir/R4/valueset-immunization-evaluation-dose-status-reason.html (extensible)


Profile:        ImmDSImmunizationRecommendation
Parent:         ImmunizationRecommendation
Id:             immds-immunizationrecommendation
Title:          "ImmDS Immunization Recommendation"
Description:    "The set of immunization recommendations for the patient."
* patient only Reference(ImmDSPatient)
* recommendation.vaccineCode from http://hl7.org/fhir/us/core/ValueSet/us-core-vaccines-cvx (extensible)
* recommendation.targetDisease from TargetDisease (extensible)
* recommendation.contraindicatedVaccineCode from http://hl7.org/fhir/us/core/ValueSet/us-core-vaccines-cvx (extensible)
* recommendation.forecastStatus from ForecastStatus (preferred)
* recommendation.forecastReason from ForecastReason (example)
* recommendation.dateCriterion.code from http://hl7.org/fhir/ValueSet/immunization-recommendation-date-criterion (extensible)


Instance:		ImmDSForecastOperation
InstanceOf:		OperationDefinition
Usage:			#definition
Description:	"The Immunization Decision Support Forecast Request operation to provide standardized request and response interfaces to Immunization Forecasters."
* name = "ImmDSForecast"
* title = "Immunization Decision Support Forecast"
* status = #draft
* kind = #operation
* code = #immds-forecast
* system = true
* type = false
* instance = false
* parameter[0].name = #assessmentDate
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The date on which to assess the forecast."
* parameter[0].type = #date
* parameter[1].name = #patient
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].documentation = "Patient information."
* parameter[1].type = #Patient
* parameter[2].name = #immunization
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "*"
* parameter[2].documentation = "Patient immunization history."
* parameter[2].type = #Immunization
* parameter[3].name = #evaluation
* parameter[3].use = #out
* parameter[3].min = 0
* parameter[3].max = "*"
* parameter[3].documentation = "The evaluation against a schedule."
* parameter[3].type = #ImmunizationEvaluation
* parameter[4].name = #recommendation	
* parameter[4].use = #out
* parameter[4].min = 1
* parameter[4].max = "1"
* parameter[4].documentation = "The decision support engine produced forecast."
* parameter[4].type = #ImmunizationRecommendation


ValueSet:		TargetDisease
Id:				targetDisease
Title:			"Vaccine Target Disease"
Description:	"A set of vaccine preventable target diseases."
* SCT#397428000  "Diphtheria"
* SCT#27836007  "Pertussis"
* SCT#76902006  "Tetanus"
* SCT#721764008  "Infection caused by Human poliovirus"
* SCT#14189004  "Measles"
* SCT#36989005  "Mumps"
* SCT#36653000  "Rubella"
* SCT#16814004  "Pneumococcal infectious disease"
* SCT#23511006  "Meningococcal infectious disease"
* SCT#709410003  "Haemophilus influenzae type b infection"
* SCT#56717001  "Tuberculosis"
* SCT#363354003  "Malignant tumour of cervix"
* SCT#266113007  "Genital warts"
* SCT#415822001  "Viral gastroenteritis due to Rotavirus"
* SCT#66071002  "Type B viral hepatitis"
* SCT#40468003  "Viral hepatitis, type A"
* SCT#7111000119109  "Hepatitis E virus infection"
* SCT#719590007  "Influenza caused by seasonal influenza virus"
* SCT#719865001  "Influenza caused by pandemic influenza virus"
* SCT#38907003  "Varicella"
* SCT#4740000  "Herpes zoster"
* SCT#55735004  "Respiratory syncytial virus infection"
* SCT#240613006  "Typhus group rickettsial disease"
* SCT#4834000  "Typhoid fever"
* SCT#85904008  "Paratyphoid fever"
* SCT#63650001  "Cholera"
* SCT#16541001  "Yellow fever"
* SCT#38362002  "Dengue"
* SCT#61462000  "Malaria"
* SCT#14168008  "Rabies"
* SCT#186772009  "RMSF - Rocky Mountain spotted fever"
* SCT#712986001  "Tickborne encephalitis"
* SCT#52947006  "Japanese encephalitis virus disease"
* SCT#186788009  "Q fever"
* SCT#409498004  "Anthrax"
* SCT#58750007  "Plague"
* SCT#19265001  "Tularemia"
* SCT#23502006  "Lyme disease"
* SCT#75702008  "Brucellosis"
* SCT#80612004  "Leishmaniasis"
* SCT#186747009  "Coronavirus infection"
* SCT#67924001  "Smallpox"
* SCT#70090004  "Cowpox"


CodeSystem:		ForecastStatus
Title:			"Forecast Status"
Description:	"A set of forecast statuses."
* #complete "Complete" "The patient series is complete" 
* #notComplete "Not Complete" "The patient series is incomplete"
* #notRecommended "Not Recommended" "The patient is not recommended"
* #immune "Immune" "The patient is considered immune and therefore does not require vaccination"
* #contraindicated "Contraindicated" "The patient is contraindicated for the vaccine"
* #agedOut "Aged Out" "The patient is past the recommendated maximum age for vaccination"
* #conditional "Conditional" "The patient may be recommended for vaccination depending on other attributes"


ValueSet:		ForecastStatus
Title:			"Forecast Status"
Description:	"A set of forecast statuses."
* codes from system ForecastStatus


CodeSystem:		ForecastReason
Title:			"Forecast Reason"
Description:	"A set of reasons for the forecast status."
* #complete "Complete" "The patient series is complete" 
* #notRecommended "Not Recommended" "The patient is not recommended due to immunization history"
* #maximumAge "Maximum Age Exceeded" "The patient has exceeded the maximum recommended age"
* #seasonalPast "Seasonal End Date Passed" "The recommended end date for the seasonal vaccine has passed"
* #seasonalComplete "Complete for the Season" "The patient is complete for the season"


ValueSet:		ForecastReason
Title:			"Forecast Reason"
Description:	"A set of reasons for the forecast status."
* codes from system ForecastReason