require 'spec_helper'

describe "workdays/index.html.haml" do

  before :each do
    assign :workdays, []
    render
  end

  it "should have title " do
    rendered.should have_selector ".title" , :content => I18n.t('views.workdays.index.title')
  end

  it "should have date and period headers" do
    rendered.should have_selector ".header" , :content => I18n.t('models.workdays.date')
    rendered.should have_selector ".header" , :content => I18n.t('models.periods.begin')
    rendered.should have_selector ".header" , :content => I18n.t('models.periods.end')
  end

end
