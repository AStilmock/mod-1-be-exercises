class Pirate
    attr_reader :name, :job
    def initialize(name, job = "Scallywag", cursed: false)
        @name = name
        @job = job
        # @curses = 0
        # @cursed = cursed
    end

    def cursed?
        if commit_heinous_act >= 4
            true
        else
            false
        end
    end

    # def commit_heinous_act
    #     @curses += 1
    #     if @curses == 4
    #         @cursed = true
    #     end
    # end



end
