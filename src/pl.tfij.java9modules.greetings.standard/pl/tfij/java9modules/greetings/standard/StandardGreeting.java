package pl.tfij.java9modules.greetings.standard;

import pl.tfij.java9modules.greetings.Greeting;

public class StandardGreeting implements Greeting {

    public String greet(String party) {
        return "Hello, " + party + "!";
    }

}
