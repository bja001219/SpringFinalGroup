package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
    @Autowired
    private UserDAO userDAO;

    public UserVO getUser(UserVO vo) {
        return userDAO.getUser(vo);
    }
}
