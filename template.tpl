___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Decode from Base64",
  "categories": ["UTILITY"],
  "description": "Lets you to decode strings from their \u003cstrong\u003ebase64 \u003c/strong\u003e representation.\nReturns \u003cstrong\u003eundefined\u003c/strong\u003e when provided with invalid input.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "input",
    "displayName": "Decode from Base64:",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "enablingConditions": []
      }
    ],
    "help": "Insert a string from their base64 representation.\ne.g. \u003cstrong\u003eaGVsbG8\u003d\u003c/strong\u003e return \u003cstrong\u003ehello\u003c/strong\u003e .",
    "valueHint": "aGVsbG8\u003d"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const fromBase64 = require('fromBase64');

return fromBase64(data.input);


___TESTS___

scenarios:
- name: Variable result is defined
  code: |-
    // Call runCode to run the template's code.
    let variableResult = runCode();

    // Validate that the result of runCode is defined.
    assertThat(variableResult).isDefined();
setup: ''


___NOTES___

Developed by: Alfonso, Txema and Brais


