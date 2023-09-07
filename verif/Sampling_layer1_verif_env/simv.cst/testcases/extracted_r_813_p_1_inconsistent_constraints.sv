class c_813_1;
    integer i = -134;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_813_1;
    c_813_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1x0zzzxxz11zz1z0xx0001x1000zzxxxzzzzzzxzxzxzzzzzxxzzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
