---
categories:
- angular
date: 2016-01-25T00:00:00Z
published: true
title: Angular - Communicating Between Parent And Child Scopes
url: /2016/01/25/angular-communication-between-parent-and-child-scopes/
---

Here is a quick tip in Angular on how to communicate between parent and child scopes.  

If you have a need to send notification of an event from a parent scope to a child scope, you use $scope.$broadcast to send the event.  

	$scope.$broadcast("parent event name", dataTo Send);

If you then need to send notification of an event from the child scope back to the parent scope you use $scope.$emit

	$scope.$emit("child event name", dataTo Send);
	
To listen to the events regardless of if it sent from the parent or child scope, you use $scope.$on.

	$scope.$on("parent event name", function(){
	});
	
	$scope.$on("child event name", function(){
	});