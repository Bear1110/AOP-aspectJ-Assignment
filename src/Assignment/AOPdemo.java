package Assignment;

public class AOPdemo {

    public static void main(String[] args) {
        
        Animal x = new Cat();
        Animal y = new Cat();
        Animal z = new Animal();
        System.out.println(x);
        System.out.println(y);
        x.sayHelloTo(y); // a cat says hello to an animal.
        x.sayHelloTo(z); // a cat says hello to an animal.
    }
}
class Animal {
    void sayHelloTo(Animal a) {
        System.out.println("an animal says hello to an animal.");
    }

    void sayHelloTo(Cat c) {
        System.out.println("an animal says hello to a cat.");
    }
}
class Cat extends Animal {
    void sayHelloTo(Animal a) {
        System.out.println("a cat says hello to an animal.");
    }

    void sayHelloTo(Cat c) {
        System.out.println("a cat says hello to a cat.");
    }
}