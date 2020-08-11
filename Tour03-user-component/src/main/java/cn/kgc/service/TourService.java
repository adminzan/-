package cn.kgc.service;

import cn.kgc.entity.Tour;
import cn.kgc.mapper.TourMapper;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourService {

    @Autowired
    TourMapper tourMapper;

    /*****杨顾宇*****/
    //查询8个Tour，返回List
    public List<Tour> getEightTourList(){
        return tourMapper.selectAll(new RowBounds(0,8));
    }


}
