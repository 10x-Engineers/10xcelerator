class c_2539_1;
    integer i = -422;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2539_1;
    c_2539_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010110x1zx10z00xz11x1z1z110xxxxzzzxxxzxzxzxxzxxzzxzzzzxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
