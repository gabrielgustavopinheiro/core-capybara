# Describe reliable techniques to query a collection of elements with Capybara
# Element Collection: A group of interactable HTML nodes, like a list of items, options, etc.
describe 'Find a collection of elements techniques summary' do
  # Same selector techniques can be used to find a collection of elements
  # Collections methods return an array-like object
  it 'find a collection using all method' do
    all(:css, '[data-test="option"]')
  end

  it 'find a collection using find_all method' do
    find_all(:css, '[data-test="item"]')
  end

  # It is possible to interact with collections using array-like methods
  context 'Array-like methods for collections' do
    # Access element position in the collection
    it '#[]' do
      all(:css, '[data-test="item"]')[0]
    end

    # Get the first element in the collection
    it '#first()' do
      all(:css, '[data-test="item"]').first
    end

    # Get the last element in the collection
    it '#last()' do
      all(:css, '[data-test="item"]').last
    end

    # Iterate over each element in the collection
    it '#each()' do
      all(:css, '[data-test="item"]').each do |item|
        # Perform actions on each item
      end
    end

    # Get the count of elements in the collection
    it '#count()' do
      all(:css, '[data-test="item"]').count
    end

    # Check if the collection is empty
    it '#empty?()' do
      all(:css, '[data-test="item"]').empty?
    end
  end
end
