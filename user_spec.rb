require_relative './main'

RSpec.describe User do
  describe '.where' do
    it 'single match' do
      expect(User.where(name: 'Michael').to_a).to eq([{ id: 1, name: 'Michael', age: 21 }])
    end

    it 'multiple match' do
      expect(User.where(age: 21).to_a).to eq([
        { id: 2, name: 'Teodor', age: 21 },
        { id: 1, name: 'Michael', age: 21 }
      ])
    end

    it 'chained' do
      expect(User.where(age: 21).where(name: 'Teodor').to_a).to eq([{ id: 2, name: 'Teodor', age: 21 }])
    end
  end

  describe '#order' do
    context 'by id' do
      it 'default DESC' do
        expect(User.where(age: 21).order(:id).to_a).to eq([
          { id: 2, name: 'Teodor', age: 21 },
          { id: 1, name: 'Michael', age: 21 }
        ])
      end

      it 'with direction' do
        expect(User.where(age: 21).order(id: :asc).to_a).to eq([
          { id: 1, name: 'Michael', age: 21 },
          { id: 2, name: 'Teodor', age: 21 }
        ])
      end
    end
  end
end
