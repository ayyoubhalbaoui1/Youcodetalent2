package com.youcode.app;

import java.sql.SQLException;
import java.util.Scanner;
import com.youcode.controller.AdministratorController;
import com.youcode.controller.ParticipationController;
import com.youcode.controller.UserController;




public class Main {
	
	//Create the menu
	
	public static int menu () {

        int selection;
        @SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);

        /***************************************************/

        System.out.println("+-------------------------+ :");
        System.out.println("| You Welcome in Our Application|");
        System.out.println("+-------------------------+ :");
        System.out.println("1 - list User ");
        System.out.println("2 - ADD User ");
        System.out.println("3 - UPDATE User ");
        System.out.println("4 - DELETE User");
        System.out.println("5 - Participate");
        System.out.println("6 - Find User ById");
        System.out.println("7 - Find AllUsers (Bonus)");
        System.out.println("8 - Quit");

        selection = input.nextInt();
        return selection;    
    }
	

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		UserController userController = new UserController();
		ParticipationController participationController = new ParticipationController();
		
		// TODO Auto-generated method stub
		
		Boolean out = true;
		
		while(out) {
			switch (menu()) {
			case 1 : 

				try {
					
					userController.display();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e);
				}
				
				break;
				
			case 2 : 
				
	            try {
					
					userController.add();
				
					participationController.addParticipation();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e);
				}
				
				break;
				
	        case 3 : 
				
	            try {
					
					userController.update();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e);
				}
				
				break;
				
            case 4 : 
				
            												/*Bonus*/
            	
	            try {
					
					userController.delete();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e);
				}
				
				break;
 case 5:
            	
            	try {
            		
					participationController.addParticipation();

            	} catch (Exception e) {
					// TODO: handle exception
					System.out.println(e);
				}
				
            
            	break;
            	
            case 6: 
            	
            	
            					/*Find User By Id*/
            	
            	try {
            		
            		System.out.println(userController.finUserById().toString());
            		
            	
            	} catch (Exception e) {
					// TODO: handle exception
            		
					System.out.println(e);

				}
            	
            	
            	break;
            	
            case 7:
            	
            					/*Bonus Find All Users */
            	
            	try {
            		
         	   AdministratorController.findAllUsers().toString();
            		
            	
            	} catch (Exception e) {
					// TODO: handle exception
					System.out.println(e);
				}
            	break; 
            	
            case 8: 
            	System.exit(0);
            	
            default:
				System.out.println("Oups une erreur est trouvé");
				break;
			}
		}
		
	}

}
