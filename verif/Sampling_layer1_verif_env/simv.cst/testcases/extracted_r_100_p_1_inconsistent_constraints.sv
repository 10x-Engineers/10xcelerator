class c_100_1;
    integer i = -15;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_100_1;
    c_100_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110zzxz01zz11zxxx0z1xx11z000x1zzxxzzxxzzzzzxxzzzzzxzxxxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
