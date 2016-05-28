# encoding: utf-8
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'All Models' do
  Rails.application.eager_load!

  required_attributes = [:created_at, :updated_at, :deleted_at]
  all_models          = ActiveRecord::Base.descendants
  user_created_models = all_models - [ActiveRecord::SchemaMigration]

  user_created_models.each do |model|
    describe model do
      it { should respond_to(*required_attributes) }
    end
  end
end
