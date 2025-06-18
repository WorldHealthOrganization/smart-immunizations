Feature: IMMZ.IND.01 Immunization coverage for BCG vaccine

  Scenario: Load the data to be used for testing
    * def databundle = read('Bundle-IMMZIND01.json')
    Given url urlBase
    And request databundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "201 Created" } 

  Scenario: Evaluate the IND.01 measure
    Given url urlBase
    And path 'Measure/IMMZIND01/$evaluate-measure'
    And request { periodStart: '2025-01-01', periodEnd: '2025-06-30' }
    When method get
    Then status 200
    And match response.group[0].population[?(@.id=='IMMZ.IND.01.IP')].count == [27]
    And match response.group[0].population[?(@.id=='IMMZ.IND.01.D')].count == [27]
    And match response.group[0].population[?(@.id=='IMMZ.IND.01.N')].count == [1]

  Scenario: Delete the data after testing
    * def delbundle = read('Bundle-DEL-IMMZIND01.json')
    Given url urlBase
    And request delbundle
    When method post
    Then status 200
    And match each response.entry..response contains { status: "204 No Content" }

