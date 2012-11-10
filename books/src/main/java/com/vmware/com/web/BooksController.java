package com.vmware.com.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import com.vmware.com.domain.Books;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "bookses", formBackingObject = Books.class)
@RequestMapping("/bookses")
@Controller
public class BooksController {
}
