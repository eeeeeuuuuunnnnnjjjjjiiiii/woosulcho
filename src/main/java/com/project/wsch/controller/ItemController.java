package com.project.wsch.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.wsch.service.ItemService;
import com.project.wsch.vo.ItemVO;

@Controller
@RequestMapping("/items")
public class ItemController {

    @Autowired
    private ItemService itemService;

    @GetMapping("/list")
    public String itemList(Model model) {
        List<ItemVO> items = itemService.getAllItems();
        model.addAttribute("items", items);
        return "/items/itemList";
    }

    @GetMapping("/detail/{itemId}")
    public String itemDetail(@PathVariable int itemId, Model model) {
        ItemVO item = itemService.getItemById(itemId);
        model.addAttribute("item", item);
        return "/items/detail";
    }
}
