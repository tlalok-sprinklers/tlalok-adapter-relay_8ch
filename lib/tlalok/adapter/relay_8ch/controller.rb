module Tlalok
  module Adapter
    module Relay8ch

      OPEN = WiringPi::LOW
      CLOSED = WiringPi::HIGH

      class Controller
        def initialize(io = nil)
          @stations = [CLOSED] * 8
          @io = io || WiringPi::GPIO.new do |gpio|
            gpio.pin_mode(0, WiringPi::OUTPUT)
            gpio.pin_mode(1, WiringPi::OUTPUT)
            gpio.pin_mode(2, WiringPi::OUTPUT)
            gpio.pin_mode(3, WiringPi::OUTPUT)
            gpio.pin_mode(4, WiringPi::OUTPUT)
            gpio.pin_mode(5, WiringPi::OUTPUT)
            gpio.pin_mode(6, WiringPi::OUTPUT)
            gpio.pin_mode(7, WiringPi::OUTPUT)
            gpio.pin_mode(8, WiringPi::OUTPUT)
          end
        end

        def open(station_number)
          set_station station_number, OPEN
        end

        def close(station_number)
          set_station station_number, CLOSED
        end

        def close_all()
          @stations = [CLOSED] * 8
          send_array @stations
        end

        def set_station(station_number, status)
          station_index = station_number - 1
          @stations[station_index] = status
          send_array @stations
        end

        def send_array(array)
          @stations.each_with_index do |state, station|
            @io.digital_write(station, state)
          end
        end
      end
    end
  end
end
