package xyz.gyfjuly.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;


import java.util.Date;

public class Materials {
    /**
     * Ψһ��ʶ
     */
    private String mId;

    /**
     * �û�Ψһ��ʶ
     */
    private String uId;

    /**
     * ��������
     */
    private String mMaterialName;

    /**
     * ������
     */
    private String mDonator;

    /**
     * ��������
     */
    private String mMaterialType;

    /**
     * �������
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date mCheckdate;


    /**
     * ��������
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date mFactdate;


    /**
     * ��������
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date mDate;

    /**
     * ������ˣ�0-δ��ˣ�1-���ͨ����2-���ʧ�ܣ�3-�����ɹ�
     */
    private Integer mCheck;

    public String getmId() {
        return mId;
    }

    public void setmId(String mId) {
        this.mId = mId;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getmMaterialName() {
        return mMaterialName;
    }

    public void setmMaterialName(String mMaterialName) {
        this.mMaterialName = mMaterialName;
    }

    public String getmDonator() {
        return mDonator;
    }

    public void setmDonator(String mDonator) {
        this.mDonator = mDonator;
    }

    public String getmMaterialType() {
        return mMaterialType;
    }

    public void setmMaterialType(String mMaterialType) {
        this.mMaterialType = mMaterialType;
    }

    public Date getmCheckdate() {
        return mCheckdate;
    }

    public void setmCheckdate(Date mCheckdate) {
        this.mCheckdate = mCheckdate;
    }

    public Date getmFactdate() {
        return mFactdate;
    }

    public void setmFactdate(Date mFactdate) {
        this.mFactdate = mFactdate;
    }

    public Date getmDate() {
        return mDate;
    }

    public void setmDate(Date mDate) {
        this.mDate = mDate;
    }

    public Integer getmCheck() {
        return mCheck;
    }

    public void setmCheck(Integer mCheck) {
        this.mCheck = mCheck;
    }

    @Override
    public String toString() {
        return "Materials{" +
                "mId='" + mId + '\'' +
                ", uId='" + uId + '\'' +
                ", mMaterialName='" + mMaterialName + '\'' +
                ", mDonator='" + mDonator + '\'' +
                ", mMaterialType='" + mMaterialType + '\'' +
                ", mCheckdate=" + mCheckdate +
                ", mFactdate=" + mFactdate +
                ", mDate=" + mDate +
                ", mCheck=" + mCheck +
                '}';
    }
}

