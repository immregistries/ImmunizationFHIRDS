Instance:		ImmDSParameterInExample01
InstanceOf: 	Parameters
Description: 	"Example Input Parameter List for ImmDS Operation"
Usage: 			#example
* id = "parameters-in-example"
* parameter[0].name = "assessmentDate"
* parameter[0].valueDate = "2020-06-02"
* parameter[1].name = "patient"
* parameter[1].resource.resourceType = "Patient"
* parameter[1].resource.id = "ImmDSPatientExample"
* parameter[1].resource.identifier.value = "1234"
* parameter[1].resource.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* parameter[1].resource.identifier.system = "http://www.acme.com/identifiers/patient"
* parameter[1].resource.name.family = "Wellington"
* parameter[1].resource.name.given[0] = "Gene"
* parameter[1].resource.gender = #male "Male"
* parameter[1].resource.birthDate = "2020-04-28"
* parameter[2].name = "immunization"
* parameter[2].resource.resourceType = "Immunization"
* parameter[2].resource.id = "ImmDSImmunizationExample"
* parameter[2].resource.status = #completed "Completed"
* parameter[2].resource.vaccineCode = CVX#08 "Hep B, adolescent or pediatric"
* parameter[2].resource.patient = Reference(ImmDSPatientExample)
* parameter[2].resource.occurrenceDateTime = "2020-04-28"
* parameter[2].resource.primarySource = true



Instance:		ImmDSParameterOutExample01
InstanceOf: 	Parameters
Description: 	"Example Output Parameter List for ImmDS Operation"
Usage: 			#example
* id = "parameters-out-example"
* parameter[0].name = "evaluation"
* parameter[0].resource.resourceType = "ImmunizationEvaluation"
* parameter[0].resource.id = "immunization-evaluation-example"
* parameter[0].resource.status = #completed "Completed"
* parameter[0].resource.patient = Reference(ImmDSPatientExample)
* parameter[0].resource.date = "2020-05-26"
* parameter[0].resource.targetDisease = SCT#66071002 "Hepatitis B"
* parameter[0].resource.immunizationEvent = Reference(ImmDSImmunizationExample)
* parameter[0].resource.doseStatus = 	http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status#valid "Valid"
* parameter[0].resource.series  = "ACIP 3-dose HepB series"
* parameter[0].resource.doseNumberPositiveInt = 1
* parameter[0].resource.seriesDosesPositiveInt = 3
* parameter[1].name = "recommendation"
* parameter[1].resource.resourceType = "ImmunizationRecommendation"
* parameter[1].resource.id = "immunizationrecommendation-forecast-example"
* parameter[1].resource.patient = Reference(ImmDSPatientExample)
* parameter[1].resource.date = "2020-05-26"
* parameter[1].resource.recommendation[0].vaccineCode = CVX#45 "Hep B, unspecified formulation"
* parameter[1].resource.recommendation[0].forecastStatus = ForecastStatus#notComplete "Not Complete"
* parameter[1].resource.recommendation[0].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* parameter[1].resource.recommendation[0].dateCriterion[0].value = "2020-05-28"
* parameter[1].resource.recommendation[0].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* parameter[1].resource.recommendation[0].dateCriterion[1].value = "2020-09-25"
* parameter[1].resource.recommendation[0].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* parameter[1].resource.recommendation[0].dateCriterion[2].value = "2020-05-26"
* parameter[1].resource.recommendation[0].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* parameter[1].resource.recommendation[0].dateCriterion[3].value = "2020-11-25"
* parameter[1].resource.recommendation[0].doseNumberPositiveInt = 2

* parameter[1].resource.recommendation[1].vaccineCode = CVX#20 "DTaP"
* parameter[1].resource.recommendation[1].forecastStatus = ForecastStatus#notComplete "Not Complete"
* parameter[1].resource.recommendation[1].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* parameter[1].resource.recommendation[1].dateCriterion[0].value = "2020-06-28"
* parameter[1].resource.recommendation[1].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* parameter[1].resource.recommendation[1].dateCriterion[1].value = "2020-07-25"
* parameter[1].resource.recommendation[1].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* parameter[1].resource.recommendation[1].dateCriterion[2].value = "2020-06-09"
* parameter[1].resource.recommendation[1].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* parameter[1].resource.recommendation[1].dateCriterion[3].value = "2099-06-28"
* parameter[1].resource.recommendation[1].doseNumberPositiveInt = 1

* parameter[1].resource.recommendation[2].vaccineCode = CVX#17 "Hib, unspecified formulation"
* parameter[1].resource.recommendation[2].forecastStatus = ForecastStatus#notComplete "Not Complete"
* parameter[1].resource.recommendation[2].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* parameter[1].resource.recommendation[2].dateCriterion[0].value = "2020-06-28"
* parameter[1].resource.recommendation[2].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* parameter[1].resource.recommendation[2].dateCriterion[1].value = "2020-07-25"
* parameter[1].resource.recommendation[2].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* parameter[1].resource.recommendation[2].dateCriterion[2].value = "2020-06-09"
* parameter[1].resource.recommendation[2].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* parameter[1].resource.recommendation[2].dateCriterion[3].value = "2099-06-28"
* parameter[1].resource.recommendation[2].doseNumberPositiveInt = 1

* parameter[1].resource.recommendation[3].vaccineCode = CVX#10 "IPV"
* parameter[1].resource.recommendation[3].forecastStatus = ForecastStatus#notComplete "Not Complete"
* parameter[1].resource.recommendation[3].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* parameter[1].resource.recommendation[3].dateCriterion[0].value = "2020-06-28"
* parameter[1].resource.recommendation[3].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* parameter[1].resource.recommendation[3].dateCriterion[1].value = "2020-07-25"
* parameter[1].resource.recommendation[3].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* parameter[1].resource.recommendation[3].dateCriterion[2].value = "2020-06-09"
* parameter[1].resource.recommendation[3].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* parameter[1].resource.recommendation[3].dateCriterion[3].value = "2099-06-28"
* parameter[1].resource.recommendation[3].doseNumberPositiveInt = 1

* parameter[1].resource.recommendation[4].vaccineCode = CVX#33 "pneumococcal polysaccharide PPV23"
* parameter[1].resource.recommendation[4].forecastStatus = ForecastStatus#notComplete "Not Complete"
* parameter[1].resource.recommendation[4].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* parameter[1].resource.recommendation[4].dateCriterion[0].value = "2020-06-28"
* parameter[1].resource.recommendation[4].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* parameter[1].resource.recommendation[4].dateCriterion[1].value = "2020-07-25"
* parameter[1].resource.recommendation[4].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* parameter[1].resource.recommendation[4].dateCriterion[2].value = "2020-06-09"
* parameter[1].resource.recommendation[4].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* parameter[1].resource.recommendation[4].dateCriterion[3].value = "2099-06-28"
* parameter[1].resource.recommendation[4].doseNumberPositiveInt = 1

* parameter[1].resource.recommendation[5].vaccineCode = CVX#122 "rotavirus, unspecified formulation"
* parameter[1].resource.recommendation[5].forecastStatus = ForecastStatus#notComplete "Not Complete"
* parameter[1].resource.recommendation[5].dateCriterion[0].code = LN#30980-7 "Date vaccine due"
* parameter[1].resource.recommendation[5].dateCriterion[0].value = "2020-06-28"
* parameter[1].resource.recommendation[5].dateCriterion[1].code = LN#59778-1 "Date when overdue for immunization"
* parameter[1].resource.recommendation[5].dateCriterion[1].value = "2020-07-25"
* parameter[1].resource.recommendation[5].dateCriterion[2].code = LN#30981-5 "Earliest date to give"
* parameter[1].resource.recommendation[5].dateCriterion[2].value = "2020-06-09"
* parameter[1].resource.recommendation[5].dateCriterion[3].code = LN#59777-3 "Latest date to give immunization"
* parameter[1].resource.recommendation[5].dateCriterion[3].value = "2099-06-28"
* parameter[1].resource.recommendation[5].doseNumberPositiveInt = 1