# encoding: utf-8
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe List do
  it { should respond_to(:label) }
  it { should respond_to(:position) }
end
