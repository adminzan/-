package cn.kgc.mapper;

import cn.kgc.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    User signIn(User user);


}