require_relative '../app/models/test_model'

RSpec.describe TestModel do
    context "#Testeo Clase TestModel." do
        it "#toName() Seteo del metodo." do
            testInstance = TestModel.new
            expected = testInstance.toName('Juan Perez')
            expect(expected).to eq 'Juan Perez'
        end

        it "#toName() No devuelve string vacio." do
            testInstance = TestModel.new
            expected = testInstance.toName('Juan Perez')
            expect(expected).not_to eq ''
        end
    end
end
