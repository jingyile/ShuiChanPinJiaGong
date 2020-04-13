package cn.action.modules.bas.entity;
import cn.action.common.persistence.DataEntity;
public class WorkTime extends DataEntity<WorkTime>{

        private static final long serialVersionUID = 1L;

        private String week;
        private String month;
        private String year;
        private String workTime;
        private String employeeName;
        private String employeeNo;
        private String cellName;
        private String eName;
        private String cName;
        public String getWeek() {
            return week;
        }
        public void setWeek(String week) {
            this.week = week;
        }
        public String getMonth() {
            return month;
        }
        public void setMonth(String month) {
            this.month = month;
        }
        public String getYear() {
            return year;
        }
        public void setYear(String year) {
            this.year = year;
        }
        public String getWorkTime() {
            return workTime;
        }
        public void setWorkTime(String workTime) {
            this.workTime = workTime;
        }
        public String getEmployeeName() {
            return employeeName;
        }
        public void setEmployeeName(String employeeName) {
            this.employeeName = employeeName;
        }
        public String getEmployeeNo() {
            return employeeNo;
        }
        public void setEmployeeNo(String employeeNo) {
            this.employeeNo = employeeNo;
        }
        public String getCellName() {
            return cellName;
        }
        public void setCellName(String cellName) {
            this.cellName = cellName;
        }
        public String geteName() {
            return eName;
        }
        public void seteName(String eName) {
            this.eName = eName;
        }
        public String getcName() {
            return cName;
        }
        public void setcName(String cName) {
            this.cName = cName;
        }
    }
