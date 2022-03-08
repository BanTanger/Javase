package com.bantanger.thread_.reflection.homework02;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author bantanger 半糖
 * @version 1.0
 */
public class Homework02 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        /**
         * 利用Class类的forName方法得到File类的class对象
         * 在控制台打印File类的所有构造器
         * 通过newInstance的方法创建File对象，并创建E:\mynew.txt文件
         *
         * 创建文件的方式是
         * File file = new File("d:\\aa.txt"); // 内存
         * file.createNewFile(); // 方法，真正创建文件
         */
        Class<?> fileCls = Class.forName("java.io.File");
        // 使用getDeclaredConstructors得到File的所有构造器
        Constructor<?>[] declaredConstructors = fileCls.getDeclaredConstructors();
        for (Constructor<?> declaredConstructor : declaredConstructors) {
            System.out.println(declaredConstructor);
        }

        // 选择使用的构造器，指定获得public java.io.File(java.lang.String)
        Constructor<?> constructor = fileCls.getConstructor(String.class);
        String fileAllPath  ="e:\\mynew.txt";
        Object file = constructor.newInstance(fileAllPath); // 创建File文件对象
        Method createNewFile = fileCls.getMethod("createNewFile");
        createNewFile.invoke(file);
        System.out.println("创建文件成功");
    }
}

