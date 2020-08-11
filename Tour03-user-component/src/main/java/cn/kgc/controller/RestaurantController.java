package cn.kgc.controller;

import cn.kgc.entity.Restaurant;
import cn.kgc.service.RestaurantService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RestaurantController {

    @Autowired
    RestaurantService restaurantService;

    /*杨顾宇*/
    @RequestMapping("/getFourRestaurantList")
    public List<Restaurant> getFourRestaurantList(){
        return restaurantService.getFourRestaurantList();
    }


    /*许啸*/
    @RequestMapping(value = "/selectListName")
    public List<Restaurant> getListName(@RequestParam("name") String name){
        return restaurantService.getListName("%"+name+"%");
    }
    @RequestMapping(value = "/selectList")
    public List<Restaurant> getRestaurantList(){
        return restaurantService.selectRestaurantAll();
    }

}
