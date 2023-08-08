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
				},
				"e0bddc44-f07f-4d9c-974d-e51ff168828e": {
					"name": "User Task Item Details"
				},
				"ddbd565b-0e0a-4e0b-89bf-a590777da73a": {
					"name": "ExclusiveGateway2"
				},
				"ae43344f-fe27-4f3f-b960-d10bb2d54d00": {
					"name": "ScriptTask3"
				},
				"a2abd380-69fa-4421-82d8-a99a25bd77a9": {
					"name": "MailTask2"
				},
				"ef0c7e7c-314e-4d59-a0a0-be92e58c72e4": {
					"name": "ServiceTask2"
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
				},
				"9258448c-0aca-4bd9-b247-a1757e4304b2": {
					"name": "SequenceFlow7"
				},
				"7c8dda78-36fd-46a1-9310-4d5da374f2ca": {
					"name": "SequenceFlow11"
				},
				"60d978bd-30b8-4a72-90ce-8a68e6da5715": {
					"name": "SequenceFlow13"
				},
				"5b7009c3-c104-4ead-98e9-c9cda352aab2": {
					"name": "SequenceFlow14"
				},
				"007b5187-3b83-464c-ad72-c227d3ed7fa6": {
					"name": "SequenceFlow15"
				},
				"fe440fc5-281b-41b1-8c37-8d02be264235": {
					"name": "SequenceFlow16"
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
		"931a4b00-09d2-4f00-8d77-7095d5b396cd": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "e828aea6-7159-45cb-a82d-b7c76a249d15"
		},
		"7aa97365-a5c4-4633-931d-4da110c6d67c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWorkflowPP/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
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
		"e0bddc44-f07f-4d9c-974d-e51ff168828e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sales order number",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "panagiotis.petsas@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWorkflowPP/ItemDetailsForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "itemdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "User Task Item Details"
		},
		"ddbd565b-0e0a-4e0b-89bf-a590777da73a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "60d978bd-30b8-4a72-90ce-8a68e6da5715"
		},
		"ae43344f-fe27-4f3f-b960-d10bb2d54d00": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWorkflowPP/GetSalesOrderItem.js",
			"id": "scripttask3",
			"name": "ScriptTask3"
		},
		"a2abd380-69fa-4421-82d8-a99a25bd77a9": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "MailTask2",
			"mailDefinitionRef": "8de01c58-50a0-46e9-a243-bb58178972c6"
		},
		"ef0c7e7c-314e-4d59-a0a0-be92e58c72e4": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder('{SalesOrder}')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Accept",
				"value": "application/json"
			}, {
				"name": "Content-Type",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
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
		"e828aea6-7159-45cb-a82d-b7c76a249d15": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "931a4b00-09d2-4f00-8d77-7095d5b396cd",
			"targetRef": "7aa97365-a5c4-4633-931d-4da110c6d67c"
		},
		"59319f90-66e6-424e-8bdb-8db499c68bd2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "7aa97365-a5c4-4633-931d-4da110c6d67c",
			"targetRef": "a160bde5-077f-47d1-835e-9d776640e7c5"
		},
		"90daa6eb-c80a-4e18-af8b-4404a47e8d1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"decline\" }",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "931a4b00-09d2-4f00-8d77-7095d5b396cd",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6cbf9c78-f9ae-4af6-8a86-767e8ee9ff1b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "a160bde5-077f-47d1-835e-9d776640e7c5",
			"targetRef": "e0bddc44-f07f-4d9c-974d-e51ff168828e"
		},
		"9258448c-0aca-4bd9-b247-a1757e4304b2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "e0bddc44-f07f-4d9c-974d-e51ff168828e",
			"targetRef": "ddbd565b-0e0a-4e0b-89bf-a590777da73a"
		},
		"7c8dda78-36fd-46a1-9310-4d5da374f2ca": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision == \"decline\" }",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "ddbd565b-0e0a-4e0b-89bf-a590777da73a",
			"targetRef": "a2abd380-69fa-4421-82d8-a99a25bd77a9"
		},
		"60d978bd-30b8-4a72-90ce-8a68e6da5715": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "ddbd565b-0e0a-4e0b-89bf-a590777da73a",
			"targetRef": "ae43344f-fe27-4f3f-b960-d10bb2d54d00"
		},
		"5b7009c3-c104-4ead-98e9-c9cda352aab2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "a2abd380-69fa-4421-82d8-a99a25bd77a9",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"007b5187-3b83-464c-ad72-c227d3ed7fa6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "ae43344f-fe27-4f3f-b960-d10bb2d54d00",
			"targetRef": "ef0c7e7c-314e-4d59-a0a0-be92e58c72e4"
		},
		"fe440fc5-281b-41b1-8c37-8d02be264235": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "ef0c7e7c-314e-4d59-a0a0-be92e58c72e4",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
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
				"f36d9cc9-56b3-432e-88d2-da46656d5a80": {},
				"6273665b-365b-41e3-8574-d6724c6f88e5": {},
				"9b1e5df0-c717-47ed-9441-9a5160f64c0a": {},
				"2ccc48df-3112-4866-997e-69fe230fe5f5": {},
				"e95c3a23-20cf-4910-8ecf-072865e08d9e": {},
				"7b0f1e30-1143-4426-9466-01ea4963b756": {},
				"0d3890fb-8bae-48f8-bb07-f51e572300b3": {},
				"eccdd744-a9a4-4cf7-a1d7-b80b4cf9d426": {},
				"b048d17c-eeb0-4272-8f26-2048f7ba64ab": {},
				"81e6827c-3631-4cef-bf24-055ab5d421b4": {},
				"6a9c0986-6926-4349-a016-ef9c4cd5abcc": {},
				"e03ffa35-0e6b-4554-85cd-0963d71419d4": {}
			}
		},
		"eff8f4d9-1b9a-441c-81fc-1e88c5f13fb4": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWorkflowPP/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 16,
			"y": 135,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1461,
			"y": 137,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "46,157 98.18521118164062,157 98.18521118164062,143 199,143",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "515ff1b1-8541-46d9-88ae-c604c77bc0dc",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"515ff1b1-8541-46d9-88ae-c604c77bc0dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 149,
			"y": 121,
			"width": 100,
			"height": 60,
			"object": "44190cf0-e404-4bd9-915b-cc6834590848"
		},
		"0393567d-58ed-4427-a292-48037b5992b5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "199,151.25 318.75,151.25 318.75,106.25 389,106.25",
			"sourceSymbol": "515ff1b1-8541-46d9-88ae-c604c77bc0dc",
			"targetSymbol": "6a0de5e5-5f53-4139-9632-9e481192fe6a",
			"object": "326b9f57-53d3-4fb5-a201-04834b8416f9"
		},
		"6a0de5e5-5f53-4139-9632-9e481192fe6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 388,
			"y": 89,
			"object": "931a4b00-09d2-4f00-8d77-7095d5b396cd"
		},
		"fe6ee4ed-47b9-479e-abcb-373904e21541": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "409,110 409,3.75 460.5,3.75",
			"sourceSymbol": "6a0de5e5-5f53-4139-9632-9e481192fe6a",
			"targetSymbol": "9b25bef3-93d0-442e-8a04-34996352f6c8",
			"object": "e828aea6-7159-45cb-a82d-b7c76a249d15"
		},
		"9b25bef3-93d0-442e-8a04-34996352f6c8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 460,
			"y": -26.25,
			"width": 100,
			"height": 60,
			"object": "7aa97365-a5c4-4633-931d-4da110c6d67c"
		},
		"be839c4b-d7c6-4c94-9c82-689aaa1d0b07": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "510,5 682.5,5",
			"sourceSymbol": "9b25bef3-93d0-442e-8a04-34996352f6c8",
			"targetSymbol": "0557e6bc-85d2-4dda-a33e-c4b318763685",
			"object": "59319f90-66e6-424e-8bdb-8db499c68bd2"
		},
		"e279cdb6-928d-4b7a-8c2e-9c36e023b6b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "409,117.5 409,224.5 1478.5,224.5 1478.5,171.5",
			"sourceSymbol": "6a0de5e5-5f53-4139-9632-9e481192fe6a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "90daa6eb-c80a-4e18-af8b-4404a47e8d1e"
		},
		"0557e6bc-85d2-4dda-a33e-c4b318763685": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 632.5,
			"y": -26.25,
			"width": 100,
			"height": 60,
			"object": "a160bde5-077f-47d1-835e-9d776640e7c5"
		},
		"f36d9cc9-56b3-432e-88d2-da46656d5a80": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "682.5,3.6875 865,3.6875",
			"sourceSymbol": "0557e6bc-85d2-4dda-a33e-c4b318763685",
			"targetSymbol": "6273665b-365b-41e3-8574-d6724c6f88e5",
			"object": "6cbf9c78-f9ae-4af6-8a86-767e8ee9ff1b"
		},
		"6273665b-365b-41e3-8574-d6724c6f88e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 815,
			"y": -26.375,
			"width": 100,
			"height": 60,
			"object": "e0bddc44-f07f-4d9c-974d-e51ff168828e"
		},
		"9b1e5df0-c717-47ed-9441-9a5160f64c0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "865,3.625 968,3.625 968,-11.9375 1043.75,-11.9375",
			"sourceSymbol": "6273665b-365b-41e3-8574-d6724c6f88e5",
			"targetSymbol": "2ccc48df-3112-4866-997e-69fe230fe5f5",
			"object": "9258448c-0aca-4bd9-b247-a1757e4304b2"
		},
		"2ccc48df-3112-4866-997e-69fe230fe5f5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1022.75,
			"y": -32.9375,
			"object": "ddbd565b-0e0a-4e0b-89bf-a590777da73a"
		},
		"e95c3a23-20cf-4910-8ecf-072865e08d9e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1187.75,
			"y": -41.9375,
			"width": 100,
			"height": 60,
			"object": "ae43344f-fe27-4f3f-b960-d10bb2d54d00"
		},
		"7b0f1e30-1143-4426-9466-01ea4963b756": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1039,-11.9375 1039,143 1277.5,143",
			"sourceSymbol": "2ccc48df-3112-4866-997e-69fe230fe5f5",
			"targetSymbol": "0d3890fb-8bae-48f8-bb07-f51e572300b3",
			"object": "7c8dda78-36fd-46a1-9310-4d5da374f2ca"
		},
		"0d3890fb-8bae-48f8-bb07-f51e572300b3": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1227.5,
			"y": 92.0625,
			"width": 100,
			"height": 90,
			"object": "a2abd380-69fa-4421-82d8-a99a25bd77a9"
		},
		"eccdd744-a9a4-4cf7-a1d7-b80b4cf9d426": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1043.75,-8.4375 1126.25,-8.4375 1126.25,0.5625 1188.25,0.5625",
			"sourceSymbol": "2ccc48df-3112-4866-997e-69fe230fe5f5",
			"targetSymbol": "e95c3a23-20cf-4910-8ecf-072865e08d9e",
			"object": "60d978bd-30b8-4a72-90ce-8a68e6da5715"
		},
		"b048d17c-eeb0-4272-8f26-2048f7ba64ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1277.5,146 1394.5,146 1394.5,154.5 1465.5,154.5",
			"sourceSymbol": "0d3890fb-8bae-48f8-bb07-f51e572300b3",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5b7009c3-c104-4ead-98e9-c9cda352aab2"
		},
		"81e6827c-3631-4cef-bf24-055ab5d421b4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1420.75,
			"y": -41.9375,
			"width": 100,
			"height": 60,
			"object": "ef0c7e7c-314e-4d59-a0a0-be92e58c72e4"
		},
		"6a9c0986-6926-4349-a016-ef9c4cd5abcc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1237.75,-11.9375 1470.75,-11.9375",
			"sourceSymbol": "e95c3a23-20cf-4910-8ecf-072865e08d9e",
			"targetSymbol": "81e6827c-3631-4cef-bf24-055ab5d421b4",
			"object": "007b5187-3b83-464c-ad72-c227d3ed7fa6"
		},
		"e03ffa35-0e6b-4554-85cd-0963d71419d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1477.5,-11.9375 1477.5,142",
			"sourceSymbol": "81e6827c-3631-4cef-bf24-055ab5d421b4",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "fe440fc5-281b-41b1-8c37-8d02be264235"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 16,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 2,
			"scripttask": 3,
			"mailtask": 2,
			"exclusivegateway": 2
		},
		"8de01c58-50a0-46e9-a243-bb58178972c6": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "panagiotis.petsas@consolut.com",
			"subject": "Rejection",
			"text": "Sorry mate, you are rejected...",
			"id": "maildefinition1"
		}
	}
}