require 'test'

describe "my_uniq" do
  let(:arr) {[1,2,1,3,3]}
  it "Should return new array" do
    expect(arr.my_uniq).not_to be(arr)
  end
  it "Should remove all duplicate elements" do
    expect(arr.my_uniq).to eq([1,2,3])
  end
end

describe "two_sum" do
  let(:arr) {[-1, 0, 2, -2, 1]}
  it "should only receive array of integers" do
    strings = ["a", "b", "c"]
    expect{ strings.two_sum }.to raise_error("InvalidTypeError")  
  end
  it "should find all pairs of positions where elem sum is 0" do
    expect(arr.two_sum).to eq([[0, 4], [2, 3]]) 
  end
  it "should return an empty array if no pairs found" do
    arr2 = [1, 2, 3, 4]
    expect(arr2.two_sum).to eq([])
  end
end

describe "my_transpose" do
  arr = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  it "should convert between row-oriented and column-oriented representations" do
    expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end

  it "should take a square matrix" do 
    arr2 = [[1,2,3]]
    expect{ arr2.my_transpose }.to raise_error("InvalidMatrixError")
  end
end

describe "stock_picker" do 
  arr = [1, 5, 9, 2, 3]
  it "should return the most profitable pair of days to buy and sell stocks" do
    expect(arr.stock_picker).to eq("The most profitable day to buy is 0 and sell is 2")
  end
end