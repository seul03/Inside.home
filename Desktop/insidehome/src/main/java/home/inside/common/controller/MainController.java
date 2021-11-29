package home.inside.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
   @RequestMapping("mgr/error.do")
   public String mgrErrView() throws Exception{
      return "error/managerException";
   }
   
   @RequestMapping("manager/inside/main.do")
   public String mgrMainView() throws Exception{
      return "manager/main/main";
   }
   
   @RequestMapping("inside/main.do")
   public String userView() throws Exception{
      return "user/main/main";
   }
}