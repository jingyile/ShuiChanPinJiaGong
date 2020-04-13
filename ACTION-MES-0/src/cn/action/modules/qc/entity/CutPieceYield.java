package cn.action.modules.qc.entity;

        import cn.action.common.persistence.DataEntity;

/**
 * ��Ƭ��Ʒ��
 * @author DELL
 *
 */
public class CutPieceYield extends DataEntity<CutPieceYield>{

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String cardId;//Ա����
    private String employeeName;//Ա������
    private String workCellId;//��λid
    private int allQualified;//���ϸ������
    private int allPieces;//��Ƭ��
    private double yield;//��Ʒ��
    private String startTime;//��ʼʱ��
    private String endTime;//����ʱ��

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