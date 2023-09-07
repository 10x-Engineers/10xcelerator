class c_1419_1;
    integer i = -235;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1419_1;
    c_1419_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1100zxxx10001zzz0x1xx0x100x01xzxxxzxzzxzxxzzzxzxzzzzxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
