class c_322_1;
    integer i = -52;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_322_1;
    c_322_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1xxx10zz1000xx1zzz11z101xz0xxzzxxxxxxxzxxzxzxzxxzxzxzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
