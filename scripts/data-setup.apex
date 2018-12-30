Resume__c sampleResume = new Resume__c(
	Resume_Title__c = 'Sample Resume'
);
insert sampleResume;

Resume_Entry__c[] sampleResumeEntries = new Resume_Entry__c[]{
	new Resume_Entry__c(
		Company__c = 'Dunder Mifflin',
		Position__c = 'Data Entry Assistant',
		Start_Date__c = Date.today().addYears(-5),
		End_Date__c = Date.today().addYears(-4),
		Description__c = '* Filed papers\n* Typed fast\n* Made coffee',
		Resume__c = sampleResume.Id
	),
	new Resume_Entry__c(
		Company__c = 'Universal Containers',
		Position__c = 'Salesforce Admin',
		Start_Date__c = Date.today().addYears(-4),
		End_Date__c = Date.today().addYears(-2),
		Description__c = '* Maintained users\n* Created reports\n* Created objects/fields',
		Resume__c = sampleResume.Id
	),
	new Resume_Entry__c(
		Company__c = 'United Oil and Gas',
		Position__c = 'Salesforce Developer',
		Start_Date__c = Date.today().addYears(-2),
		Description__c = '* Wrote Apex/VisualForce\n* Used version control',
		Resume__c = sampleResume.Id
	)
};
insert sampleResumeEntries;
