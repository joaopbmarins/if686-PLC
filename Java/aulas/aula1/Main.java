public class Main
{
	public static void main(String[] args) {

		String s1 = "ricardo";
		String s2 = "ricardo";
		
		char letra = s1.charAt(0);


		if (s1 == s2){//s1.equals(s2)) {
			System.out.println("igual");
		} else {
			System.out.println("diferente");
		}
		
		if (s1.equalsIgnoreCase(s2)) {
			System.out.println("igual");
		} else {
			System.out.println("diferente");
		}
	
		Conta c = new Conta("1200", 30);
		c.creditar(10);

		System.out.println(c.getSaldo());
	    
	}
}

//sudo apt install openjdk-17-jdk-headless
