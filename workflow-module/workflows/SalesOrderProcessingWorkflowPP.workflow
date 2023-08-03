{
	"contents": {
		"802c0ec5-4df9-40ed-bb0a-fd3fc605bb1e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "salesorderprocessingworkflowpp",
			"subject": "SalesOrderProcessingWorkflowPP",
			"name": "SalesOrderProcessingWorkflowPP",
			"documentation": "Workflow for my sales order processing",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"44190cf0-e404-4bd9-915b-cc6834590848": {
					"name": "Approval Form"
				},
				"931a4b00-09d2-4f00-8d77-7095d5b396cd": {
					"name": "ExclusiveGateway1"
				},
				"7aa97365-a5c4-4633-931d-4da110c6d67c": {
					"name": "ScriptTask1"
				},
				"a160bde5-077f-47d1-835e-9d776640e7c5": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"326b9f57-53d3-4fb5-a201-04834b8416f9": {
					"name": "SequenceFlow2"
				},
				"e828aea6-7159-45cb-a82d-b7c76a249d15": {
					"name": "SequenceFlow3"
				},
				"59319f90-66e6-424e-8bdb-8db499c68bd2": {
					"name": "SequenceFlow4"
				},
				"90daa6eb-c80a-4e18-af8b-4404a47e8d1e": {
					"name": "SequenceFlow5"
				},
				"6cbf9c78-f9ae-4af6-8a86-767e8ee9ff1b": {
					"name": "SequenceFlow6"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"eff8f4d9-1b9a-441c-81fc-1e88c5f13fb4": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"44190cf0-e404-4bd9-915b-cc6834590848": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "ApprovalForm",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "panagiotis.petsas@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWorkflowPP/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Form"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "44190cf0-e404-4bd9-915b-cc6834590848"
		},
		"326b9f57-53d3-4fb5-a201-04834b8416f9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "44190cf0-e404-4bd9-915b-cc6834590848",
			"targetRef": "931a4b00-09d2-4f00-8d77-7095d5b396cd"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"515ff1b1-8541-46d9-88ae-c604c77bc0dc": {},
				"0393567d-58ed-4427-a292-48037b5992b5": {},
				"6a0de5e5-5f53-4139-9632-9e481192fe6a": {},
				"fe6ee4ed-47b9-479e-abcb-373904e21541": {},
				"9b25bef3-93d0-442e-8a04-34996352f6c8": {},
				"be839c4b-d7c6-4c94-9c82-689aaa1d0b07": {},
				"e279cdb6-928d-4b7a-8c2e-9c36e023b6b6": {},
				"0557e6bc-85d2-4dda-a33e-c4b318763685": {},
				"f36d9cc9-56b3-432e-88d2-da46656d5a80": {}
			}
		},
		"eff8f4d9-1b9a-441c-81fc-1e88c5f13fb4": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWorkflowPP/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 35,
			"y": 112,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 672,
			"y": 117,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "65,130.5 250,130.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "515ff1b1-8541-46d9-88ae-c604c77bc0dc",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"515ff1b1-8541-46d9-88ae-c604c77bc0dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 200,
			"y": 105,
			"width": 100,
			"height": 60,
			"object": "44190cf0-e404-4bd9-915b-cc6834590848"
		},
		"0393567d-58ed-4427-a292-48037b5992b5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "250,130.5 380,130.5",
			"sourceSymbol": "515ff1b1-8541-46d9-88ae-c604c77bc0dc",
			"targetSymbol": "6a0de5e5-5f53-4139-9632-9e481192fe6a",
			"object": "326b9f57-53d3-4fb5-a201-04834b8416f9"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		},
		"931a4b00-09d2-4f00-8d77-7095d5b396cd": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "e828aea6-7159-45cb-a82d-b7c76a249d15"
		},
		"6a0de5e5-5f53-4139-9632-9e481192fe6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 359,
			"y": 105,
			"object": "931a4b00-09d2-4f00-8d77-7095d5b396cd"
		},
		"e828aea6-7159-45cb-a82d-b7c76a249d15": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "931a4b00-09d2-4f00-8d77-7095d5b396cd",
			"targetRef": "7aa97365-a5c4-4633-931d-4da110c6d67c"
		},
		"fe6ee4ed-47b9-479e-abcb-373904e21541": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "380,126 380,3.75 429.5,3.75",
			"sourceSymbol": "6a0de5e5-5f53-4139-9632-9e481192fe6a",
			"targetSymbol": "9b25bef3-93d0-442e-8a04-34996352f6c8",
			"object": "e828aea6-7159-45cb-a82d-b7c76a249d15"
		},
		"7aa97365-a5c4-4633-931d-4da110c6d67c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWorkflowPP/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"9b25bef3-93d0-442e-8a04-34996352f6c8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 429,
			"y": -26.25,
			"width": 100,
			"height": 60,
			"object": "7aa97365-a5c4-4633-931d-4da110c6d67c"
		},
		"59319f90-66e6-424e-8bdb-8db499c68bd2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "7aa97365-a5c4-4633-931d-4da110c6d67c",
			"targetRef": "a160bde5-077f-47d1-835e-9d776640e7c5"
		},
		"be839c4b-d7c6-4c94-9c82-689aaa1d0b07": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "479,3.75 656.5,3.75",
			"sourceSymbol": "9b25bef3-93d0-442e-8a04-34996352f6c8",
			"targetSymbol": "0557e6bc-85d2-4dda-a33e-c4b318763685",
			"object": "59319f90-66e6-424e-8bdb-8db499c68bd2"
		},
		"90daa6eb-c80a-4e18-af8b-4404a47e8d1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"Decline\"}",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "931a4b00-09d2-4f00-8d77-7095d5b396cd",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"e279cdb6-928d-4b7a-8c2e-9c36e023b6b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "380,133.5 672.5,133.5",
			"sourceSymbol": "6a0de5e5-5f53-4139-9632-9e481192fe6a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "90daa6eb-c80a-4e18-af8b-4404a47e8d1e"
		},
		"a160bde5-077f-47d1-835e-9d776640e7c5": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"0557e6bc-85d2-4dda-a33e-c4b318763685": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 606.5,
			"y": -26.25,
			"width": 100,
			"height": 60,
			"object": "a160bde5-077f-47d1-835e-9d776640e7c5"
		},
		"6cbf9c78-f9ae-4af6-8a86-767e8ee9ff1b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "a160bde5-077f-47d1-835e-9d776640e7c5",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"f36d9cc9-56b3-432e-88d2-da46656d5a80": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "656.5,3.75 656.5,75.625 689.5,75.625 689.5,134.5",
			"sourceSymbol": "0557e6bc-85d2-4dda-a33e-c4b318763685",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "6cbf9c78-f9ae-4af6-8a86-767e8ee9ff1b"
		}
	}
}