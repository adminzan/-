package cn.kgc.controller;

import cn.kgc.entity.Tour;
import cn.kgc.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TourController {

    @Autowired
    TourService tourService;

    @RequestMapping("/getEightTourList")
    public List<Tour> getEightTourList(){
        return tourService.getEightTourList();
    }



}
