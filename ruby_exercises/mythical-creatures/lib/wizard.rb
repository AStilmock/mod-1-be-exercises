class Wizard
    attr_reader :name
    def initialize(name, bearded: false)
        @name = name
        # @rested = 0
    end

    def bearded?
        if name == "Ben"
            true
        else
            false
        end
    end

    def incantation(saying)
        "sudo " + saying
    end

    def rested?
        if @rested >= 3
            false
        else
            true
        end
    end

    def cast
        @rested += 1
        "MAGIC MISSLE"
    end
    



end
