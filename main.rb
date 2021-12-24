require 'ruby2d'
require_relative "character"
require_relative "option"
require_relative "scene"
require_relative "fortune"
require_relative "homeScene"
require_relative "fortuneScenes"
require_relative "quiz1Scenes"
require_relative "quiz2Scenes"
require_relative "quiz3Scenes"
require_relative "results"

# Setting up window
set width: 1000
set height: 600
set title: "Stormy Games"

# Setting up the constant background
set background: "blue"
Rectangle.new(x: 0, y: 0, width: 1000, height: 35, color: 'white') #white space at top of screen
Image.new('boat.png', x:115, y: 0, width: 45, height: 35) #boat in corner

# Setting up the results array
result = Results.new()

# Define first scene
op1 = "Your New Pet"
op2 = "Sprit Pokemon"
op3 = "Would You Survive The Apocalypse"
op4 = "- f o r t u n e -"
currScene = Home.new(op1, op2, op3, op4)

# Define Quiz 1
quiz1 = Quiz1.new()
quiz1Q1 = quiz1.get_1()
quiz1Q2 = quiz1.get_2()
quiz1Q3 = quiz1.get_3()
quiz1Answers = Array.new

# Define Quiz 2
quiz2 = Quiz2.new()
quiz2Q1 = quiz2.get_1()
quiz2Q2 = quiz2.get_2()
quiz2Q3 = quiz2.get_3()
quiz2Answers = Array.new

# Define Quiz 3
quiz3 = Quiz3.new()
quiz3Q1 = quiz3.get_1()
quiz3Q2 = quiz3.get_2()
quiz3Q3 = quiz3.get_3()
quiz3Answers = Array.new

# Define Fortune
fortune = Fortune.new()
daily = false

# If mouse is being pressed down
on :mouse_down do |event|
  case event.button
  when :left
    result.print(event.x, event.y)
  end
end

# If mouse is released
on :mouse_up do |event|
  case event.button
  when :left
    result.delete()
  end
end

# Define the initial speed/direction https://www.ruby2d.com/learn/input/
@x_speed = 0
@y_speed = 0

# Define what happens when a specific key is pressed https://www.ruby2d.com/learn/input/
on :key_held do |event|
  if event.key == 'a'
    @x_speed = -4
    @y_speed = 0
  elsif event.key == 'd'
    @x_speed = 4
    @y_speed = 0
  elsif event.key == 'w'
    @x_speed = 0
    @y_speed = -4
  elsif event.key == 's'
    @x_speed = 0
    @y_speed = 4
  elsif event.key == 'q'then close
  end
end

# If the key has stopped being pressed, stop moving the character
on :key_up do |event|
  if event.key == 'a'
    @x_speed = 0
    @y_speed = 0
  elsif event.key == 'd'
    @x_speed = 0
    @y_speed = 0
  elsif event.key == 'w'
    @x_speed = 0
    @y_speed = 0
  elsif event.key == 's'
    @x_speed = 0
    @y_speed = 0
  elsif event.key == 'q'then close
  end
end

# What happens when these key events occur
update do
  currScene.moveChar(@x_speed, @y_speed) # used to move Stormy around
  nextS = currScene.hit() # is updated after each Scene to determine which Scene is next

  # for QUIZ 1
  if nextS == "quiz1" then
    currScene = Quiz1Scene1.new(quiz1Q1[1], quiz1Q1[2], quiz1Q1[3], quiz1Q1[0])
  end
  if nextS == "1a1" || nextS == "1b1" || nextS == "1c1" then
    currScene.getA(quiz1Answers, nextS)
    currScene = Quiz1Scene2.new(quiz1Q2[1], quiz1Q2[2], quiz1Q2[3], quiz1Q2[0])
  end
  if nextS == "1a2" || nextS == "1b2" || nextS == "1c2" then
    currScene.getA(quiz1Answers, nextS)
    currScene = Quiz1Scene3.new(quiz1Q3[1], quiz1Q3[2], quiz1Q3[3], quiz1Q3[0])
  end
  if nextS == "1a3" || nextS == "1b3" || nextS == "1c3" then
    currScene.getA(quiz1Answers, nextS)
    currScene = Quiz1Results.new("", "", "", "")
    res = currScene.get_results(quiz1Answers)
    result.quiz1(res)
  end

  # for QUIZ 2
  if nextS == "quiz2" then
    currScene = Quiz2Scene1.new(quiz2Q1[1], quiz2Q1[2], quiz2Q1[3], quiz2Q1[0])
  end
  if nextS == "2a1" || nextS == "2b1" || nextS == "2c1" then
    currScene.getA(quiz2Answers, nextS)
    currScene = Quiz2Scene2.new(quiz2Q2[1], quiz2Q2[2], quiz2Q2[3], quiz2Q2[0])
  end
  if nextS == "2a2" || nextS == "2b2" || nextS == "2c2" then
    currScene.getA(quiz2Answers, nextS)
    currScene = Quiz2Scene3.new(quiz2Q3[1], quiz2Q3[2], quiz2Q3[3], quiz2Q3[0])
  end
  if nextS == "2a3" || nextS == "2b3" || nextS == "2c3" then
    currScene.getA(quiz2Answers, nextS)
    currScene = Quiz2Results.new("", "", "", "")
    res = currScene.get_results(quiz2Answers)
    result.quiz2(res)
  end

  # for QUIZ 3
  if nextS == "quiz3" then
    currScene = Quiz3Scene1.new(quiz3Q1[1], quiz3Q1[2], quiz3Q1[3], quiz3Q1[0])
  end
  if nextS == "3a1" || nextS == "3b1" || nextS == "3c1" then
    currScene.getA(quiz3Answers, nextS)
    currScene = Quiz3Scene2.new(quiz3Q2[1], quiz3Q2[2], quiz3Q2[3], quiz3Q2[0])
  end
  if nextS == "3a2" || nextS == "3b2" || nextS == "3c2" then
    currScene.getA(quiz3Answers, nextS)
    currScene = Quiz3Scene3.new(quiz3Q3[1], quiz3Q3[2], quiz3Q3[3], quiz3Q3[0])
  end
  if nextS == "3a3" || nextS == "3b3" || nextS == "3c3" then
    currScene.getA(quiz3Answers, nextS)
    currScene = Quiz3Results.new("", "", "", "")
    res = currScene.get_results(quiz3Answers)
    result.quiz3(res)
  end

  # for FORTUNE
  if nextS == "fortune" then
    if daily then
      currScene = FortuneScene2.new("", "", "", "You've already gotten your fotune of the day.")
    else
      currScene = FortuneScene1.new("YES", "", "NO", "Do you want to know your fortune of the day?")
    end
  end
  if nextS == "y" then
    currScene = FortuneScene3.new("", "", "", "")
    res = currScene.getFortune()
    result.fortune(res)
    daily = true
  end
  if nextS == "n" then
    currScene = FortuneScene2.new("", "", "", "Exit now")
  end

  # RESTART
  if nextS == "exit" then
    quiz1Answers = Array.new
    quiz2Answers = Array.new
    quiz3Answers = Array.new
    quiz4Answers = Array.new
    currScene = Home.new(op1, op2, op3, op4)
  end

  # QUIT
  if nextS == "quit" then
    close
  end
end

show