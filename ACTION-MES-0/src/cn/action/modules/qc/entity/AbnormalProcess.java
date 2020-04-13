package cn.action.modules.qc.entity;

        import cn.action.common.persistence.DataEntity;
        import cn.action.modules.sys.entity.User;
        import cn.action.modules.tec.entity.Process;
public class AbnormalProcess extends DataEntity<AbnormalProcess>{

    /**
     * �쳣������ʵ����
     */
    private static final long serialVersionUID = 1L;

    private Process process; //�����������
    private String problem; //�ϱ�����
    private User reportUser; //�ϱ���
    private String reportTime; //�ϱ�ʱ��
    private String test; //�����
    private User testUser; //�����
    private String testTime; //���ʱ��
    private String state; //״̬

    public AbnormalProcess() {
        super();
        this.process=new Process();
        this.reportUser = new User();
        this.testUser = new User();
    }

    public Process getProcess() {
        return process;
    }
    public void setProcess(Process process) {
        this.process = process;
    }
    public String getProblem() {
        return problem;
    }
    public void setProblem(String problem) {
        this.problem = problem;
    }
    public User getReportUser() {
        return reportUser;
    }
    public void setReportUser(User reportUser) {
        this.reportUser = reportUser;
    }
    public String getReportTime() {
        return reportTime;
    }
    public void setReportTime(String reportTime) {
        this.reportTime = reportTime;
    }
    public String getTest() {
        return test;
    }
    public void setTest(String test) {
        this.test = test;
    }
    public User getTestUser() {
        return testUser;
    }
    public void setTestUser(User testUser) {
        this.testUser = testUser;
    }
    public String getTestTime() {
        return testTime;
    }
    public void setTestTime(String testTime) {
        this.testTime = testTime;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }


}