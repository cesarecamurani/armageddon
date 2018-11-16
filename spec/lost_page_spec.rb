
feature "Shows you Lost! Message" do

  scenario 'Shows you Lost! Message' do
    visit('/lost_page')
    expect(page).to have_content("Cesare Lost!!!")
  end

end
