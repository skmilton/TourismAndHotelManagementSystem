/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.common;

import java.util.List;
import javax.servlet.http.HttpServletRequest;


/**
 *
 * @author Dhaka
 */
public interface ICommonDAO<T> {

    public T save(T t);

    public T update(T t);

    public List<T> getAll();

    public T getById(int id);

    public T delete(int id);

}
