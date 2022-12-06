class Result < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :previous_grades, dependent: :destroy
  has_many :present_grades, dependent: :destroy
  has_many :cummulative_grades, dependent: :destroy

  enum session: { "2018/2019": "2018/2019", "2019/2020": "2019/2020", "2020/2021": "2020/2021", "2021/2022": "2021/2022" }
  enum level: { "ND I": "ND I", "ND II": "ND II", "HND I": "HND I", "HND II": "HND II" }
  enum semester: { "First semester": "First semester", "Second semester": "Second semester" }

  def self.search(search)
    if search
      where(["student_name ILIKE ?", "%#{search}%"])
    else
      all
    end
  end
end