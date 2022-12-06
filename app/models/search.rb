class Search < ApplicationRecord

    def search_results
        results = Result.all
    
        results = results.where(["student_name ILIKE ?", "%#{keywords}%"]) if keywords.present?
        results = results.where(["session ILIKE ?", session]) if session.present?
        results = results.where(["level ILIKE ?", level]) if level.present?
        results = results.where(["semester ILIKE ?", semester]) if semester.present?
    
        return results
    end
end
