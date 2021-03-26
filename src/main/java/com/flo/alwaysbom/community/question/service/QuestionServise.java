package com.flo.alwaysbom.community.question.service;

import com.flo.alwaysbom.community.question.dao.QuestionDao;
import com.flo.alwaysbom.community.question.vo.QuestionVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class QuestionServise {
    private final QuestionDao dao;

    public void addQuestion(QuestionVo vo) {
        dao.addQuestion(vo);
    }
}
