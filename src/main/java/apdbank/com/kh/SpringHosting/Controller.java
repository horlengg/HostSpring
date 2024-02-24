package apdbank.com.kh.SpringHosting;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {

    @GetMapping
    public ResponseEntity<Map<String,Object>> renderApp(){
        Map<String,Object> map = new HashMap<>();
        map.put("message", "message from spring boot");
        return ResponseEntity.ok(map);
    }
    
}
