require 'faker'
require 'tty-prompt'
require 'io/console'



def main()

    choices = [
        {name: 'Chuck Norris Facts', gem: lambda {Faker::ChuckNorris.fact}},
        # {name: 'Random Facts', gem: lambda {RandomFacts::Generator.process('animals'.to_sym)}},
        # {name: 'Random Facts', gem: lambda {Wikifacts.get_random_fact}},
        # {name: 'Random Facts3', gem: lambda {RandomFacts::Generator.valid_types}},
    ]

    terminal_width = IO.console.winsize[1] ## this gets the width of the terminal
    prompt = TTY::Prompt.new

    quit = false
    until quit
        system "clear"
        puts "*" * terminal_width
        puts ""
        puts "Hello User! Welcome to Simo_Sultan's fun fact generator."
        puts ""
        puts "*" * terminal_width
        puts ""

        resp = prompt.select("Choose your fun fact type.", choices, cycle: true)

        puts ""
        puts ""
        puts ""
        
        choices.each do |option|
            if option[:name] == resp
                puts option[:gem].call()
            end
        end

        puts ""
        puts ""
        puts ""

        puts "Press any key to continue, or type [E]xit"
        exit = gets.strip.downcase[0]
        if exit == "e"
            quit = true
            puts ""
            puts ""
            puts ""
            puts "See ya l8r allig8r!"
        end
    end
end

main()