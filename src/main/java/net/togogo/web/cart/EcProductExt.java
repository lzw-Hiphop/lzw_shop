package net.togogo.web.cart;

import net.togogo.web.bean.EcProduct;

public class EcProductExt extends EcProduct {
    //数量
    private int count = 1;
    //小计
    private double subTotal;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    @Override
    public String toString() {
        return "EcProductExt{" +
                "productName=" + getProductName() +
                "count=" + count +
                ", subTotal=" + subTotal +
                '}';
    }
}
