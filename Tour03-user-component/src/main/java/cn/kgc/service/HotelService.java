package cn.kgc.service;

import cn.kgc.entity.Hotel;
import cn.kgc.mapper.HotelMapper;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelService {

    @Autowired
    HotelMapper hotelMapper;

    public List<Hotel> getFourHotelList(){
        return hotelMapper.selectAll(new RowBounds(0,4));
    }
}
