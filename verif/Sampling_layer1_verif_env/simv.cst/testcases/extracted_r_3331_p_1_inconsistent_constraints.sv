class c_3331_1;
    integer i = -554;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3331_1;
    c_3331_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzxxzzxxz1xx10xxzz1110zzxzxxz1zxzzxzzxxxxxxxzxzxzxzxxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
