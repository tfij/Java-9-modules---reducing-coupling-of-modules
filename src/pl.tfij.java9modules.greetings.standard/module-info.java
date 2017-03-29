module pl.tfij.java9modules.greetings.standard {
    requires pl.tfij.java9modules.greetings.api;
    provides pl.tfij.java9modules.greetings.Greeting
            with pl.tfij.java9modules.greetings.standard.StandardGreeting;
}
