package util;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import static java.util.Objects.isNull;
import java.util.logging.Logger;


public class Datas {

    public static SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
    public static SimpleDateFormat formatoHora = new SimpleDateFormat("HH:mm");
    

    public static Date stringToData(String data) {
        Date date = null;
        try {
            date = formatoData.parse(data);
        } catch (Exception e) {
            System.out.println(e);
        }
        return date;
    }

    public static String dateToString(Date date) {
        if (isNull(date)) {
            return "Data nula";
        }
        return formatoData.format(date);
    }

    public static String safeDateToString(Date date) {
        if (isNull(date)) {
            return "Data nula";
        }
        return date.getDay() + "/" + date.getMonth() + "/" + date.getYear();
    }

}
