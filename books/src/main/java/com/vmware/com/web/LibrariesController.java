package com.vmware.com.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import com.vmware.com.domain.Libraries;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "librarieses", formBackingObject = Libraries.class)
@RequestMapping("/librarieses")
@Controller
public class LibrariesController {
}
