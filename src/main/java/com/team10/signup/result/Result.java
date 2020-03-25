package com.team10.signup.result;

public class Result {
    private boolean valid;

    private Result(boolean valid) {
        this.valid = valid;
    }

    public static Result ok() {
        return new Result(true);
    }

    public static Result fail() {
        return new Result(false);
    }

    public boolean isValid() {
        return valid;
    }
}
