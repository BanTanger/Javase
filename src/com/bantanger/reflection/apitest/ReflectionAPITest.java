package com.bantanger.thread_.reflection.apitest;

/**
 * @author bantanger 半糖
 * @version 1.0
 */
public class ReflectionAPITest {
    public String brand = "宝马";
    public int price = 500000000;
    public String color = "白色";

    @Override
    public String toString() {
        return "ReflectionAPITest{" +
                "brand='" + brand + '\'' +
                ", price=" + price +
                ", color='" + color + '\'' +
                '}';
    }
}
