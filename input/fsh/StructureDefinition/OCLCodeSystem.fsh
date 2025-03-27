Profile: OCLCodeSystem
Parent: CodeSystem
Id: ocl-code-system
Title: "OCL CodeSystem Profile"
Description: "A profile for CodeSystem resources as defined by Open Concept Lab terminology services."
* ^url = "http://openconceptlab.org/fhir/StructureDefinition/OCLCodeSystem"
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
* content 1..1 MS // e.g., #complete, #example, #fragment

// Constrain status to typical values
* status from http://hl7.org/fhir/ValueSet/publication-status (required)

// Concept definition (codes within the CodeSystem)
* concept MS
* concept.code 1..1 MS
* concept.display 1..1 MS
* concept.definition 0..1
* concept.designation 0..*
* concept.designation.language 0..1
* concept.designation.value 1..1 MS
