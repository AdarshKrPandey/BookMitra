package org.spring.bookMitra.validation;

import org.apache.commons.lang3.StringUtils;
import org.spring.bookMitra.model.CustomerModel;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class Validation implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
       return clazz.equals(CustomerModel.class);
    }

    @Override
    public void validate(Object target, Errors errors) {

        CustomerModel customer = (CustomerModel) target;

        if(StringUtils.isBlank(customer.getCustomerEmail()) || !customer.getCustomerEmail().contains("@") || customer.getCustomerEmail().length()<6){
            errors.rejectValue("customerEmail", "invalid.email");
        }

        if(StringUtils.isBlank(customer.getPassword()) || customer.getPassword().length()<4){
            errors.rejectValue("password", "error.password");
        }

    }
}
