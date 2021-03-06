# Created by Nayira.Sanchez at 11/07/2017
  # JIRA: EOBS-1087
  # Scenarios covered: 2, 3 and 4

Feature: NEWS Observation - Data Entry

  Background: NEWS Form - Set up
    Given the user NEWSForm Nurse exists
    And user NEWSForm Nurse has the role of Nurse
    And the user NEWSForm Nurse is in Shift for Ward Test
    And the patient NEWSForm Patient is in NEWSForm Bed of Ward Test
    And the user NEWSForm Nurse is allocated to NEWSForm Bed of Ward Test

  Scenario: NEWS Observation Form is correctly displayed
    Given the user NEWSForm Nurse logs into the mobile app
    And they view the My Patients list
    And the My Patients list has loaded
    When the Patient NEWSForm Patient is selected
    And the Take observation button is selected
    And the NEWS observation is selected from the list
    Then the NEWS observation form is displayed
    And the Respiration Rate field is displayed
    And the O2 Saturation field is displayed
    And the Body Temperature field is displayed
    And the Blood Pressure Systolic field is displayed
    And the Blood Pressure Diastolic field is displayed
    And the Pulse Rate field is displayed
    And the AVPU field is displayed
    And the Patient on supplemental O2 field is displayed
    And the O2 Device field is not displayed
    When the value 10 is inputted in the Respiration Rate field
    And the value 10 is inputted in the O2 Saturation field
    And the value 10 is inputted in the Body Temperature field
    And the value 10 is inputted in the Blood Pressure Systolic field
    And the value 10 is inputted in the Blood Pressure Diastolic field
    And the value 10 is inputted in the Pulse Rate field
    And the value Alert is selected in the AVPU field
    And the value Yes is selected in the Patient on supplemental O2 field
    Then the O2 Device field is displayed
