# LibraryManagement

This project aims to implement a basic library management system where a user can login as either a normal user or an admin level user.

The user can login and order books from the library's inventory. Users should be registered before they login to the library system. User needs to enter a username and password to register first and then use this combination to login from then on.User can choose the book that he wishes to choose from the catalogue displayed. He is required to enter the book ID(which is displayed beside the book name in catalog) to place the order.

The admin has rights to update the inventory or delete the books that will be discontinued by the library.To perform this action, even the admin has to login with admin username and password. Admin also has rights to update user's details or delete his information.

This project is a Java J2EE application that uses JSP for View pages. MySQL is the database used here. and JDBC for database connectivity.

Tables: Users(User_Id,Username,Password) admin(Admin_Id,username,password) books(book_id,bookname,author)
