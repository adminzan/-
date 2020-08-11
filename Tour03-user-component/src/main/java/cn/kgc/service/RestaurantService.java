package cn.kgc.service;

import cn.kgc.entity.Restaurant;
import cn.kgc.entity.Tour;
import cn.kgc.mapper.RestaurantMapper;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantService {

    @Autowired
    RestaurantMapper restaurantMapper;

    /*杨顾宇*/
    public List<Restaurant> getFourRestaurantList(){
        return restaurantMapper.selectAll(new RowBounds(0,4));
    }



    /*许啸*/
    public List<Restaurant> getListName(String name) {
        return restaurantMapper.getListName(name);
    }

    public List<Restaurant> selectRestaurantAll() {
        return restaurantMapper.getRestaurant(new RowBounds(0,9));
    }



}
