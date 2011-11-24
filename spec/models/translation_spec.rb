require 'spec_helper'

describe Translation do
  pending "add some examples to (or delete) #{__FILE__}"
end


# == Schema Information
#
# Table name: translations
#
#  id             :integer         not null, primary key
#  source_unit_id :integer         not null
#  target_unit_id :integer         not null
#  repo_id        :integer         not null
#  isPublic       :boolean         default(TRUE)
#  created_at     :datetime
#  updated_at     :datetime
#

