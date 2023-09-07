class c_1700_1;
    integer i = -282;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1700_1;
    c_1700_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxz0z0z1000x10x1x1z001z0x10zx1xxzxzzzzzzxzzxzzxzxzxzzzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
