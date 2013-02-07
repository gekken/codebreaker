Feature: code-breaker submits guess

	The codebreaker submits a guess of four numbers. The game marks the guess 
	with + and - signs.
	
	For each number in the guess that matches the number and position of a 
	number in the secret code, the mark includes one + sign. For each number in
	the guess that matches the number but not the position of a number in the 
	secret code, the mark includes one - sign.
	
Scenario Outline: submit guess
  Given the secret code is "1234"
  When I guess "<guess>"
  Then the mark should be "<mark>"

Scenarios: no matches

    |   guess   |   mark    |
    |   5555    |           |
    
Scenarios: 1 number correct

    |   guess   |   mark    |
    |   1555    |   +       |
    |   2555    |   -       |
    
Scenarios: 2 numbers correct
 
    |   guess   |   mark    |
    |   5254    |   ++      |       
    |   5154    |   +-      |
    |   2545    |   --      |
    
Scenarios: 3 numbers correct
    
    |   guess   |   mark    |
    |   5234    |   +++     |
    |   5134    |   ++-     |
    |   5124    |   +--     |
    |   5123    |   ---     |
    
 Scenarios: all numbers correct
 
    |   guess   |   mark    |
    |   1234    |   ++++    |
    |   1243    |   +++-    |
    |   1423    |   +---    |
    |   4321    |   ----    |
    
        