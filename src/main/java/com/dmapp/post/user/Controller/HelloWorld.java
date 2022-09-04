package com.dmapp.post.user.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloWorld {

    @GetMapping("/world")
    public String Hello(){
        return "pages/world";
    }
}
