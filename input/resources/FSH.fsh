// OCL FHIR Implementation Guide
// FHIR Shorthand (FSH) Definitions for OCL Resources

// -----------------------------------------------------------------------------
// Aliases for external code systems and value sets
// -----------------------------------------------------------------------------
Alias: $v3-PublicationStatus = http://terminology.hl7.org/CodeSystem/v3-PublicationStatus
Alias: $publicationstatus = http://hl7.org/fhir/publication-status
Alias: $spdx = http://hl7.org/fhir/spdx-license

// -----------------------------------------------------------------------------
// Profile: OCLSource - Based on CodeSystem
// -----------------------------------------------------------------------------
Profile: OCLSource
Parent: CodeSystem
Id: ocl-source
Title: "OCL Source"
Description: "Profile of FHIR CodeSystem to represent OCL Source resources"

* ^status = #active
* ^publisher = "Open Concept Lab"
* ^version = "0.1.0"

// Core OCL Source properties
* url 1..1 MS // Maps to OCL source URL property
* identifier 0..* MS // Maps to OCL 'external_id'
* version 0..1 MS // Maps to OCL version property
* name 1..1 MS // Maps to OCL name property (source unique mnemonic)
* title 0..1 MS // Maps to OCL full_name property
* status 1..1 MS // Maps based on OCL retired flag
* experimental 0..1 MS // Maps to OCL experimental property
* date 0..1 MS // Based on OCL updated_on
* publisher 0..1 MS // Maps to OCL owner property
* description 0..1 MS // Maps to OCL description property
* content 1..1 MS // Should be #complete or #fragment depending on completeness
* copyright 0..1 MS // Maps to OCL copyright property

// OCL Source specific extensions
* extension contains
    SourceType named sourceType 0..1 MS and
    PublicAccess named publicAccess 0..1 MS and
    DefaultLocale named defaultLocale 0..1 MS and
    SupportedLocales named supportedLocales 0..* MS and
    Website named website 0..1 MS and
    CustomValidationSchema named customValidationSchema 0..1 MS and
    CollectionReference named collectionReference 0..1 MS and
    ShortCode named shortCode 0..1 MS

// -----------------------------------------------------------------------------
// Profile: OCLConcept - Based on CodeSystem.concept
// -----------------------------------------------------------------------------
Profile: OCLConcept
Parent: CodeSystemConcept
Id: ocl-concept
Title: "OCL Concept"
Description: "Profile of FHIR CodeSystem.concept to represent OCL Concept resources"

* ^status = #active
* ^publisher = "Open Concept Lab"
* ^version = "0.1.0"

* code 1..1 MS // Maps to OCL 'id' property
* display 0..1 MS // Maps to OCL display_name property
* definition 0..1 MS // Maps to first description in OCL descriptions array
* designation 0..* MS // Maps to OCL names array

// OCL Concept specific extensions
* extension contains
    ConceptClass named conceptClass 1..1 MS and
    DataType named dataType 1..1 MS and
    ExternalId named externalId 0..1 MS and
    UUID named uuid 0..1 MS and
    RetiredStatus named retired 0..1 MS and
    UpdatedOn named updatedOn 0..1 MS and
    CreatedOn named createdOn 0..1 MS and
    CreatedBy named createdBy 0..1 MS and
    UpdatedBy named updatedBy 0..1 MS and
    Extras named extras 0..* MS

// -----------------------------------------------------------------------------
// Extensions for OCL Source specific attributes
// -----------------------------------------------------------------------------
Extension: SourceType
Id: source-type
Title: "Source Type"
Description: "Represents the OCL source_type attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: PublicAccess
Id: public-access
Title: "Public Access"
Description: "Represents the OCL public_access attribute"
* value[x] only code
* valueCode from PublicAccessValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: DefaultLocale
Id: default-locale
Title: "Default Locale"
Description: "Represents the OCL default_locale attribute"
* value[x] only code
* valueCode from LocaleValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: SupportedLocales
Id: supported-locales
Title: "Supported Locales"
Description: "Represents the OCL supported_locales attribute"
* value[x] only code
* valueCode from LocaleValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: Website
Id: website
Title: "Website"
Description: "Represents the OCL website attribute"
* value[x] only url
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: CustomValidationSchema
Id: custom-validation-schema
Title: "Custom Validation Schema"
Description: "Represents the OCL custom_validation_schema attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: CollectionReference
Id: collection-reference
Title: "Collection Reference"
Description: "Represents the OCL collection_reference attribute"
* value[x] only boolean
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

Extension: ShortCode
Id: short-code
Title: "Short Code"
Description: "Represents the OCL short_code attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem"

// -----------------------------------------------------------------------------
// Extensions for OCL Concept specific attributes
// -----------------------------------------------------------------------------
Extension: ConceptClass
Id: concept-class
Title: "Concept Class"
Description: "Represents the OCL concept_class attribute"
* value[x] only code
* valueCode from ConceptClassValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: DataType
Id: data-type
Title: "Data Type"
Description: "Represents the OCL datatype attribute"
* value[x] only code
* valueCode from ConceptDatatypeValueSet (required)
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: ExternalId
Id: external-id
Title: "External ID"
Description: "Represents the OCL external_id attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: UUID
Id: uuid
Title: "UUID"
Description: "Represents the OCL uuid attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: RetiredStatus
Id: retired-status
Title: "Retired Status"
Description: "Represents the OCL retired attribute"
* value[x] only boolean
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: UpdatedOn
Id: updated-on
Title: "Updated On"
Description: "Represents the OCL updated_on attribute"
* value[x] only dateTime
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: CreatedOn
Id: created-on
Title: "Created On"
Description: "Represents the OCL created_on attribute"
* value[x] only dateTime
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: CreatedBy
Id: created-by
Title: "Created By"
Description: "Represents the OCL created_by attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: UpdatedBy
Id: updated-by
Title: "Updated By"
Description: "Represents the OCL updated_by attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

Extension: Extras
Id: extras
Title: "Extras"
Description: "Represents the OCL extras attribute"
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "CodeSystem.concept"

// -----------------------------------------------------------------------------
// ValueSets for OCL specific codes
// -----------------------------------------------------------------------------
ValueSet: PublicAccessValueSet
Id: public-access-vs
Title: "Public Access Value Set"
Description: "Allowed values for OCL public_access attribute"
* ^status = #active
* include codes from system PublicAccessCodeSystem

ValueSet: ConceptDatatypeValueSet
Id: concept-datatype-vs
Title: "Concept Datatype Value Set"
Description: "Allowed values for OCL concept datatype attribute"
* ^status = #active
* include codes from system ConceptDatatypeCodeSystem

ValueSet: ConceptClassValueSet
Id: concept-class-vs
Title: "Concept Class Value Set"
Description: "Allowed values for OCL concept_class attribute"
* ^status = #active
* include codes from system ConceptClassCodeSystem

ValueSet: LocaleValueSet
Id: locale-vs
Title: "Locale Value Set"
Description: "Allowed values for OCL locales (default_locale and supported_locales)"
* ^status = #active
* include codes from system LocaleCodeSystem

// -----------------------------------------------------------------------------
// CodeSystems for OCL specific codes
// -----------------------------------------------------------------------------
CodeSystem: PublicAccessCodeSystem
Id: public-access-cs
Title: "Public Access Code System"
Description: "Code system for OCL public_access values"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #View "View" "Public can view the resource"
* #Edit "Edit" "Public can edit the resource"
* #None "None" "No public access to the resource"

CodeSystem: ConceptDatatypeCodeSystem
Id: concept-datatype-cs
Title: "Concept Datatype Code System"
Description: "Code system for OCL concept datatype values"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #N/A "Not Applicable" "No datatype specified"
* #Boolean "Boolean" "True/False datatype"
* #Coded "Coded" "Coded value datatype"
* #Complex "Complex" "Complex datatype"
* #Date "Date" "Date datatype"
* #DateTime "DateTime" "Date and time datatype"
* #Document "Document" "Document datatype"
* #Float "Float" "Floating point number datatype"
* #Integer "Integer" "Integer datatype"
* #None "None" "No datatype"
* #Numeric "Numeric" "Numeric datatype"
* #Text "Text" "Text datatype"
* #Time "Time" "Time datatype"

CodeSystem: ConceptClassCodeSystem
Id: concept-class-cs
Title: "Concept Class Code System"
Description: "Code system for OCL concept_class values as identified in sample data"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #Diagnosis "Diagnosis" "A category representing diagnostic concepts"
* #Symptom "Symptom" "A category representing symptom concepts"
* #Finding "Finding" "A category representing clinical findings"
* #Symptom/Finding "Symptom/Finding" "A category representing both symptoms and findings"
* #Procedure "Procedure" "A category representing procedural concepts"
* #Drug "Drug" "A category representing medication/drug concepts"
* #Test "Test" "A category representing diagnostic test concepts"
* #LabSet "LabSet" "A category representing laboratory test panels"
* #MedSet "MedSet" "A category representing medication sets"
* #ConvSet "ConvSet" "A category representing convenience sets"
* #Question "Question" "A category representing question concepts"
* #Anatomy "Anatomy" "A category representing anatomical concepts"
* #Misc "Miscellaneous" "A category for concepts that don't fit other classes"
* #State "State" "A category representing various states"
* #Program "Program" "A category representing program-related concepts"
* #Workflow "Workflow" "A category representing workflow-related concepts"
* #Indicator "Indicator" "A category representing indicator concepts"
* #Health Care Monitoring Topics "Health Care Monitoring Topics" "A category for monitoring-related concepts"
* #Frequency "Frequency" "A category representing frequency-related concepts"

CodeSystem: LocaleCodeSystem
Id: locale-cs
Title: "Locale Code System"
Description: "Code system for OCL locale values based on the provided sample data"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #en "English" "English language"
* #es "Spanish" "Spanish language"
* #fr "French" "French language"
* #nl "Dutch" "Dutch language"
* #am "Amharic" "Amharic language"
* #ar "Arabic" "Arabic language"
* #bn "Bengali" "Bengali language"
* #km "Khmer" "Khmer language"
* #ht "Haitian" "Haitian Creole language"
* #id "Indonesian" "Indonesian language"
* #it "Italian" "Italian language"
* #rw "Kinyarwanda" "Kinyarwanda language"
* #om "Oromo" "Oromo language"
* #pt "Portuguese" "Portuguese language"
* #ru "Russian" "Russian language"
* #sw "Swahili" "Swahili language"
* #ti "Tigrinya" "Tigrinya language"
* #ur "Urdu" "Urdu language"
* #vi "Vietnamese" "Vietnamese language"
* #ne "Nepali" "Nepali language"

// -----------------------------------------------------------------------------
// Instance examples based on provided JSON data
// -----------------------------------------------------------------------------

// Example of OCLSource instance based on the provided JSON
Instance: CIELSource
InstanceOf: OCLSource
Title: "CIEL Source"
Description: "Example of a CIEL terminology source in OCL"

* id = "CIEL"
* url = "https://CIELterminology.org"
* identifier.value = "249b13c8-72fa-4b96-8d3d-b200efed985e"
* identifier.system = "http://openconceptlab.org/external_id"
* name = "CIEL"
* title = "Columbia International eHealth Laboratory Concept Dictionary"
* status = #active
* content = #complete
* description = "Columbia International eHealth Laboratory Concept Dictionary"
* publisher = "CIEL"
* copyright = "The Columbia International eHealth Laboratory (CIEL) dictionary is a shared open concept dictionary. CIEL is protected by copyright."
* version = "HEAD"
* date = "2024-04-29T17:30:07.562424Z"

// Extension elements
* extension[sourceType].valueString = "Interface Terminology"
* extension[publicAccess].valueCode = #View
* extension[defaultLocale].valueCode = #en
* extension[shortCode].valueString = "CIEL"
* extension[customValidationSchema].valueString = "OpenMRS"
* extension[supportedLocales][0].valueCode = #en
* extension[supportedLocales][1].valueCode = #am
* extension[supportedLocales][2].valueCode = #ar
* extension[supportedLocales][3].valueCode = #bn
* extension[supportedLocales][4].valueCode = #km
* extension[supportedLocales][5].valueCode = #nl
* extension[supportedLocales][6].valueCode = #fr
* extension[supportedLocales][7].valueCode = #ht
* extension[supportedLocales][8].valueCode = #id
* extension[supportedLocales][9].valueCode = #it
* extension[supportedLocales][10].valueCode = #rw
* extension[supportedLocales][11].valueCode = #om
* extension[supportedLocales][12].valueCode = #pt
* extension[supportedLocales][13].valueCode = #ru
* extension[supportedLocales][14].valueCode = #es
* extension[supportedLocales][15].valueCode = #sw
* extension[supportedLocales][16].valueCode = #ti
* extension[supportedLocales][17].valueCode = #ur
* extension[supportedLocales][18].valueCode = #vi
* extension[supportedLocales][19].valueCode = #ne
* extension[website].valueUrl = "https://CIELterminology.org"

// Example of OCLConcept instance based on the provided JSON
Instance: CarcinomaOfSupraglottis
InstanceOf: OCLConcept
Title: "Carcinoma of supraglottis"
Description: "Example of a concept from the CIEL source"

* code = "146208"
* display = "Carcinoma of supraglottis"

// Extension elements
* extension[conceptClass].valueCode = #Diagnosis
* extension[dataType].valueCode = #N/A
* extension[externalId].valueString = "146208AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
* extension[uuid].valueString = "83468"
* extension[retired].valueBoolean = false
* extension[updatedOn].valueDateTime = "2025-04-06T04:40:02.383510Z"
* extension[createdOn].valueDateTime = "2021-03-29T05:00:33.962884Z"
* extension[createdBy].valueString = "ocladmin"
* extension[updatedBy].valueString = "ocladmin"

// Designations for names (both EN and ES)
* designation[0].value = "Carcinoma of supraglottis"
* designation[0].language = #en
* designation[0].use.code = #900000000000013009 // "Fully specified name"

* designation[1].value = "carcinoma de supraglotis"
* designation[1].language = #es
* designation[1].use.code = #900000000000013009 // "Fully specified name"