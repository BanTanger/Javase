package com.bantanger.thread_.reflection.apitest;

import java.lang.reflect.Field;

/**
 * @author bantanger 半糖
 * @version 1.0
 */
public class TestAPI {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchFieldException {
        String classAllPath = "com.bantanger.thread_.reflection.apitest.ReflectionAPITest";
        // 获得Car类对应的Class对象
        Class<?> aClass = Class.forName(classAllPath);
        System.out.println(aClass);
        System.out.println(aClass.getClass());

        // 得到包名
        System.out.println(aClass.getPackage().getName());

        // 得到类名
        System.out.println(aClass.getName());

        // 通过aclass获得对象实例 , 如果是有参构造器会导致实例化异常
        ReflectionAPITest car = (ReflectionAPITest) aClass.newInstance();
        System.out.println(car); // car.toString

        // 通过反射获取属性
        Field brand = aClass.getField("brand");
        System.out.println(brand.get(car)); // 宝马

        // 通过反射给属性赋值
        brand.set(car,"奔驰"); // 参一对象，参二改值
        System.out.println(brand.get(car)); // 奔驰

        Field[] fields = aClass.getFields();
        for(Field f : fields){
            System.out.println(f.getName());
        }
    }
}
