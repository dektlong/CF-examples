// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.vmware.com.domain;

import java.lang.String;

privileged aspect Libraries_Roo_ToString {
    
    public String Libraries.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("LibraryName: ").append(getLibraryName()).append(", ");
        sb.append("LibraryAddress: ").append(getLibraryAddress()).append(", ");
        sb.append("NumberOfBooks: ").append(getNumberOfBooks());
        return sb.toString();
    }
    
}
