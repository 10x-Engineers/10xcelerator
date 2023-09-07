class c_355_1;
    integer i = -58;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_355_1;
    c_355_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z1001z010001zx1xz0110xz1z1zxxzxxxxxxxxxxxzxxzxxzxzxzxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
