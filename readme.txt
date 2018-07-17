=====================================================================================================================
vg101 Project 1   

Name: Jin Zhejian Student ID: 517370910167
=====================================================================================================================
Ex.1

1.Introduction:
    Ex.1 is a cross road traffic game. By inputting some parameters, players can simulate the traffic situation at a crossroad. The traffic lights changes color and the cars from differrent directions with different colors have probabilities to ture right, left or keep going. Players lose the game when two cars crash.
---------------------------------------------------------------------------------------------------------------------

2.Instructions:
    Open the file: Ex_1.m
    In the alpha version, players only need to input four parameters. Don't forget that the probability is within the range of 0¡ª1
---------------------------------------------------------------------------------------------------------------------

3. Descriptions about the problem:
    To realize the road traffic game, the problem can be separated into 5 parts. 
	The 1st part is: Initialise all the parameters and prompt the users.
	The 2nd part is: Draw the cross road.
    	The 3rd part is: Make the animation of traffic lights.
	The 4th part is: Write functions to plot the cars.
	The 5th part is: Make the animation of the motion of the cars.Including:
			 a) separate n randomly
			 b) generete the random probability matrix 
			 c) the motion of the cars
	The 6th part is: Judge the condition when two cars crash. (undone)
---------------------------------------------------------------------------------------------------------------------

4.Descriptions about the algorithm:
    1) The change of color of the traffic lights:
	In our real life, yellow light only comes after the green light ends.
    	Since Lights in the diagonal of the cross road have a same color, there are 6 situations of traffic lights:
		light13g;
		light13y;
		light13r;
		light24g;
		light24y;
		light24r;
	The algorithm use a for loop which contains two for loops:
	    a) for light 1 and light 3, they have a green--yellow--red--green loop:
		a1) rem(t,g+o+r) <= g && rem(t,g+o+r) >0
		-->	light13g
		a2) rem(t,g+o+r) > g && rem(t,g+o+r)<=g+o
		-->	light13y
		a3) rem(t,g+o+r)>g+o && rem(t,g+o+r)<=g+o+r ||rem(t,g+o+r)==0
		-->	light13r
	    b) for light 2 and light 4, they have a red--green--yellow--red loop:
		b1) rem(t,g+o+r) <= r && rem(t,g+o+r) >0
		-->	light24r
		b2) rem(t,g+o+r) > r && rem(t,g+o+r)<=r+g
		-->	light24g
		b3) rem(t,g+o+r)>r+g && rem(t,g+o+r)<=r+g+o ||rem(t,r+g+o)==0
		-->	light24y
		
	* my traffic lights can input any o,g,t for two situations, meaning that the situation a) and situation b) can change at different time rather than yellow lights are always appeared together.
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.-.-.-.-.-.-.

    2) The motion of the cars: 
	a) Separate n randomly.
	b) Generete the random probability matrix for go when red,turning left and turning right:
	For each car of one of the situations of the 4 roads, create 4 random char of 0 and 1 accordingly.The char with 0 and 1 follows the input probability.
	c) Car animation:
	Use rectangle to draw the cars. The animation of each car on one road can be separated three four kinds:go straight,turn left,turn right	
	By filling the probability choice of each car, the motion of each car on each road can be described. The algorithem of one is:
		c1) go straight
			c11) go straight when car goes through the traffic light / coming and away from the crossroad
 			-->	Position(1)/Position(2) is changed
			c12) go straight when at the crossroad and the light is green.
			-->	Position(1)/Position(2) is changed
			c13) freeze
			-->	No change
		c2) turning right
			c21) go straight when car is coming and away from the crossroad 
			-->	Position(1)/Position(2) is changed
			c22) turn right when at the crossroad
			-->	Position(1) Position(2) Position(3) Position(4) are all changed accordingly.
			c23) go straight when car has turned
			-->	No change
		c3) turning left
			likely as turning right
---------------------------------------------------------------------------------------------------------------------


5.How to input/output:
		Input : n,w,p,t,g,o,r
		Output: A series of figures which can cover the previous one with interval of 1 seconds.
---------------------------------------------------------------------------------------------------------------------

6.The known bugs or limitations:

	1) In the program, pause() is used to simulate the flow of time. However, the program has to conduct other commands besides conducting pause(). Therefore, the actual time (change with different computers) is larger than the ideal time.

	2) The program is right to reflect the traffic situation only when the input parameters are integers. That is because of the command 1:totaltime. It can be solved by using the command linspace, then the code will make some change accordingly, which will be more complicated and occupy more memory.

	3) The motion of the car is shown each seconds. So, the motion of the car may look lagging.

	4£©The random turning left probability matrix and four go when green probability matrix seriously follows the input probabilities, however, the random turning left probability matrix has problem because it may occur the situation then a car both turns right and turns left. A brand-new algorithm can have a better performace: Use ###randi### to generate a random number from 1 to 100, and judge whether the number is between the range of 0--t/2 or t/2--t. That is more simple compared to the previous one. But I have no time to finish it. 

	5) Due to time limitation, the crash of cars is not made yet. 
	
=====================================================================================================================
Ex.2

1.Introduction:
	Generate a random plate for each of the car and return the plates of all the cars which do not stop at the cross road.
---------------------------------------------------------------------------------------------------------------------

2.Instructions:
	Open the file: Ex_2 
	Then input a set of elements.
---------------------------------------------------------------------------------------------------------------------

3. Descriptions about the problem:
	1) Write a recursive algorithm that takes as input a set of elements and returns all their permutations.
	2) Adjust the previous algorithm to return a random subset of all the permutations containing n elements.
	3) Implement the generation of the registration plates in MATLAB, and assign a unique plate to each car.
	4) At the end of the game display the plate of all the cars that did not stop at the traffic light.
---------------------------------------------------------------------------------------------------------------------

4. Descriptions about the algorithm:
	1) Write a recursion. Determine the character position, swap the identified characters with the following characters one by one, and finally get the possibility of each exchange. 
	2) (Undone)
	3) (Undone)
	4) The car that did not stop at the traffic light is recorded in Ex_1. by the four go when red probability matrix.In problem 3,the plates are already connected to the number n. Sice n is already connected with n1,n2,n3,n4 in Ex_1, which are the four random car numbers on each road, the only thing to do is to choose the matrix when go red probability is 0 .(undone)
---------------------------------------------------------------------------------------------------------------------

5.How to input/output:
	1)Input:  a set of elements.
	  Output: a series of characters. 
---------------------------------------------------------------------------------------------------------------------















	