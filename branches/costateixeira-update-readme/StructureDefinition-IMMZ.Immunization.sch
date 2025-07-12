<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Immunization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Immunization</sch:title>
    <sch:rule context="f:Immunization">
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand']) &gt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZLiveVaccine']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZLiveVaccine': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization']) &gt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:extension</sch:title>
    <sch:rule context="f:Immunization/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:location</sch:title>
    <sch:rule context="f:Immunization/f:location">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination']) &gt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZAdministrativeArea']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZAdministrativeArea': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:protocolApplied</sch:title>
    <sch:rule context="f:Immunization/f:protocolApplied">
      <sch:assert test="count(f:extension[@url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose']) &lt;= 1">extension with URL = 'http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:series) &gt;= 1">series: minimum cardinality of 'series' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
