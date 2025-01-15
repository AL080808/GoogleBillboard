public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

public void setup() {
    int startIndex = 2; // Start after "2."
    boolean found = false;

    while (!found) {
        // Extract 10 digits starting from the current index
        String digits = e.substring(startIndex, startIndex + 10);
        
        // Convert to a double
        double dNum = Double.parseDouble(digits);
        
        // Check if the number is prime
        if (isPrime(dNum)) {
            System.out.println("First 10-digit prime in e: " + digits);
            found = true;
        } else {
            startIndex++; // Move to the next starting index
        }
    }
}

public boolean isPrime(double dNum) {
    // Check if the number is a whole number
    if (dNum % 1 != 0) return false;
    
    long num = (long) dNum;

    if (num < 2) return false;

    for (long i = 2; i <= Math.sqrt(num); i++) {
        if (num % i == 0) {
            return false; // Not a prime number
        }
    }
    return true; // Prime number
}
