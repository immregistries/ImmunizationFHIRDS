Instance:		ImmDSPatientExample
InstanceOf: 	ImmDSPatient
Description: 	"Example Immunization Patient"
Usage: 			#example
* id = "ImmDSPatientExample"
* identifier.value = "1234"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier.system = "http://www.acme.com/identifiers/patient"
* name.family = "Wellington"
* name.given[0] = "Gene"
* gender = #male "Male"
* birthDate = "2020-04-28"


Instance:		ImmDSImmunizationExample
InstanceOf: 	ImmDSImmunization
Description: 	"Example Immunization Event"
Usage: 			#example
* id = "ImmDSImmunizationExample"
* status = #completed "Completed"
* vaccineCode = CVX#08 "Hep B, adolescent or pediatric"
* patient = Reference(ImmDSPatientExample)
* occurrenceDateTime = "2020-04-28"
* primarySource = true


Instance:		ImmDSImmunizationEvaluationExample
InstanceOf: 	ImmDSImmunizationEvaluation
Description: 	"Example Immunization Evaluation"
Usage: 			#example
* id = "immunization-evaluation-example"
* status = #completed "Completed"
* patient = Reference(ImmDSPatientExample)
* date = "2020-05-26"
* targetDisease = SCT#66071002 "Hepatitis B"
* immunizationEvent = Reference(ImmDSImmunizationExample)
* doseStatus = 	http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status#valid "Valid"
* series  = "ACIP 3-dose HepB series"
* doseNumberPositiveInt = 1
* seriesDosesPositiveInt = 3


Instance:		ImmDSImmunizationRecommendationExample
InstanceOf: 	ImmDSImmunizationRecommendation
Description: 	"Example Immunization Recommendation"
Usage: 			#example
* id = "immunizationrecommendation-forecast-example"
* patient = Reference(ImmDSPatientExample)
* date = "2020-05-26"
* recommendation[0].vaccineCode = CVX#45 "Hep B, unspecified formulation"
* recommendation[0].forecastStatus = ForecastStatus#notComplete "Not Complete"
* recommendation[0].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* recommendation[0].dateCriterion[0].value = "2020-05-28"
* recommendation[0].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* recommendation[0].dateCriterion[1].value = "2020-09-25"
* recommendation[0].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* recommendation[0].dateCriterion[2].value = "2020-05-26"
* recommendation[0].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* recommendation[0].dateCriterion[3].value = "2020-11-25"
* recommendation[0].doseNumberPositiveInt = 2

* recommendation[1].vaccineCode = CVX#20 "DTaP"
* recommendation[1].forecastStatus = ForecastStatus#notComplete "Not Complete"
* recommendation[1].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* recommendation[1].dateCriterion[0].value = "2020-06-28"
* recommendation[1].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* recommendation[1].dateCriterion[1].value = "2020-07-25"
* recommendation[1].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* recommendation[1].dateCriterion[2].value = "2020-06-09"
* recommendation[1].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* recommendation[1].dateCriterion[3].value = "2099-06-28"
* recommendation[1].doseNumberPositiveInt = 1

* recommendation[2].vaccineCode = CVX#17 "Hib, unspecified formulation"
* recommendation[2].forecastStatus = ForecastStatus#notComplete "Not Complete"
* recommendation[2].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* recommendation[2].dateCriterion[0].value = "2020-06-28"
* recommendation[2].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* recommendation[2].dateCriterion[1].value = "2020-07-25"
* recommendation[2].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* recommendation[2].dateCriterion[2].value = "2020-06-09"
* recommendation[2].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* recommendation[2].dateCriterion[3].value = "2099-06-28"
* recommendation[2].doseNumberPositiveInt = 1

* recommendation[3].vaccineCode = CVX#10 "IPV"
* recommendation[3].forecastStatus = ForecastStatus#notComplete "Not Complete"
* recommendation[3].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* recommendation[3].dateCriterion[0].value = "2020-06-28"
* recommendation[3].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* recommendation[3].dateCriterion[1].value = "2020-07-25"
* recommendation[3].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* recommendation[3].dateCriterion[2].value = "2020-06-09"
* recommendation[3].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* recommendation[3].dateCriterion[3].value = "2099-06-28"
* recommendation[3].doseNumberPositiveInt = 1

* recommendation[4].vaccineCode = CVX#33 "pneumococcal polysaccharide PPV23"
* recommendation[4].forecastStatus = ForecastStatus#notComplete "Not Complete"
* recommendation[4].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* recommendation[4].dateCriterion[0].value = "2020-06-28"
* recommendation[4].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* recommendation[4].dateCriterion[1].value = "2020-07-25"
* recommendation[4].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* recommendation[4].dateCriterion[2].value = "2020-06-09"
* recommendation[4].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* recommendation[4].dateCriterion[3].value = "2099-06-28"
* recommendation[4].doseNumberPositiveInt = 1

* recommendation[5].vaccineCode = CVX#122 "rotavirus, unspecified formulation"
* recommendation[5].forecastStatus = ForecastStatus#notComplete "Not Complete"
* recommendation[5].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* recommendation[5].dateCriterion[0].value = "2020-06-28"
* recommendation[5].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* recommendation[5].dateCriterion[1].value = "2020-07-25"
* recommendation[5].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* recommendation[5].dateCriterion[2].value = "2020-06-09"
* recommendation[5].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* recommendation[5].dateCriterion[3].value = "2099-06-28"
* recommendation[5].doseNumberPositiveInt = 1
