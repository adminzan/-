package cn.kgc.service;

import cn.kgc.entity.User;
import cn.kgc.mapper.UserMapper;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;

    public User signIn(User user){
        user.setPassword(DigestUtils.md5Hex(user.getPassword()));
        return userMapper.signIn(user);
    }


}
