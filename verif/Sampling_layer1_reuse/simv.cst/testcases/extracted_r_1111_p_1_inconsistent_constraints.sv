class c_1111_1;
    integer i = -184;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1111_1;
    c_1111_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxxx0zxz0zzz001zzxx01x11010x01xzzzxxzzxzxxzxzxxxzxzxzxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
