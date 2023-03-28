# riverpod, go_router, auth

A Flutter project to test Riverpod, GoRouter and Auth (at most basic) 

## About

Simple flutter application to test auth, navigation and load data from API (https://jsonplaceholder.typicode.com/users) 

User login with any email and password (no actual auth, just mock auth with simple form validator).
Once logged in, API will call and store response to riverpod store. User can click any user in the list to navigate to User Detail Screen.

There a navigation logic to detect user token if exist.

Logout will invalidate all data in store.
