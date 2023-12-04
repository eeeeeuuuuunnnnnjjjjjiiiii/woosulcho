package com.project.wsch.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.project.wsch.vo.ItemVO;

@Service
public class ItemServiceImpl implements ItemService {

    private final Map<Integer, ItemVO> itemDatabase = new HashMap<Integer, ItemVO>();

    public ItemServiceImpl() {
        // 아이템 데이터베이스 초기화 (더미 데이터 사용)
        itemDatabase.put(1, new ItemVO(1, "이름1", "카테1", 6.0, "달콤한", 4, 2, "쌀", "http://store.com/makgeolli", 15000, "전통적인 한국 막걸리입니다.", "막걸리 설명2", "막걸리 설명3"));
        itemDatabase.put(2, new ItemVO(2, "이름2", "카테2", 8.0, "쌉쌀한", 3, 3, "쌀, 밀", "http://store.com/dongdongju", 25000, "향긋한 동동주입니다.", "동동주 설명2", "동동주 설명3"));
        itemDatabase.put(3, new ItemVO(3, "생강주", "전통주", 12.0, "강렬한", 5, 4, "쌀, 생강", "http://store.com/saenggangju", 30000, "새콤달콤한 생강주입니다.", "생강주 설명2", "생강주 설명3"));
        itemDatabase.put(4, new ItemVO(1, "막걸리", "전통주", 6.0, "달콤한", 4, 2, "쌀", "http://store.com/makgeolli", 15000, "전통적인 한국 막걸리입니다.", "막걸리 설명2", "막걸리 설명3"));
        itemDatabase.put(5, new ItemVO(2, "동동주", "전통주", 8.0, "쌉쌀한", 3, 3, "쌀, 밀", "http://store.com/dongdongju", 25000, "향긋한 동동주입니다.", "동동주 설명2", "동동주 설명3"));
        itemDatabase.put(6, new ItemVO(3, "생강주", "전통주", 12.0, "강렬한", 5, 4, "쌀, 생강", "http://store.com/saenggangju", 30000, "새콤달콤한 생강주입니다.", "생강주 설명2", "생강주 설명3"));
        itemDatabase.put(7, new ItemVO(1, "막걸리", "전통주", 6.0, "달콤한", 4, 2, "쌀", "http://store.com/makgeolli", 15000, "전통적인 한국 막걸리입니다.", "막걸리 설명2", "막걸리 설명3"));
        itemDatabase.put(8, new ItemVO(2, "동동주", "전통주", 8.0, "쌉쌀한", 3, 3, "쌀, 밀", "http://store.com/dongdongju", 25000, "향긋한 동동주입니다.", "동동주 설명2", "동동주 설명3"));
        itemDatabase.put(9, new ItemVO(3, "생강주", "전통주", 12.0, "강렬한", 5, 4, "쌀, 생강", "http://store.com/saenggangju", 30000, "새콤달콤한 생강주입니다.", "생강주 설명2", "생강주 설명3"));
        itemDatabase.put(10, new ItemVO(1, "막걸리", "전통주", 6.0, "달콤한", 4, 2, "쌀", "http://store.com/makgeolli", 15000, "전통적인 한국 막걸리입니다.", "막걸리 설명2", "막걸리 설명3"));
        itemDatabase.put(11, new ItemVO(2, "동동주", "전통주", 8.0, "쌉쌀한", 3, 3, "쌀, 밀", "http://store.com/dongdongju", 25000, "향긋한 동동주입니다.", "동동주 설명2", "동동주 설명3"));
        itemDatabase.put(12, new ItemVO(3, "생강주", "전통주", 12.0, "강렬한", 5, 4, "쌀, 생강", "http://store.com/saenggangju", 30000, "새콤달콤한 생강주입니다.", "생강주 설명2", "생강주 설명3"));
        itemDatabase.put(13, new ItemVO(1, "막걸리", "전통주", 6.0, "달콤한", 4, 2, "쌀", "http://store.com/makgeolli", 15000, "전통적인 한국 막걸리입니다.", "막걸리 설명2", "막걸리 설명3"));
        itemDatabase.put(14, new ItemVO(2, "동동주", "전통주", 8.0, "쌉쌀한", 3, 3, "쌀, 밀", "http://store.com/dongdongju", 25000, "향긋한 동동주입니다.", "동동주 설명2", "동동주 설명3"));
        itemDatabase.put(15, new ItemVO(3, "생강주", "전통주", 12.0, "강렬한", 5, 4, "쌀, 생강", "http://store.com/saenggangju", 30000, "새콤달콤한 생강주입니다.", "생강주 설명2", "생강주 설명3"));
        itemDatabase.put(16, new ItemVO(1, "막걸리", "전통주", 6.0, "달콤한", 4, 2, "쌀", "http://store.com/makgeolli", 15000, "전통적인 한국 막걸리입니다.", "막걸리 설명2", "막걸리 설명3"));
        itemDatabase.put(17, new ItemVO(2, "동동주", "전통주", 8.0, "쌉쌀한", 3, 3, "쌀, 밀", "http://store.com/dongdongju", 25000, "향긋한 동동주입니다.", "동동주 설명2", "동동주 설명3"));
       
    
    }

    @Override
    public List<ItemVO> getAllItems() {
        // 데이터베이스에 있는 모든 아이템을 리스트로 반환
        return new ArrayList<ItemVO>(itemDatabase.values());
    }

    @Override
    public ItemVO getItemById(int itemId) {
        // 주어진 itemId에 해당하는 아이템 반환
        return itemDatabase.get(itemId);
    }
}