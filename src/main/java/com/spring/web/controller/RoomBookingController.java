/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.IRoomBookingController;
import com.spring.web.dao.impl.IRoomBookingDAO;
import com.spring.web.model.RoomBooking;
import com.spring.web.service.impl.IRoomBookingService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@Controller
@RequestMapping(value = "/roomBooking")
public class RoomBookingController implements IRoomBookingController {

    @Autowired
    IRoomBookingDAO roomBookingDAO;

    @Autowired
    IRoomBookingService roomBookingService;

    @Autowired
    ServletContext servletContext;

    @RequestMapping(value = "/create")
    public ModelAndView create() {

        List<RoomBooking> roomBook = roomBookingService.getAll();

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("roomBook", roomBook);
        return new ModelAndView("/roomBooking/create", "map", map);

    }

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/roomBooking/edit");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        RoomBooking t = roomBookingService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/roomBooking/view", "map", map);

    }

    @RequestMapping(value = "/invoice/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        RoomBooking t = roomBookingService.getById(id);
        map.addAttribute("t", t);
        return "roomBooking/booking_invoice";

    }

    @RequestMapping(value = "/editRoom/{id}", method = RequestMethod.GET)
    public String editRoom(ModelMap map, @PathVariable("id") int id) {
        RoomBooking t = roomBookingService.getById(id);
        map.addAttribute("t", t);
        return "roomBooking/editRoom";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        RoomBooking t = roomBookingService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/roomBooking/view", "map", map);
    }

    @Override
    public List<RoomBooking> getAll() {

        return roomBookingService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        RoomBooking roomBooking = roomBookingService.delete(id);
        return new ModelAndView("redirect:/roomBooking/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<RoomBooking> tList = roomBookingService.getAll();
        map.put("tList", tList);
        return new ModelAndView("roomBooking/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public ModelAndView rStore(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws IOException, ServletException {

        String roomCode = request.getParameter("roomCode");
        String roomStatus = request.getParameter("roomStatus");
        String roomInfo = request.getParameter("roomInfo");
        String checkIn = request.getParameter("checkIn");
        String checkOut = request.getParameter("checkOut");
        String days = request.getParameter("days");
        String invoiceDate = request.getParameter("invoiceDate");

        Double roomPrice = Double.parseDouble(request.getParameter("roomPrice"));

        Double total = roomPrice;

        Double discount = Double.parseDouble(request.getParameter("discount"));

        Double tDiscount = ((total * discount) / 100);//discount Amount
        System.out.println(tDiscount);
        Double netTotal = total - tDiscount;//without discount Amount
        System.out.println(netTotal);
        Double vat = Double.parseDouble(request.getParameter("vat"));
        Double tVat = ((netTotal * vat) / 100);//vat Amount
        System.out.println(tVat);
        Double grandTotal = (netTotal + tVat);
        System.out.println(grandTotal);

        if (!file.isEmpty()) {
            String image = file.getOriginalFilename();
            saveFile(file, image, "/resources/roomBooking/img");
            RoomBooking rb = new RoomBooking();
            rb.setRoomCode(roomCode);
            rb.setRoomStatus(roomStatus);
            rb.setRoomInfo(roomInfo);
            rb.setCheckIn(checkIn);
            rb.setCheckOut(checkOut);
            rb.setDays(days);
            rb.setInvoiceDate(invoiceDate);
            rb.setRoomPrice(roomPrice);
            rb.setDiscount(discount);
            rb.settDiscount(tDiscount);
            rb.setTotal(total);
            rb.setNetTotal(netTotal);
            rb.setVat(vat);
            rb.settVat(tVat);
            rb.setGrandTotal(grandTotal);
            rb.setImage(image);
            roomBookingDAO.save(rb);

        }

        return new ModelAndView("redirect:/roomBooking/view");

    }

    private void saveFile(MultipartFile file, String fileName, String path) throws IOException {
        System.out.println("Start");

        byte[] bytes = file.getBytes();

        String filePath = servletContext.getRealPath(path);
        File directory = new File(filePath);
        File cFile = new File(
                "C:\\Users\\Dhaka\\Desktop\\tms\\src\\main\\webapp\\resources\\roomBooking\\img"
                // "C:\\Users\\B-7\\Desktop\\tms\\src\\main\\webapp\\resources\\roomBooking\\img"
                + File.separator + fileName);

        BufferedOutputStream stream = new BufferedOutputStream(
                new FileOutputStream(cFile));
        stream.write(bytes);
        stream.close();
        System.out.println(cFile);
    }

    @RequestMapping(value = "/availableReport", method = RequestMethod.GET)
    public ModelAndView getByAvailable() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<RoomBooking> aList = roomBookingDAO.getByAvailable();
        map.put("aList", aList);
        return new ModelAndView("roomBooking/availableReport", "map", map);

    }

    @RequestMapping(value = "/bookedReport", method = RequestMethod.GET)
    public ModelAndView getByBooked() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<RoomBooking> bList = roomBookingDAO.getByBooked();
        map.put("bList", bList);
        return new ModelAndView("roomBooking/bookedReport", "map", map);
    }

    @RequestMapping(value = "/report", method = RequestMethod.GET)
    public ModelAndView report(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<RoomBooking> cList = roomBookingService.getAll();
        double totalSales = roomBookingService.getTotalSales();
        map.put("totalSales", totalSales);
        map.put("cList", cList);
        return new ModelAndView("roomBooking/report", "map", map);
    }

    @RequestMapping(value = "/vatReport", method = RequestMethod.GET)
    public ModelAndView vatReport(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<RoomBooking> vList = roomBookingService.getAll();
        double totalVat = roomBookingService.getTotalVat();
        map.put("totalVat", totalVat);
        map.put("vList", vList);
        return new ModelAndView("roomBooking/vatReport", "map", map);
    }

}
