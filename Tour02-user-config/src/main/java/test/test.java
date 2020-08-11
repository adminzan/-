package test;

import cn.kgc.service.TourService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext cpx = new ClassPathXmlApplicationContext("spring-persist-mybatis.xml");
        TourService tourService = cpx.getBean(TourService.class);
        System.out.println(tourService.getEightTourList());


    }
}
