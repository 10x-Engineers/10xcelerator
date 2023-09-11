class c_671_1;
    integer i = -110;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_671_1;
    c_671_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzx0z0xzx0x00zx1x1xzx11zxxzz10xzzxxzxxxxxxzzzxxxxxzzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
