$has_mask = false
$has_wallet = false
$has_keys = false

def start
    write("We live in the apocalypse. A global pandemic is killing thousands of Americans.")
    write("President Suntan has reopened the economy because he can't stand seeing poor people not working.")
    write("You have been locked up in your house for months.")
    write("Supplies are running low. You won't last much longer unless you venture out.")
    write("You start to plan. You will need your keys, your wallet, and a N95 mask that you spent over 400% MSRP on.")
    write("You look around your house. It's a mess. \"How long has it been since I've seen the sun?\" you think to yourself.")
    write("You see your keys in the fish bowl. Your car is parked outside.")
    write("Your wallet is holding up an out-of-balance table. You haven't needed it in weeks, since your information is saved in your Amazon profile.")
    write("You have a fresh pack of masks sitting on the counter, unopened. These will keep you alive around others.")
    write("The front door beckons you. Should you open it?")


    def make_choice
        puts "What would you like to do?"
        print ">"

        choice = $stdin.gets.chomp

        if choice == "take keys"
            $has_keys = true
            puts "You took the keys. Good idea."
            make_choice
        elsif choice == "take wallet"
            $has_wallet = true
            puts "You took the wallet. The table is wobbly again."
            make_choice
        elsif choice == "take mask"
            $has_mask = true
            puts "You took the mask. This will keep you alive around others."
            make_choice
        elsif choice == "open door" || choice == "leave"
            leave_home
        else 
            puts "I don't understand, try again"
            make_choice
        end
    end

    def leave_home
        puts "Would you like to do anything else before you leave? y/n"
        decision = $stdin.gets.chomp
        if decision == "y"
            make_choice
        elsif decision == "n"
            puts "You open the door and step into the apocalypse."
            outside_house
        else 
            puts "I don't understand. Please just answer with a \'y\' or \'n\'."
        end
    end

    make_choice
end

def outside_house
    write("You are standing in front of your house, and your car is parked here. You haven't driven it in weeks.")
    write("I hope I still remember how to do this...")
    if $has_keys == true
        puts "You open the door to your car, fire it up, throw on some high-BPM grindcore, and set off."
        in_car
    else
        puts "You dumb son of a bitch. You left your keys in the house. Now you are locked out and will surely perish."
        die("You turn into human jerky under the mid-day sun. Your porcelain-like complexion is no match for the UV rays boiling you from the inside.")
    end
end

def in_car 
    write("You quickly realize that you don't have any idea where you want to go.")
    write("Should you risk it at MegaMart? There will be tons of people, but at least the selection is good.")
    write("Or should you go to the little dollar store out by the elementary school?")
    write("Choose 1 for MegaMart, or 2 for the Dollar Kingdom.")
    print ">"

    choice = $stdin.gets.chomp

    if choice == "1"
        puts "You take a left, to the highway towards the closest MegaMart. You can already see the parking lot in the distance, packed with idiots."
        mega_mart
        return
    elsif choice == "2"
        puts "You take a right, in the direction of the Dollar Kingdom. You're heading towards the \'hood."
        dollar_kingdom
        return
    else
        puts "Your indecision has cost you gravely. You're so deep into your thoughts that you don't realize that you are speeding towards a ravine."
        die("Your PT Cruiser explodes into flames as your carcass is torn apart by Mexican aluminium.")
    end
end

def mega_mart
    write("You take the exit for MegaMart after a harrowing apocalyptic highway drive.")
    write("You finally find parking about 3/4 of a mile away.")
    write("C.H.U.D.s are running amok in the parking lot. The dumbest ones are even protesting health restrictions.")
    
    if $has_mask == true
        puts "You put on your N95 mask. This should prevent you from catching the contagion from the uneducated hillbillies and empathy-devoid Libertarians."
    else puts "You damned fool! You forgot your mask at home!"
        die("All of a sudden an absolute doorknob of a man sneezes close to you. In a glint of sunlight you can see the particulates in the air. 
            You inhale the virus and immediately die. Right there. On the ground. The end.")
    end

    write("You shove your way into the store. Slack-jawed yokels are fighting to the death for toilet paper.")
    write("You grab your supplies while keeping a healthy distance from everyone. Not today, 'Rona.")
    write("Time to check out.")

    if $has_wallet == true
        puts "After a long wait, you finally check out at one of the cash registers. The cashier is in an iron lung to protect themselves."
    else puts "You panic while feeling your pants for your wallet, then realize that you left it at home, under the table, to balance it."
        die("You clutch your heart, and die from embarrassment. The cashier in the iron lung calls for a cleanup at register YOU'RE DEAD.")
    end

    in_traffic
end

def dollar_kingdom
    write("You casually roll up on the block where Dollar Kingdom is. There are a few people out, but there are only two other cars in the parking lot.")
    write("You enter Dollar Kingdom, grab a hand basket, and take a look around. The place is kind of a wreck. You step over some unattended children and head to the coolers.")
    write("You grab some supplies that you need and head to the checkout counter. This is much more chill than I expected.")

    if $has_wallet == true
        puts "The lady at the counter rings you up, and you GTFO. God Bless the Dollar Kingdom!"
    else 
        puts "You panic while feeling your pants for your wallet, then realize that you left it at home, under the table, to balance it. You absolute doorknob."
        die("The woman behind the counter stares daggers into your soul. You can't believe you forgot your wallet at home. You immediately die on the spot from embarrassment.")
    end

    in_traffic
end

def in_traffic
    write("Supplies in hand, you get back into your car. You spray your entire body with hand sanitizer. You feel so pure.")
    write("You turn the keys, crank up the 300bpm grindcore, and head home.")
    write("As you get on the main road, a giant pickup truck blaring the new Puddle of Mudd album pulls out in front of you and blows black smoke in your direction.")
    write("What do you do?")
    write("Choose 1 to turn up the grindage and ignore these fools, or choose 2 to lob your newly acquired eggs at their stupid truck.")
    print(">")

    choice = $stdin.gets.chomp

    if choice == "1"
        write("The driver of the truck drops his tallboy in his lap, and careens into the drainage ditch where his fuel tank ignites. He explodes into giblets that rain down upon your car.")
        die("After a few minutes, you pull into your driveway. You made it! You think to yourself, \"God, I need to clean my car.\"")
    elsif choice == "2"
        write("You lob your eggs at the giant pickup truck and make some direct hits. Your accurate aim is rewarded by the truck driver slamming it into Reverse and crushing your car under its giant tires")
        die("As you are crushed to death, the last thing you see are the bumper stickers on the tailgate of this truck. As your vision fails and fades to black, you read the words \"Don't mess with Texas\".")
    else
        write("As you fail to make a decision, you realize too late that you are about to rear-end this truck. As you slam into the rear bumper of the truck, your airbag deploys.")
        die("The airbag pops your head like a watermelon in a Troma movie. You almost made it! Maybe in your next life.")
    end

end

def write(txt)
    puts txt
    sleep(1)
end

def die(why)
    puts why
    exit(0)
end

start