package cn.kgc.entity;

public class HotelOrder {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.id
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.hid
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private Integer hid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.uid
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private Integer uid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.adult
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private Integer adult;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.child
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private Integer child;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.starDate
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private String stardate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hotelorder.endDate
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    private String enddate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.id
     *
     * @return the value of hotelorder.id
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.id
     *
     * @param id the value for hotelorder.id
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.hid
     *
     * @return the value of hotelorder.hid
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public Integer getHid() {
        return hid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.hid
     *
     * @param hid the value for hotelorder.hid
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setHid(Integer hid) {
        this.hid = hid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.uid
     *
     * @return the value of hotelorder.uid
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.uid
     *
     * @param uid the value for hotelorder.uid
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.adult
     *
     * @return the value of hotelorder.adult
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public Integer getAdult() {
        return adult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.adult
     *
     * @param adult the value for hotelorder.adult
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setAdult(Integer adult) {
        this.adult = adult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.child
     *
     * @return the value of hotelorder.child
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public Integer getChild() {
        return child;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.child
     *
     * @param child the value for hotelorder.child
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setChild(Integer child) {
        this.child = child;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.starDate
     *
     * @return the value of hotelorder.starDate
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public String getStardate() {
        return stardate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.starDate
     *
     * @param stardate the value for hotelorder.starDate
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setStardate(String stardate) {
        this.stardate = stardate == null ? null : stardate.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hotelorder.endDate
     *
     * @return the value of hotelorder.endDate
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public String getEnddate() {
        return enddate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hotelorder.endDate
     *
     * @param enddate the value for hotelorder.endDate
     *
     * @mbg.generated Fri Aug 07 22:45:15 CST 2020
     */
    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }
}