class c_1254_1;
    integer i = -207;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1254_1;
    c_1254_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1z1x00z1xzx1000xz00zxzx1xxxx0zxxzxzzzxzzzxzzxzxzzzzxzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
