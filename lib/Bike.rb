class Bike
    def initialize(working = true)
      @working = working
    end

    def working?
      @working
    end

    def broken
      @working = false
    end

    def fix
      @working = true
    end
  end
