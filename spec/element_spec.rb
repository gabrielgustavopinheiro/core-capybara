# Describe reliable techniques to query a single element with Capybara
# Element: A interactable HTML node, like a button, input, link, etc.
# Avoid: Using `all` method to find a single node
# #find - returns only a single node or raise an error if not found
describe 'Find a single element techniques summary' do
  it 'find a html node by CSS selector' do
    find(:css, 'input[type="email]')
  end

  it 'find a html node by XPath' do
    # Use Xpath is a weak strategy prefer CSS selector with filters for more reliable test behavior
    find(:xpath, '//*[@id="email"]')
  end

  it 'find a html node by text argument' do
    find('button', text: 'Submit')
  end

  context 'find a html node by registered selectors' do
    # Capybara provides built-in selectors like :button, :link, :table for more human-like actions
    # More: Capybara::Selector
    it 'find a button by registered selector' do
      find(:button, 'Submit')
    end

    it 'find a table by registered selector' do
      find(:table, 'Users')
    end
  end
end
