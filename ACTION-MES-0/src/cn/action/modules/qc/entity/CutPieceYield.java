package cn.action.modules.qc.entity;

        import cn.action.common.persistence.DataEntity;

/**
 * 切片成品率
 * @author DELL
 *
 */
public class CutPieceYield extends DataEntity<CutPieceYield>{

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String cardId;//员工号
    private String employeeName;//员工姓名
    private String workCellId;//工位id
    private int allQualified;//不合格的数量
    private int allPieces;//总片数
    private double yield;//成品率
    private String startTime;//开始时间
    private String endTime;//结束时间

    public String getCardId() {
        return cardId;
    }
    public void setCardId(String cardId) {
        this.cardId = cardId;
    }
    public String getEmployeeName() {
        return employeeName;
    }
    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }
    public String getWorkCellId() {
        return workCellId;
    }
    public void setWorkCellId(String workCellId) {
        this.workCellId = workCellId;
    }
    public int getAllQualified() {
        return allQualified;
    }
    public void setAllQualified(int allQualified) {
        this.allQualified = allQualified;
    }
    public int getAllPieces() {
        return allPieces;
    }
    public void setAllPieces(int allPieces) {
        this.allPieces = allPieces;
    }

    public String getStartTime() {
        return startTime;
    }
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }
    public String getEndTime() {
        return endTime;
    }
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }


    public double getYield() {
        return yield;
    }

    public void setYield(double yield) {
        this.yield = yield;
    }
}
