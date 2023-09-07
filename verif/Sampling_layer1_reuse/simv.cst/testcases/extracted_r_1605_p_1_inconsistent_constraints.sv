class c_1605_1;
    integer i = -266;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1605_1;
    c_1605_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010000zzx1xz101011z000z0011xxzxxzxxxxxxxzzzxxzxzxzzzxxzxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
