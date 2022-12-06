package com.techelevator.model;

import java.util.Objects;

public class KeyWord {

    private String keyWord;

    public KeyWord() {

    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        KeyWord keyWord1 = (KeyWord) o;
        return Objects.equals(keyWord, keyWord1.keyWord);
    }

    @Override
    public int hashCode() {
        return Objects.hash(keyWord);
    }
}
