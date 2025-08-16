package errors;

public class ValidationError {
    private String feild;
    private String message;

    public ValidationError(String field, String message) {
        this.feild = field;
        this.message = message;
    }

    public String getField() {
        return feild;
    }

    public String getMessage() {
        return message;
    }


}
