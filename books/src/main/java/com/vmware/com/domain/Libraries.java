package com.vmware.com.domain;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;

@RooJavaBean
@RooToString
@RooEntity(finders = { "findLibrariesesByLibraryName", "findLibrariesesByNumberOfBooksGreaterThan" })
public class Libraries {

    private String libraryName;

    private String libraryAddress;

    private Integer numberOfBooks;
}
