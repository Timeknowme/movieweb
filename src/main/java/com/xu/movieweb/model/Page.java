package com.xu.movieweb.model;

public class Page {
    private int pageNum;
    private int pageSize = 10;
    private int startRow;
    private int endRow;
    private long total;
    private int pages;
    private Boolean reasonable = Boolean.valueOf(true);

    public Page() {
    }

    public Page(int pageNum, int pageSize) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        calculateStartAndEndRow();
    }

    public Page(int pageNum, int pageSize, long total) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.total = total;
    }

    public int getPages() {
        return this.pages;
    }

    public int getEndRow() {
        return this.endRow;
    }

    public int getPageNum() {
        return this.pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = ((this.reasonable != null) && (this.reasonable.booleanValue()) && (pageNum <= 0) ? 1 : pageNum);
        calculateStartAndEndRow();
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        calculateStartAndEndRow();
    }

    public int getStartRow() {
        return this.startRow;
    }

    public long getTotal() {
        return this.total;
    }

    public void setTotal(long total) {
        this.total = total;
        if (this.pageSize > 0) {
            this.pages = ((int) (total / this.pageSize + (total % this.pageSize == 0L ? 0 : 1)));
        } else {
            this.pages = 0;
        }
        if ((this.reasonable != null) && (this.reasonable.booleanValue()) && (this.pageNum > this.pages)) {
            this.pageNum = this.pages;
            calculateStartAndEndRow();
        }
    }

    private void calculateStartAndEndRow() {
        this.startRow = (this.pageNum > 0 ? (this.pageNum - 1) * this.pageSize : 0);

        this.endRow = (this.pageSize * (this.pageNum > 0 ? 1 : 0));
    }

    public String toString() {
        StringBuffer sb = new StringBuffer("Page{");
        sb.append("pageNum=").append(this.pageNum);
        sb.append(", pageSize=").append(this.pageSize);
        sb.append(", startRow=").append(this.startRow);
        sb.append(", endRow=").append(this.endRow);
        sb.append(", total=").append(this.total);
        sb.append(", pages=").append(this.pages);
        sb.append(", reasonable=").append(this.reasonable);
        sb.append('}');
        return sb.toString();
    }
}
