# == Schema Information
#
# Table name: indicators
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  acronym      :string(255)
#  weight       :float
#  objective_id :integer
#  operation_id :integer
#  redfrom      :float
#  redto        :float
#  yellowfrom   :float
#  yellowto     :float
#  greenfrom    :float
#  greento      :float
#  progress     :float
#  baseline     :float
#  growth       :float
#  unit         :string(255)
#  formula      :string(255)
#  show         :boolean          default(TRUE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Indicator < ActiveRecord::Base
  #attr_accessible :name, :objective_ids, :weight, :operation_id, :objective_id, :unit, :formula, :acronym
  attr_protected
  has_and_belongs_to_many :objectives

  has_many :indicator_scores
  has_many :indicatorscores, :class_name => 'IndicatorScore', :foreign_key => "scoredate_id"
  belongs_to :operation

  belongs_to :objective

  has_and_belongs_to_many :sons, :join_table => "indicator_father_son", :class_name => "Indicator", :foreign_key => "indicatorfather_id", :association_foreign_key => "indicatorson_id"


    def today_score
        date = ScoreDate.find_by_month_and_year(Date.today.month, Date.today.year)
        return IndicatorScore.find_by_indicator_id_and_scoredate_id(self.id, date).score
    end
end

#"indicatorfather_id"

#   has_and_belongs_to_many :friends, 
#                                            :class => "User", 
#                                           :association_foreign_key => 
#"friend_id", 
#                                           :join_table => "friends_users" 
#padre = Indicator.find(1)

#indicator_father_son.indicatorson
