package java_vjezbanje;

import javax.swing.JOptionPane;

public class CiklicnaMatrica {
	
	public static void main(String[] args) {
		
		
		boolean dev = false;
		
		int red = dev ? 20 : Integer.parseInt(JOptionPane.showInputDialog("Unesi broj redova"));
		int stup = dev ? 20 : Integer.parseInt(JOptionPane.showInputDialog("Unesi broj stupaca"));
		
		int[][] matrica = new int[red][stup];
		
		//Broj u polju matrice
		int x = 1;
		
		//Varijable za for petlje od drugog kruga
		int a = 0;
		int b = 1;
		int c = 2;
		int d = 3;
		

		//Prvi krug
		for (int i=1;i<=stup;i++) {
			matrica[red-1][stup-i] = x++;
		}

		for (int i=2;i<=red;i++) {
			matrica[red-i][0] = x++;
		}

		for (int i=1;i<stup;i++) {
			if(red<=1) {
				break;
			}
			matrica[0][i] = x++;
		}

		for(int i=1;i<red-1;i++) {
			matrica[i][stup-1] = x++;
		}
		
		
		//Ostali krugovi
		int y=1;
		for (y=1;y<red && y<stup; y++) {
			if(red*stup==x+1) {
				break;
			}
				y++;
			
	
			for(int i=c;i<stup-a;i++) {
				if(red==2 || stup==2 || red*stup==x-1) {
					break;
				}
				matrica[red-c][stup-i] = x++;
			}
	
			for(int i=d;i<red-a;i++) {
				if(red==2 || stup==2 || red*stup==x-1) {
					break;
				}
				matrica[red-i][b] = x++;
			}
	
			for(int i=c;i<stup-b;i++) {
				if(red==2 || stup==2 || red*stup==x-1) {
					break;
				}	
				matrica[b][i] = x++;
			}
	
			for (int i=c;i<red-c;i++) {
				if(red==2 || stup==2 || red*stup==x-1) {
					break;
				}
				matrica[i][stup-c] = x++;
			}
			a++;
			b++;
			c++;
			d++;
		}
		
		
		//Ispis matrice
		System.out.println("Matrica: " + red + " X " + stup);
		for(int i=0;i<red;i++) {
			for (int j=0;j<stup;j++) {
				System.out.print(matrica[i][j] + "\t");
			}System.out.println();
		}
		
	}

}
