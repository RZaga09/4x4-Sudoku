**_4x4 Sudoku Puzzle made with Processing3_**

**PUZZLE GENERATION ALGORITHM** (Any similarity to any other existing algorithm is purely coincidental)

*Rows represented by arrays*

	line1 = [i, i, i, i]
	line2 = [i, i, i, i]
	line3 = [i, i, i, i]
	line4 = [i, i, i, i]


**Step 1: Fill up line1 with values 1-4 at random places**

**Step 2: Fill up line 2[0] and line2[1]**

	line2[0] = line1[2]
	line2[1] = line1[3]
	or
	line2[0] = line1[3]
	line2[1] = line1[2]

**Step 3: Fill up line2[2] and line2[3]**

	line2[2] = line1[0]
	line2[3] = line1[1]
	or
	line2[2] = line1[1]
	line2[3] = line1[0]

**Step 4: Fill up line3[0] and line3[1]**

	line3[0] = line1[1];
    line3[1] = line2[0];
    or
    line3[0] = line2[1];
    line3[1] = line1[0];
	or
    line3[0] = line1[1];
    line3[1] = line1[0];
    or
    line3[0] = line2[1];
    line3[1] = line2[0];

**Step 5: Fill up line3[2]**

	line3[2] != line3[0], line3[1], line1[2], line2[2]

**Step 6: Fill up line3[3]**

	line3[3] != line3[0], line3[1], line3[2]

**Step 7: Handle possible errors that might arise during steps 4-5**

	Error Handler #1:

	if line3[3] == line1[3] or line3[3] == line2[3]:
	line3[3] <--> line3[0] if line3[3] != line1[0], line2[0]
	line3[3] <--> line3[1] if line3[3] != line1[1], line2[1]

	Error Handler#2:

	if line3[2] == 0:
	line3[2] = Whichever number is not yet in the row
	line3[2] <--> line3[0] if line3[2] != line1[0], line2[0]
	line3[2] <--> line3[1] if line3[2] != line1[1], line2[1]

**Step 8: Fill up line4 with whichever number is not yet in each block's respective column**
