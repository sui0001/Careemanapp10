package dto;

public class CompanyDetailDTO {
		private int company_id; // 企業ID
        private int company_detail_id; // 基本詳細ID : 主キー
        private String management_status; // 経営状況
        private String business_content; // 事業内容
        private String job_description; // 職務内容
        private String work_location; // 勤務地
        private String remote_work; // リモートワーク
        private String working_hours; // 就業時間
        private int standard_working_hours; // 所定労働時間
        private int break_time; // 休憩時間
        private String break_time_rule; // 休憩時間の指定
        private int average_overtime_hours; // 平均残業時間
        private int annual_holidays; // 年間休日数
        private String holiday_type; // 休日形態
        private String paid_holidays; // 有給休暇
        private String other_holidays; // 休暇
        private String holiday_notes; // 休暇メモ
        private int annual_salary_upper; // 年収上限
		private int annual_salary_lower; // 年収下限
        private int monthly_salary_upper; // 月収上限
		private int monthly_salary_lower; // 月収下限
        private int basic_salary_upper; // 基本給上限
		private int basic_salary_lower; // 基本給下限
        private int fixed_overtime_pay_upper; // 固定残業代上限
		private int fixed_overtime_pay_lower; // 固定残業代下限
        private int fixed_overtime_hours; // 固定残業時間
        private String commuting_allowance; // 通勤手当
        private String housing_allowance; // 住宅手当
        private String qualification_support; // 資格補助
        private String qualification_allowance; // 資格手当
        private String other_allowances; // その他手当
        private String bonus; // 賞与
        private String bonus_record; // 賞与実績
        private String social_insurance; // 社会保険
        private String probation_period; // 試用期間
        private String probation_period_changes; // 試用期間中の変更
        private String retirement_benefits; // 退職金


		// コンストラクタ
			public CompanyDetailDTO(int company_id, int company_detail_id, String management_status, String business_content,
					String job_description, String work_location, String remote_work, String working_hours,
					int standard_working_hours, int break_time, String break_time_rule, int average_overtime_hours,
					int annual_holidays, String holiday_type, String paid_holidays, String other_holidays,
					String holiday_notes, int annual_salary_upper, int annual_salary_lower, int monthly_salary_upper,
					int monthly_salary_lower, int basic_salary_upper, int basic_salary_lower, int fixed_overtime_pay_upper,
					int fixed_overtime_pay_lower, int fixed_overtime_hours, String commuting_allowance, String housing_allowance,
					String qualification_support, String qualification_allowance, String other_allowances, String bonus,
					String bonus_record, String social_insurance, String probation_period, String probation_period_changes,
					String retirement_benefits) {
				this.company_id = company_id;
				this.company_detail_id = company_detail_id;
				this.management_status = management_status;
				this.business_content = business_content;
				this.job_description = job_description;
				this.work_location = work_location;
				this.remote_work = remote_work;
				this.working_hours = working_hours;
				this.standard_working_hours = standard_working_hours;
				this.break_time = break_time;
				this.break_time_rule = break_time_rule;
				this.average_overtime_hours = average_overtime_hours;
				this.annual_holidays = annual_holidays;
				this.holiday_type = holiday_type;
				this.paid_holidays = paid_holidays;
				this.other_holidays = other_holidays;
				this.holiday_notes = holiday_notes;
				this.annual_salary_upper = annual_salary_upper;
				this.annual_salary_lower = annual_salary_lower;
				this.monthly_salary_upper = monthly_salary_upper;
				this.monthly_salary_lower = monthly_salary_lower;
				this.basic_salary_upper = basic_salary_upper;
				this.basic_salary_lower = basic_salary_lower;
				this.fixed_overtime_pay_upper = fixed_overtime_pay_upper;
				this.fixed_overtime_pay_lower = fixed_overtime_pay_lower;
				this.fixed_overtime_hours = fixed_overtime_hours;
				this.commuting_allowance = commuting_allowance;
				this.housing_allowance = housing_allowance;
				this.qualification_support = qualification_support;
				this.qualification_allowance = qualification_allowance;
				this.other_allowances = other_allowances;
				this.bonus = bonus;
				this.bonus_record = bonus_record;
				this.social_insurance = social_insurance;
				this.probation_period = probation_period;
				this.probation_period_changes = probation_period_changes;
				this.retirement_benefits = retirement_benefits;
			}


			// GetterとSetter
			public int getCompany_id() {
				return company_id;
			}


			public void setCompany_id(int company_id) {
				this.company_id = company_id;
			}


			public int getCompany_detail_id() {
				return company_detail_id;
			}


			public void setCompany_detail_id(int company_detail_id) {
				this.company_detail_id = company_detail_id;
			}


			public String getManagement_status() {
				return management_status;
			}


			public void setManagement_status(String management_status) {
				this.management_status = management_status;
			}


			public String getBusiness_content() {
				return business_content;
			}


			public void setBusiness_content(String business_content) {
				this.business_content = business_content;
			}


			public String getJob_description() {
				return job_description;
			}


			public void setJob_description(String job_description) {
				this.job_description = job_description;
			}


			public String getWork_location() {
				return work_location;
			}


			public void setWork_location(String work_location) {
				this.work_location = work_location;
			}


			public String getRemote_work() {
				return remote_work;
			}


			public void setRemote_work(String remote_work) {
				this.remote_work = remote_work;
			}


			public String getWorking_hours() {
				return working_hours;
			}


			public void setWorking_hours(String working_hours) {
				this.working_hours = working_hours;
			}


			public int getStandard_working_hours() {
				return standard_working_hours;
			}


			public void setStandard_working_hours(int standard_working_hours) {
				this.standard_working_hours = standard_working_hours;
			}


			public int getBreak_time() {
				return break_time;
			}


			public void setBreak_time(int break_time) {
				this.break_time = break_time;
			}


			public String getBreak_time_rule() {
				return break_time_rule;
			}


			public void setBreak_time_rule(String break_time_rule) {
				this.break_time_rule = break_time_rule;
			}


			public int getAverage_overtime_hours() {
				return average_overtime_hours;
			}


			public void setAverage_overtime_hours(int average_overtime_hours) {
				this.average_overtime_hours = average_overtime_hours;
			}


			public int getAnnual_holidays() {
				return annual_holidays;
			}


			public void setAnnual_holidays(int annual_holidays) {
				this.annual_holidays = annual_holidays;
			}


			public String getHoliday_type() {
				return holiday_type;
			}


			public void setHoliday_type(String holiday_type) {
				this.holiday_type = holiday_type;
			}


			public String getPaid_holidays() {
				return paid_holidays;
			}


			public void setPaid_holidays(String paid_holidays) {
				this.paid_holidays = paid_holidays;
			}


			public String getOther_holidays() {
				return other_holidays;
			}


			public void setOther_holidays(String other_holidays) {
				this.other_holidays = other_holidays;
			}


			public String getHoliday_notes() {
				return holiday_notes;
			}


			public void setHoliday_notes(String holiday_notes) {
				this.holiday_notes = holiday_notes;
			}


			public int getAnnual_salary_upper() {
				return annual_salary_upper;
			}


			public void setAnnual_salary_upper(int annual_salary_upper) {
				this.annual_salary_upper = annual_salary_upper;
			}


			public int getAnnual_salary_lower() {
				return annual_salary_lower;
			}


			public void setAnnual_salary_lower(int annual_salary_lower) {
				this.annual_salary_lower = annual_salary_lower;
			}


			public int getMonthly_salary_upper() {
				return monthly_salary_upper;
			}


			public void setMonthly_salary_upper(int monthly_salary_upper) {
				this.monthly_salary_upper = monthly_salary_upper;
			}


			public int getMonthly_salary_lower() {
				return monthly_salary_lower;
			}


			public void setMonthly_salary_lower(int monthly_salary_lower) {
				this.monthly_salary_lower = monthly_salary_lower;
			}


			public int getBasic_salary_upper() {
				return basic_salary_upper;
			}


			public void setBasic_salary_upper(int basic_salary_upper) {
				this.basic_salary_upper = basic_salary_upper;
			}


			public int getBasic_salary_lower() {
				return basic_salary_lower;
			}


			public void setBasic_salary_lower(int basic_salary_lower) {
				this.basic_salary_lower = basic_salary_lower;
			}


			public int getFixed_overtime_pay_upper() {
				return fixed_overtime_pay_upper;
			}


			public void setFixed_overtime_pay_upper(int fixed_overtime_pay_upper) {
				this.fixed_overtime_pay_upper = fixed_overtime_pay_upper;
			}


			public int getFixed_overtime_pay_lower() {
				return fixed_overtime_pay_lower;
			}


			public void setFixed_overtime_pay_lower(int fixed_overtime_pay_lower) {
				this.fixed_overtime_pay_lower = fixed_overtime_pay_lower;
			}


			public int getFixed_overtime_hours() {
				return fixed_overtime_hours;
			}


			public void setFixed_overtime_hours(int fixed_overtime_hours) {
				this.fixed_overtime_hours = fixed_overtime_hours;
			}


			public String getCommuting_allowance() {
				return commuting_allowance;
			}


			public void setCommuting_allowance(String commuting_allowance) {
				this.commuting_allowance = commuting_allowance;
			}


			public String getHousing_allowance() {
				return housing_allowance;
			}


			public void setHousing_allowance(String housing_allowance) {
				this.housing_allowance = housing_allowance;
			}


			public String getQualification_support() {
				return qualification_support;
			}


			public void setQualification_support(String qualification_support) {
				this.qualification_support = qualification_support;
			}


			public String getQualification_allowance() {
				return qualification_allowance;
			}


			public void setQualification_allowance(String qualification_allowance) {
				this.qualification_allowance = qualification_allowance;
			}


			public String getOther_allowances() {
				return other_allowances;
			}


			public void setOther_allowances(String other_allowances) {
				this.other_allowances = other_allowances;
			}


			public String getBonus() {
				return bonus;
			}


			public void setBonus(String bonus) {
				this.bonus = bonus;
			}


			public String getBonus_record() {
				return bonus_record;
			}


			public void setBonus_record(String bonus_record) {
				this.bonus_record = bonus_record;
			}


			public String getSocial_insurance() {
				return social_insurance;
			}


			public void setSocial_insurance(String social_insurance) {
				this.social_insurance = social_insurance;
			}


			public String getProbation_period() {
				return probation_period;
			}


			public void setProbation_period(String probation_period) {
				this.probation_period = probation_period;
			}


			public String getProbation_period_changes() {
				return probation_period_changes;
			}


			public void setProbation_period_changes(String probation_period_changes) {
				this.probation_period_changes = probation_period_changes;
			}


			public String getRetirement_benefits() {
				return retirement_benefits;
			}


			public void setRetirement_benefits(String retirement_benefits) {
				this.retirement_benefits = retirement_benefits;
			}
		
}

