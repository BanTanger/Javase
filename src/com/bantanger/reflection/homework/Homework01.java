package com.bantanger.thread_.reflection.homework;

import org.junit.jupiter.api.Test;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author bantanger 半糖
 * @version 1.0
 */
public class Homework01 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
        String classAllPath = "com.bantanger.thread_.reflection.homework.PrivateTest";
        Class<?> aClass = Class.forName(classAllPath);
        PrivateTest o =(PrivateTest) aClass.newInstance();
        Field name = aClass.getField("name");
        System.out.println(name.get(o));

        name.set(o,"你好");
        System.out.println(name.get(o));

        System.out.println("===========================");
        Method getName = aClass.getMethod("getName");
        getName.invoke(o);
    }

    @Test
    public void Test() throws InstantiationException, IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
        // 得到类对应的Class对象
        Class<PrivateTest> privateTestClass = PrivateTest.class;
        // 创建对象实例
        PrivateTest privateTest = privateTestClass.newInstance();
        // 得到name属性对象
        Field name = privateTestClass.getDeclaredField("name");

        // 因为name是私有属性，所以需要爆破
        name.setAccessible(true);
        name.set(privateTest,"你好");
        // 获得方法对象
        Method getName = privateTestClass.getMethod("getName");
        // 方法对象使用invoke调用方法，有返回值，所以用Object来接收
        Object invoke = getName.invoke(privateTest);

        // 两种调用方法
        System.out.println(invoke);
        System.out.println(name.get(privateTest));
    }
}
