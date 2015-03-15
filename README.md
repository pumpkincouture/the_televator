#The Televator
Our program determines when the elevator moves from floor to floor and when the doors open.  It receives information whenever an up or down button has been pressed for a floor, whenever a destination button in the elevator has been pressed, and whenever the doors close.  (We assume the doors will automatically close when appropriate.)

You could start with the elevator responding to the button pushes in the order they are received, but an efficient elevator must calculate the quickest path to resolve requests.  For example, if when the elevator is on the ground floor I press the up button on 4 and then you press the up button on 3 before the elevator has moved, it should stop at 3 before 4 since 3 is on the way.

#Running the specs
From main directory, press ```rspec spec\elevator_spec.rb``` to run the test.
