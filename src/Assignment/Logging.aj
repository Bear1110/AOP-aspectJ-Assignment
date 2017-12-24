package Assignment;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

public aspect Logging {
    /*pointcut sayHello(Cat c): call(void Animal.sayHelloTo(Animal)) && target(c);

    before(Cat c): sayHello(c) {
        System.out.print(c + " says hello: ");
        c.sayHelloTo(new Cat());
    }*/
    PrintStream oldOutput;
    pointcut sayHelloTest(Cat c,Animal d): call(void Animal.sayHelloTo(Animal)) && args(c) && target(d);

    before(Cat c,Animal d): sayHelloTest(c,d) {
        d.sayHelloTo(c);
        
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        PrintStream out = new PrintStream(outputStream);
        oldOutput = System.out;
        System.setOut(out);
    }
    after(Cat c,Animal d): sayHelloTest(c,d) {
        System.setOut(oldOutput);
    }
}
