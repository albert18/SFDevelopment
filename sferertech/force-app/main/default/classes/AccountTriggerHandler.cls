public class AccountTriggerHandler {
    public static void handleBeforeInsert(List<Account> accList) {
        for (Account a : accList) {
        a.description = 'New Description from Trigger 1';
        	system.debug('Debug: New Description from Trigger 1');
    	}
    }
    
    public static void handleAfterInsert(List<Account> accList) {
        List<Task> myTask = new List<Task>();
        for (Account a : accList) {
        Task aTask = new Task();
            aTask.ownerId = a.OwnerId;
            aTask.Subject = 'New Account Auto Task';
            aTask.Priority = 'Normal';
            aTask.WhatId = a.id;
            myTask.add(aTask);
        }
        Insert myTask;
    }
}