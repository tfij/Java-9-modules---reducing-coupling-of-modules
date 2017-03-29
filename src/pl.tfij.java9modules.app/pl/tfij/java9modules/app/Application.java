package pl.tfij.java9modules.app;

import pl.tfij.java9modules.greetings.Greeting;

import java.util.ServiceLoader;

public class Application {

    public static void main(String[] args) {
        ServiceLoader<Greeting> services = ServiceLoader.load(Greeting.class);
        Greeting greeting = services
                .findFirst()
                .orElseThrow(() -> new RuntimeException(Greeting.class.getSimpleName() + " implementation not provided"));
        System.out.println(greeting.greet("World"));
    }

}
