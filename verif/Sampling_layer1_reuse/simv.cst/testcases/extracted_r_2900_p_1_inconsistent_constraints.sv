class c_2900_1;
    integer i = -482;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2900_1;
    c_2900_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zz0x111x001z1z111111z101zx1x1xzzxzxxxxzxxzxxxzxxzxzxzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
