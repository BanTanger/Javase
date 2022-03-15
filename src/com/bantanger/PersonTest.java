package com.bantanger.thread_;

/**
 * @author bantanger 半糖
 * @version 1.0
 */
public class PersonTest {
    String name = "小芳";

    public PersonTest(String name) {
        name = "小兰";
    }

    public void show() {
        this.name = "小翠";
    }

    public static void main(String[] args) {
        PersonTest p = new PersonTest("小凤");
        System.out.print(p.name);
        p.show();
        System.out.print(p.name);
    }
}
