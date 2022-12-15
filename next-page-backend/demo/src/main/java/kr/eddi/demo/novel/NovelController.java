package kr.eddi.demo.novel;


import kr.eddi.demo.novel.entity.NovelInformation;
import kr.eddi.demo.novel.form.NovelInformationForm;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/novel")
@Slf4j
@CrossOrigin(origins = "http://localhost:8080", allowedHeaders = "*")
public class NovelController {


    @Autowired
    NovelServiceImpl novelService;

    @PostMapping(value = "/information-register",  consumes = { MediaType.MULTIPART_FORM_DATA_VALUE, MediaType.APPLICATION_JSON_VALUE })
    public Boolean informationRegister(@RequestPart(value = "fileList") List<MultipartFile> imgList,
                                       @RequestPart(value = "info") NovelInformationForm form) {

        log.info("information form: " + form);
        return novelService.informationRegister(imgList, form.toRequest());
    }

    @GetMapping("/information-list")
    public List<NovelInformation> informationList() {
        return null;
    }

}