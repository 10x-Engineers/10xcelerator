class c_2293_1;
    integer i = -381;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2293_1;
    c_2293_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1x0z1z0x11x1zzx01x110x10xxxz0zxzxzzxxzxxxzxxzxxxzxzzzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
