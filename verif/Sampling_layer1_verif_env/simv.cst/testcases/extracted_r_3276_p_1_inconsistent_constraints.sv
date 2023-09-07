class c_3276_1;
    integer i = -544;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3276_1;
    c_3276_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001z1z0x0xz01zz11xz10z0z11zz1z1zxxxzzzxzxxxzxzzzxxzxzzxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
