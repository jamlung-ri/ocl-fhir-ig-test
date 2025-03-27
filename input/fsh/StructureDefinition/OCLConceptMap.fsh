Profile: OCLConceptMap
Parent: ConceptMap
Id: ocl-concept-map
Title: "OCL ConceptMap Profile"
Description: "A profile for ConceptMap resources as defined by Open Concept Lab terminology services."
* ^url = "http://openconceptlab.org/fhir/StructureDefinition/OCLConceptMap"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Open Concept Lab"

// Mandatory fields
* url 1..1 MS
* identifier 1..1 MS
* version 1..1 MS
* name 1..1 MS
* title 1..1 MS
* status 1..1 MS
* publisher 0..1 MS

// Source and Target with proper type constraints
* source[x] 1..1 MS
* source[x] ^short = "The source system or value set (uri or Reference)"
* target[x] 1..1 MS
* target[x] ^short = "The target system or value set (uri or Reference)"


// Constrain status
* status from http://hl7.org/fhir/ValueSet/publication-status (required)

// Mapping group
* group 0..* MS
* group.source 1..1 MS 
* group.source ^short = "URI of source system"
* group.target 1..1 MS 
* group.target ^short = "URI of target system"
* group.element 1..* MS
* group.element.code 1..1 MS
* group.element.target 1..* MS
* group.element.target.code 1..1 MS
* group.element.target.equivalence	 1..1 MS
* group.element.target.equivalence	 from http://hl7.org/fhir/ValueSet/concept-map-equivalence (required)
