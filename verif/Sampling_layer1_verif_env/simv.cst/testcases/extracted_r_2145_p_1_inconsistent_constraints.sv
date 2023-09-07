class c_2145_1;
    integer i = -356;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2145_1;
    c_2145_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000x10x0x1zx0xz00zzxxxz0zxxzxxzxzzxxzzzxxxzxxzzxxzxzxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
