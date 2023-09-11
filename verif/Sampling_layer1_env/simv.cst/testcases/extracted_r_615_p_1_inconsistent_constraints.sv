class c_615_1;
    integer i = -101;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_615_1;
    c_615_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x100z11xzz0z1zxz1z0x01x1zx1x00xxxxzzzzxzzzzzzzzzxzzxzxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
