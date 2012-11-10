package com.vmware.com.domain;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.entity.RooEntity;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooEntity(finders = { "findBooksesByBookAvailableInStock", "findBooksesByBookTitle", "findBooksesByBookAuthor" })
public class Books {

    private Integer bookISBN;

    private String bookTitle;

    private String bookAuthor;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date bookPublishDate;

    private Boolean bookAvailableInStock;
}
