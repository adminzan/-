package cn.kgc.entity;

public class TourOrder {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.id
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.tid
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private Integer tid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.uid
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private Integer uid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.adult
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private Integer adult;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.child
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private Integer child;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.starDate
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private String stardate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tourorder.endDate
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    private String enddate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.id
     *
     * @return the value of tourorder.id
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.id
     *
     * @param id the value for tourorder.id
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.tid
     *
     * @return the value of tourorder.tid
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public Integer getTid() {
        return tid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.tid
     *
     * @param tid the value for tourorder.tid
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setTid(Integer tid) {
        this.tid = tid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.uid
     *
     * @return the value of tourorder.uid
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.uid
     *
     * @param uid the value for tourorder.uid
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.adult
     *
     * @return the value of tourorder.adult
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public Integer getAdult() {
        return adult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.adult
     *
     * @param adult the value for tourorder.adult
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setAdult(Integer adult) {
        this.adult = adult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.child
     *
     * @return the value of tourorder.child
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public Integer getChild() {
        return child;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.child
     *
     * @param child the value for tourorder.child
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setChild(Integer child) {
        this.child = child;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.starDate
     *
     * @return the value of tourorder.starDate
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public String getStardate() {
        return stardate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.starDate
     *
     * @param stardate the value for tourorder.starDate
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setStardate(String stardate) {
        this.stardate = stardate == null ? null : stardate.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tourorder.endDate
     *
     * @return the value of tourorder.endDate
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public String getEnddate() {
        return enddate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tourorder.endDate
     *
     * @param enddate the value for tourorder.endDate
     *
     * @mbg.generated Fri Aug 07 22:42:00 CST 2020
     */
    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }
}