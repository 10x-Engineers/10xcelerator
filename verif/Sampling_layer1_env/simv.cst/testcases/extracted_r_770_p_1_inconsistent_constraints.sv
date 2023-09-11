class c_770_1;
    integer i = -127;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_770_1;
    c_770_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz01010xxx011zz1x0x01zzzz0z1xzxxzzzxzzzxxzzzzzzzxzxzxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
