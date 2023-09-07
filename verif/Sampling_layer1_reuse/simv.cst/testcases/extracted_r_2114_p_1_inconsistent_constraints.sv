class c_2114_1;
    integer i = -351;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2114_1;
    c_2114_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxx11xx1x11z1x011zx0x01x0xxx0xxzzzzxzxzxxzxzxzzzxzxxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
