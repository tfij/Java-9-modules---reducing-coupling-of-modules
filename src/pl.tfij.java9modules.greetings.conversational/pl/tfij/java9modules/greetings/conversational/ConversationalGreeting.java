package pl.tfij.java9modules.greetings.conversational;

import pl.tfij.java9modules.greetings.Greeting;

public class ConversationalGreeting implements Greeting {

    public String greet(String party) {
        return "Hi, " + party + "!";
    }

}
