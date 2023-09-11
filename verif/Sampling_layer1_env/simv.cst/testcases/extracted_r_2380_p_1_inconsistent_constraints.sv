class c_2380_1;
    integer i = -395;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2380_1;
    c_2380_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010x110010100xz1xz0x0z1zz11x1z1zxzzzxxzzxzxxzxzzxzzzzxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
