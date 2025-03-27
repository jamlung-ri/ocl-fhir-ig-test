Profile: OCLValueSet
Parent: ValueSet
Id: ocl-value-set
Title: "OCL ValueSet Profile"
Description: "A profile for ValueSet resources as defined by Open Concept Lab terminology services."
* ^url = "http://openconceptlab.org/fhir/StructureDefinition/OCLValueSet"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Open Concept Lab"

// Mandatory fields
* url 1..1 MS
* identifier 0..* MS
* version 1..1 MS
* name 1..1 MS
* title 1..1 MS
* status 1..1 MS
* publisher 0..1 MS

// Constrain status
* status from http://hl7.org/fhir/ValueSet/publication-status (required)

// Compose section (defines included codes)
* compose 0..1 MS
* compose.include 1..* MS
* compose.include.system 1..1 MS
* compose.include.version 0..1
* compose.include.concept 0..*
* compose.include.concept.code 1..1 MS
* compose.include.concept.display 0..1

// Expansion section (optional, for pre-expanded sets)
* expansion 0..1 MS
* expansion.timestamp 1..1 MS
* expansion.contains 0..*
* expansion.contains.system 1..1 MS
* expansion.contains.code 1..1 MS
* expansion.contains.display 0..1
