require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is valid with valid attributes' do
    blog = Blog.create(title: 'Hike', content: 'Mount Cowels')
    expect(blog).to be_valid
  end

  it 'does not allow duplicate blog post titles' do
    Blog.create(title:'Homes', content:'High home prices')
    blog1 = Blog.create(title:'Homes', content:'High home prices')
    expect(blog1.errors[:title]).to_not be_empty
  end

  it 'is not valid if title is less than 4 characters' do
    blog2 = Blog.create(title:'Cas', content:'Famous Casinos')
    expect(blog2.errors[:title]).to_not be_empty
  end

  it 'is not valid if blog content is less than 10 characters' do
    blog2 = Blog.create(title:'Casino', content:'Famous')
    expect(blog2.errors[:content]).to_not be_empty
  end
end
