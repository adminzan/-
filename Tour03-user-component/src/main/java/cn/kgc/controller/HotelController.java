package cn.kgc.controller;

import cn.kgc.entity.Hotel;
import cn.kgc.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HotelController {

    @Autowired
    HotelService hotelService;

    @RequestMapping("/getFourHotelList")
    public List<Hotel> getFourHotelList(){
        return hotelService.getFourHotelList();
    }
}
