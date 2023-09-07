class c_2344_1;
    integer i = -389;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2344_1;
    c_2344_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0xxzx0zz1xz1zxx0x1z0x1xzzz1zzxzxxzxxzxxxzxzxxxzzzxzzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
