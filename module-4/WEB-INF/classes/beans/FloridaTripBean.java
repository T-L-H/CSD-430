package beans;

import java.io.Serializable;

public class FloridaTripBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private String place;
    private String coolMoment;
    private String rating;
    private String tripTitle;
    private String overallDescription;
    private String recordDescription;

    public FloridaTripBean() {
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getCoolMoment() {
        return coolMoment;
    }

    public void setCoolMoment(String coolMoment) {
        this.coolMoment = coolMoment;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getTripTitle() {
        return tripTitle;
    }

    public void setTripTitle(String tripTitle) {
        this.tripTitle = tripTitle;
    }

    public String getOverallDescription() {
        return overallDescription;
    }

    public void setOverallDescription(String overallDescription) {
        this.overallDescription = overallDescription;
    }

    public String getRecordDescription() {
        return recordDescription;
    }

    public void setRecordDescription(String recordDescription) {
        this.recordDescription = recordDescription;
    }
}
