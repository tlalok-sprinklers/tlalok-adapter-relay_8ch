module Tlalok
  module Adapter
    module Relay8ch
      module WiringPi
        LOW = 0
        HIGH = 1
        class GPIO
          def digital_write(pin, value)
            puts "#{pin} => #{value}"
          end

          def shift_out(pin, pin_other, mode, value)

          end
        end
      end
    end
  end
end
